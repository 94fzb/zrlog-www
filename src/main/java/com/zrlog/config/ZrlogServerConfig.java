package com.zrlog.config;

import com.hibegin.http.server.config.AbstractServerConfig;
import com.hibegin.http.server.config.RequestConfig;
import com.hibegin.http.server.config.ResponseConfig;
import com.hibegin.http.server.config.ServerConfig;
import com.hibegin.http.server.util.FreeMarkerUtil;
import com.hibegin.http.server.web.MethodInterceptor;
import com.zrlog.controller.*;
import com.zrlog.interceptor.ChangeLogInterceptor;

import java.util.Objects;

public class ZrlogServerConfig extends AbstractServerConfig {

    private int port;

    public ZrlogServerConfig(int port){
        this.port = port;
    }

    @Override
    public ServerConfig getServerConfig() {
        ServerConfig serverConfig = new ServerConfig();
        serverConfig.addInterceptor(ChangeLogInterceptor.class);
        serverConfig.addInterceptor(MethodInterceptor.class);
        serverConfig.getRouter().addMapper("", IndexController.class);
        serverConfig.getRouter().addMapper("/template", TemplateController.class);
        serverConfig.getRouter().addMapper("/plugin", PluginController.class);
        serverConfig.getRouter().addMapper("/doc", DocController.class);
        serverConfig.getRouter().addMapper("/html", PageController.class);
        serverConfig.setDisableSession(true);
        serverConfig.setPort(port);
        try {
            FreeMarkerUtil.initClassTemplate("/template");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return serverConfig;
    }

    @Override
    public RequestConfig getRequestConfig() {
        return null;
    }

    @Override
    public ResponseConfig getResponseConfig() {
        return null;
    }
}
