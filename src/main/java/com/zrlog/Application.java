package com.zrlog;

import com.hibegin.http.server.SimpleWebServer;
import com.hibegin.http.server.WebServerBuilder;
import com.hibegin.http.server.util.PathUtil;
import com.zrlog.config.ZrlogServerConfig;

import java.io.File;
import java.util.Objects;

public class Application {

    public static ZrlogServerConfig zrlogServerConfig;

    public static void main(String[] args) {
        server();
    }

    public static SimpleWebServer server() {
        if (PathUtil.getRootPath().endsWith("/target")) {
            PathUtil.setRootPath(new File(PathUtil.getRootPath()).getParent());
        }
        zrlogServerConfig = new ZrlogServerConfig(Integer.parseInt(Objects.requireNonNullElse(System.getenv("ZRLOG_WWW_PORT"),"6090")));
        WebServerBuilder zrlogWwwPort = new WebServerBuilder.Builder().config(zrlogServerConfig).build();
        zrlogWwwPort.startWithThread();
        return zrlogWwwPort.getWebServer();
    }
}
