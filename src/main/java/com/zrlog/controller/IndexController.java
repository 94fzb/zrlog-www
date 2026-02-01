package com.zrlog.controller;

import com.google.gson.Gson;
import com.hibegin.common.util.IOUtil;
import com.hibegin.http.server.api.HttpRequest;
import com.hibegin.http.server.api.HttpResponse;
import com.hibegin.http.server.util.PathUtil;
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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

public class IndexController extends Controller {

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

    public static void fillVersionInfo(String ref, HttpRequest request) throws FileNotFoundException {
        File[] files = new File(PathUtil.getRootPath() + "/download").listFiles();
        List<ReleaseInfo> downloadInfoList = new ArrayList<>();
        if (files == null) {
            return;
        }
        for (File file : files) {
            String fileName = file.getName();
            String str = IOUtil.getStringInputStream(new FileInputStream(file));
            ReleaseInfo releaseInfo = new Gson().fromJson(str, ReleaseInfo.class);

            String[] arr = fileName.substring(0, fileName.lastIndexOf(".")).split("-");
            String version = arr[1];
            releaseInfo.setVersion(version);
            Map<String, File> fileMap = VersionUtils.getFileMap();
            releaseInfo.setCommitId(fileMap.keySet().stream().filter(e -> {
                return Objects.equals(e, version);
            }).map(e -> {
                String filename = fileMap.get(e).getName().replace(".md","");
                return filename.substring(version.length()).split("-")[1];
            }).findFirst().orElse("-"));
            String desc = releaseInfo.getDesc();
            if (desc.length() > 60) {
                desc = desc.substring(0, 60) + "...";
                releaseInfo.setDesc(desc);
            }
            downloadInfoList.add(releaseInfo);
            if (releaseInfo.isChangeLogIsMd()) {
                List<String> changeLogs = new ArrayList<>();
                for (String changeLog : releaseInfo.getChangeLogs()) {
                    Parser parser = Parser.builder().build();
                    Node document = parser.parse(changeLog);
                    HtmlRenderer renderer = HtmlRenderer.builder().build();
                    changeLogs.add(renderer.render(document));
                }
                releaseInfo.setChangeLogs(changeLogs);
            }
            //zrlog-3.1.6-6ffdb2b-release.zip
            String baseUrl = "https://dl.zrlog.com/release/zrlog-" + releaseInfo.getVersion() + "-" + releaseInfo.getCommitId() + "-release.zip";
            releaseInfo.setDownloadUrl(baseUrl + "?ref=" + ref);
            releaseInfo.setWarDownloadUrl(baseUrl.replaceAll(".zip", ".war") + "?ref=" + ref);
            releaseInfo.setLinuxDownloadUrl(baseUrl.replaceAll(".zip", "-Linux-amd64.zip") + "?ref=" + ref);
            releaseInfo.setLinuxAmd64FaaSDownloadUrl(baseUrl.replaceAll(".zip", "-Linux-amd64-faas.zip") + "?ref=" + ref);
            releaseInfo.setLinuxArm64FaaSDownloadUrl(baseUrl.replaceAll(".zip", "-Linux-arm64-faas.zip") + "?ref=" + ref);
            releaseInfo.setLinuxDebDownloadUrl(baseUrl.replaceAll(".zip", "-Linux-amd64.deb") + "?ref=" + ref);
            //
            releaseInfo.setLinuxArm64DownloadUrl(baseUrl.replaceAll(".zip", "-Linux-arm64.zip") + "?ref=" + ref);
            releaseInfo.setLinuxDebArm64DownloadUrl(baseUrl.replaceAll(".zip", "-Linux-arm64.deb") + "?ref=" + ref);
            //
            releaseInfo.setWindowsDownloadUrl(baseUrl.replaceAll(".zip", "-Windows-x86_64.zip") + "?ref=" + ref);
            releaseInfo.setMacDownloadUrl(baseUrl.replaceAll(".zip", "-Darwin-x86_64.zip") + "?ref=" + ref);
            releaseInfo.setMacArmDownloadUrl(baseUrl.replaceAll(".zip", "-Darwin-arm64.zip") + "?ref=" + ref);
        }
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        downloadInfoList.sort((ReleaseInfo m1, ReleaseInfo m2) -> {
            try {
                return (sdf.parse(m2.getReleaseDate()).compareTo(sdf.parse(m1.getReleaseDate())));
            } catch (ParseException e) {
                e.printStackTrace();
                return -1;
            }
        });
        request.getAttr().put("last", downloadInfoList.get(0));
        downloadInfoList.remove(0);
        request.getAttr().put("downloads", downloadInfoList.stream().limit(10).collect(Collectors.toList()));
        String url = ParseTools.getScheme(request) + "://" + request.getHeader("Host");
        List<String> image = Arrays.asList("post-detail.png", "article-edit-dark.png",
                "article-edit-light-pwa-full-screen.png", "article-edit-light-pwa-full-screen-setting.png");
        request.getAttr().put("indexImgList", image.stream().map(e -> url + "/assets/screenprint/" + e + "?v=2").collect(Collectors.toList()));

    }
}
