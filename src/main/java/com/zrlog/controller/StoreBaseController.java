package com.zrlog.controller;

import com.hibegin.common.util.StringUtils;
import com.hibegin.http.server.api.HttpRequest;
import com.hibegin.http.server.api.HttpResponse;
import com.hibegin.http.server.web.Controller;
import com.zrlog.util.ParseTools;

public class StoreBaseController extends Controller {

    public static String getFromByRequest(HttpRequest request) {
        return request.getParaToStr("from");
    }

    public StoreBaseController(HttpRequest request, HttpResponse response) {
        super(request, response);
        request.getAttr().put("url", ParseTools.getScheme(request) + "://" + request.getHeader("Host"));
        String fromByRequest = TemplateController.getFromByRequest(request);
        if (StringUtils.isNotEmpty(fromByRequest)) {
            request.getAttr().put("download", "安装");
            request.getAttr().put("from", fromByRequest);
        } else {
            request.getAttr().put("download", "下载");
        }
    }
}
