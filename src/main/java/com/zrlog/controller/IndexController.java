package com.zrlog.controller;

import com.hibegin.common.util.IOUtil;
import com.hibegin.http.server.api.HttpRequest;
import com.hibegin.http.server.api.HttpResponse;
import com.hibegin.http.server.web.Controller;
import com.zrlog.dao.DonationDAO;
import com.zrlog.entry.ReleaseInfo;
import com.zrlog.util.ParseTools;
import com.zrlog.util.VersionUtils;
import org.commonmark.node.Node;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class IndexController extends Controller {

    private static final Pattern CHANGELOG_TITLE_PATTERN = Pattern.compile("^###\\s+([0-9.]+)\\s+\\((\\d{4}-\\d{2}-\\d{2})\\)$", Pattern.MULTILINE);
    private static final Pattern FIRST_LIST_ITEM_PATTERN = Pattern.compile("^-\\s+(.+)$", Pattern.MULTILINE);
    private static final Parser MARKDOWN_PARSER = Parser.builder().build();
    private static final HtmlRenderer HTML_RENDERER = HtmlRenderer.builder().build();

    public IndexController() {
    }

    public IndexController(HttpRequest request, HttpResponse response) {
        super(request, response);
        getRequest().getCookies();
        request.getAttr().put("url", ParseTools.getScheme(request) + "://" + request.getHeader("Host"));
    }

    public void about() {
        getResponse().renderFreeMarker("/about");
    }

    public void index() throws FileNotFoundException {
        fillVersionInfo("index", request);
        getResponse().renderFreeMarker("/index");
    }

    public void code() {
        getRequest().getAttr().put("donations", new DonationDAO().findAll());
        getResponse().renderFreeMarker("/code");
    }

    public void download() throws FileNotFoundException {
        fillVersionInfo("download", getRequest());
        getResponse().renderFreeMarker("/download");
    }

    public void downloading() throws FileNotFoundException {
        String platformId = getRequest().getParaToStr("platformId");
        if (platformId == null) {
            platformId = "zip";
        }
        downloading(platformId);
    }

    public void downloading(String platformId) throws FileNotFoundException {
        List<File> files = VersionUtils.getSortedChangeLogFiles();
        if (files.isEmpty()) {
            return;
        }
        ReleaseInfo releaseInfo = buildReleaseInfo("download", files.get(0));

        String url = "";
        String platform = "";
        switch (platformId) {
            case "linux-amd64-faas": url = releaseInfo.getLinuxAmd64FaaSDownloadUrl(); platform = "Linux AMD64 FaaS"; break;
            case "linux-arm64-faas": url = releaseInfo.getLinuxArm64FaaSDownloadUrl(); platform = "Linux ARM64 FaaS"; break;
            case "linux-amd64": url = releaseInfo.getLinuxDownloadUrl(); platform = "Linux AMD64"; break;
            case "linux-arm64": url = releaseInfo.getLinuxArm64DownloadUrl(); platform = "Linux ARM64"; break;
            case "debian-amd64": url = releaseInfo.getLinuxDebDownloadUrl(); platform = "Debian/Ubuntu AMD64"; break;
            case "debian-arm64": url = releaseInfo.getLinuxDebArm64DownloadUrl(); platform = "Debian/Ubuntu ARM64"; break;
            case "windows-x86_64": url = releaseInfo.getWindowsDownloadUrl(); platform = "Windows x86_64"; break;
            case "macos-intel": url = releaseInfo.getMacDownloadUrl(); platform = "macOS Intel"; break;
            case "macos-arm": url = releaseInfo.getMacArmDownloadUrl(); platform = "macOS Apple Silicon"; break;
            case "zip": url = releaseInfo.getDownloadUrl(); platform = "平台通用 ZIP"; break;
            case "war": url = releaseInfo.getWarDownloadUrl(); platform = "平台通用 WAR"; break;
            default: url = releaseInfo.getDownloadUrl(); platform = "平台通用 ZIP"; break;
        }

        getRequest().getAttr().put("downloadUrl", url);
        getRequest().getAttr().put("platform", platform);
        // Log the download for statistics
        System.out.println("User downloaded " + platform + ", url: " + url);
        getResponse().renderFreeMarker("/downloading");
    }

    public static void fillVersionInfo(String ref, HttpRequest request) throws FileNotFoundException {
        List<File> files = VersionUtils.getSortedChangeLogFiles();
        if (files.isEmpty()) {
            return;
        }

        List<ReleaseInfo> downloadInfoList = new ArrayList<>();
        for (File file : files) {
            downloadInfoList.add(buildReleaseInfo(ref, file));
        }

        request.getAttr().put("last", downloadInfoList.get(0));
        request.getAttr().put("downloads", downloadInfoList.stream().skip(1).limit(2).collect(Collectors.toList()));

        String url = ParseTools.getScheme(request) + "://" + request.getHeader("Host");
        List<String> image = Arrays.asList("post-detail.png", "article-edit-light.png", "article-edit-dark.png",
                "article-edit-light-pwa-full-screen.png", "article-edit-light-pwa-full-screen-setting.png");
        request.getAttr().put("indexImgList", image.stream().map(e -> url + "/assets/screenprint/" + e + "?v=2").collect(Collectors.toList()));
    }

    private static ReleaseInfo buildReleaseInfo(String ref, File file) throws FileNotFoundException {
        String md = IOUtil.getStringInputStream(new FileInputStream(file));
        ReleaseInfo releaseInfo = new ReleaseInfo();
        releaseInfo.setVersion(VersionUtils.getVersion(file));
        releaseInfo.setCommitId(VersionUtils.getCommitId(file));
        releaseInfo.setReleaseDate(parseReleaseDate(md, releaseInfo.getVersion()));
        releaseInfo.setDesc(parseDesc(md));
        releaseInfo.setChangeLogs(Collections.singletonList(renderMd(stripTitle(md))));
        releaseInfo.setChangeLogIsMd(false);
        fillDownloadUrls(ref, releaseInfo);
        return releaseInfo;
    }

    private static String parseReleaseDate(String md, String version) {
        Matcher matcher = CHANGELOG_TITLE_PATTERN.matcher(md);
        while (matcher.find()) {
            if (Objects.equals(matcher.group(1), version)) {
                return matcher.group(2);
            }
        }
        return "-";
    }

    private static String parseDesc(String md) {
        Matcher matcher = FIRST_LIST_ITEM_PATTERN.matcher(md);
        if (!matcher.find()) {
            return "查看该版本变更日志";
        }

        return matcher.group(1).trim();
    }

    private static String stripTitle(String md) {
        return CHANGELOG_TITLE_PATTERN.matcher(md).replaceFirst("").replaceFirst("^\\s+", "");
    }

    private static String renderMd(String md) {
        Node document = MARKDOWN_PARSER.parse(md);
        return HTML_RENDERER.render(document);
    }

    private static void fillDownloadUrls(String ref, ReleaseInfo releaseInfo) {
        String baseUrl = "https://dl.zrlog.com/release/zrlog-" + releaseInfo.getVersion() + "-" + releaseInfo.getCommitId() + "-release.zip";
        releaseInfo.setDownloadUrl(baseUrl + "?ref=" + ref);
        releaseInfo.setWarDownloadUrl(baseUrl.replace(".zip", ".war") + "?ref=" + ref);
        releaseInfo.setLinuxDownloadUrl(baseUrl.replace(".zip", "-Linux-amd64.zip") + "?ref=" + ref);
        releaseInfo.setLinuxAmd64FaaSDownloadUrl(baseUrl.replace(".zip", "-Linux-amd64-faas.zip") + "?ref=" + ref);
        releaseInfo.setLinuxArm64FaaSDownloadUrl(baseUrl.replace(".zip", "-Linux-arm64-faas.zip") + "?ref=" + ref);
        releaseInfo.setLinuxDebDownloadUrl(baseUrl.replace(".zip", "-Linux-amd64.deb") + "?ref=" + ref);
        releaseInfo.setLinuxArm64DownloadUrl(baseUrl.replace(".zip", "-Linux-arm64.zip") + "?ref=" + ref);
        releaseInfo.setLinuxDebArm64DownloadUrl(baseUrl.replace(".zip", "-Linux-arm64.deb") + "?ref=" + ref);
        releaseInfo.setWindowsDownloadUrl(baseUrl.replace(".zip", "-Windows-x86_64.zip") + "?ref=" + ref);
        releaseInfo.setMacDownloadUrl(baseUrl.replace(".zip", "-Darwin-x86_64.zip") + "?ref=" + ref);
        releaseInfo.setMacArmDownloadUrl(baseUrl.replace(".zip", "-Darwin-arm64.zip") + "?ref=" + ref);
    }
}
