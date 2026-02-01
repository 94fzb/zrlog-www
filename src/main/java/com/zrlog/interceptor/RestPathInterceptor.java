package com.zrlog.interceptor;

import com.hibegin.common.util.IOUtil;
import com.hibegin.common.util.VersionComparator;
import com.hibegin.http.server.api.HttpRequest;
import com.hibegin.http.server.api.HttpResponse;
import com.hibegin.http.server.api.Interceptor;
import com.hibegin.http.server.util.PathUtil;
import com.zrlog.controller.PluginController;
import com.zrlog.controller.TemplateController;
import com.zrlog.util.ParseTools;
import com.zrlog.util.VersionUtils;
import org.commonmark.node.Node;
import org.commonmark.parser.Parser;
import org.commonmark.renderer.html.HtmlRenderer;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.StringJoiner;

public class RestPathInterceptor implements Interceptor {

    @Override
    public boolean doInterceptor(HttpRequest httpRequest, HttpResponse httpResponse) throws FileNotFoundException {
        String uri = httpRequest.getUri();
        if (uri.equalsIgnoreCase("/changelog/index.html") || uri.equalsIgnoreCase("/changelog/") || uri.equalsIgnoreCase("/changelog")) {
            httpRequest.getAttr().put("url", ParseTools.getScheme(httpRequest) + "://" + httpRequest.getHeader("Host"));
            httpRequest.getAttr().put("htmlStr", renderMd(getFullChangeLogMdStr()));
            httpResponse.renderFreeMarker("/changelog");
            return false;
        } else {
            if (uri.startsWith("/changelog") && uri.endsWith(".html")) {
                File mdFile = new File(PathUtil.getStaticPath() + httpRequest.getUri().replace(".html", ".md"));
                if (mdFile.getName().contains("-")) {
                    String buildId = mdFile.getName().substring(mdFile.getName().lastIndexOf("-") + 1, mdFile.getName().lastIndexOf("."));
                    if (mdFile.exists()) {
                        httpResponse.renderHtmlStr(renderMd(IOUtil.getStringInputStream(new FileInputStream(mdFile))));
                        return false;
                    } else {
                        //低于1.9版本没有这个参数
                        if (httpRequest.getParaToStr("v") == null) {
                            return false;
                        } else {
                            String commitCompareLink = "https://github.com/94fzb/zrlog/compare/" + httpRequest.getParaToStr("v") + "..." + buildId;
                            String htmlStr = "<h5> " + getLang(httpRequest.getParaToStr("lang")) + " <a target='_blank' href='" + commitCompareLink + "'>" + commitCompareLink + "</a></h5>";
                            httpResponse.renderHtmlStr(htmlStr);
                            return false;
                        }
                    }
                }
            } else if (uri.startsWith("/template/") && uri.endsWith(".html")) {
                new TemplateController(httpRequest, httpResponse).detailById(Integer.parseInt(uri.replaceAll("/template/", "").replaceAll(".html", "")));
                return false;
            } else if (uri.startsWith("/plugin/") && uri.endsWith(".html")) {
                new PluginController(httpRequest, httpResponse).detailById(Integer.parseInt(uri.replaceAll("/plugin/", "").replaceAll(".html", "")));

                return false;
            }
        }
        return true;
    }

    public static String getFullChangeLogMdStr() {
        List<Map.Entry<String, File>> stream = new ArrayList<>(VersionUtils.getFileMap().entrySet());
        stream.sort((o1, o2) -> new VersionComparator().compare(o2.getKey(), o1.getKey()));
        StringJoiner sj = new StringJoiner("\n\n---\n\n");
        stream.forEach(e -> {
            try {
                StringBuilder mdSb = new StringBuilder();
                mdSb.append(IOUtil.getStringInputStream(new FileInputStream(e.getValue()))).append("\n\n");
                String buildId = e.getValue().getName().substring(e.getValue().getName().lastIndexOf("-") + 1, e.getValue().getName().lastIndexOf("."));
                mdSb.append("commit: ").append("[").append(buildId).append("]")
                        .append("(https://github.com/94fzb/zrlog/commit/")
                        .append(buildId).append(")");
                sj.add(mdSb.toString());
            } catch (FileNotFoundException e1) {
                //e1.printStackTrace();
            }
        });
        return sj.toString();
    }

    public static String renderMd(String md) {
        Parser parser = Parser.builder().build();
        Node document = parser.parse(md);
        HtmlRenderer renderer = HtmlRenderer.builder().build();
        return renderer.render(document);
    }

    private String getLang(String locale) {
        if ("en_US".equals(locale)) {
            return "Not found change log,Please see commit:";
        } else {
            return "这可能是一个预览版，暂无变更日志：";
        }
    }
}
