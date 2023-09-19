package com.zrlog;

import com.hibegin.common.util.IOUtil;
import com.hibegin.http.server.util.FreeMarkerUtil;
import com.hibegin.http.server.util.PathUtil;
import com.zrlog.controller.IndexController;
import com.zrlog.dao.DonationDAO;
import com.zrlog.interceptor.ChangeLogInterceptor;
import com.zrlog.mock.MockHttpRequest;

import java.io.File;

public class GeneratorStaticHtmlApplication {

    public static void main(String[] args) throws Exception {
        FreeMarkerUtil.initClassTemplate("/template");
        PathUtil.setRootPath(System.getProperty("user.dir"));
        indexHtml();
        downloadHtml();
        sourceCodeHtml();
        changeLogHtml();
    }

    private static void indexHtml() throws Exception {
        MockHttpRequest indexMock = new MockHttpRequest("/");
        indexMock.getAttr().put("url", "https://www.zrlog.com");
        IndexController.fillVersionInfo("index", indexMock);
        IOUtil.writeStrToFile(FreeMarkerUtil.renderToFM("index", indexMock), new File(PathUtil.getStaticPath() + "/index.html"));
    }

    private static void downloadHtml() throws Exception {
        MockHttpRequest indexMock = new MockHttpRequest("/download");
        indexMock.getAttr().put("url", "https://www.zrlog.com");
        IndexController.fillVersionInfo("download", indexMock);
        IOUtil.writeStrToFile(FreeMarkerUtil.renderToFM("download", indexMock), new File(PathUtil.getStaticPath() + "/download.html"));
    }

    private static void sourceCodeHtml() throws Exception {
        MockHttpRequest indexMock = new MockHttpRequest("/code");
        indexMock.getAttr().put("url", "https://www.zrlog.com");
        indexMock.getAttr().put("donations", new DonationDAO().findAll());
        IOUtil.writeStrToFile(FreeMarkerUtil.renderToFM("source-code", indexMock), new File(PathUtil.getStaticPath() + "/code.html"));
    }

    private static void changeLogHtml() throws Exception {
        MockHttpRequest indexMock = new MockHttpRequest("/changelog");
        indexMock.getAttr().put("url", "https://www.zrlog.com");
        IndexController.fillVersionInfo("index", indexMock);
        indexMock.getAttr().put("htmlStr", ChangeLogInterceptor.renderMd(ChangeLogInterceptor.getMdStr(indexMock)));

        IOUtil.writeStrToFile(FreeMarkerUtil.renderToFM("changelog", indexMock), new File(PathUtil.getStaticPath() + "/changelog/index.html"));
    }
}
