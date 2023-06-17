package com.zrlog;

import com.hibegin.http.server.WebServerBuilder;
import com.hibegin.http.server.util.PathUtil;
import com.zrlog.config.ZrlogServerConfig;

import java.io.File;
import java.util.Objects;

public class Application {

    public static void main(String[] args) {
        if (PathUtil.getRootPath().endsWith("/target")) {
            PathUtil.setRootPath(new File(PathUtil.getRootPath()).getParent());
        }
        new WebServerBuilder.Builder().config(new ZrlogServerConfig(Integer.parseInt(Objects.requireNonNullElse(System.getenv("ZRLOG_WWW_PORT"),"6090")))).build().startWithThread();
    }
}
