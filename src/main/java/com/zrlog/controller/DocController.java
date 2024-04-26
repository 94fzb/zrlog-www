package com.zrlog.controller;

import com.hibegin.http.server.api.HttpRequest;
import com.hibegin.http.server.api.HttpResponse;
import com.hibegin.http.server.web.Controller;
import com.zrlog.util.ParseTools;

public class DocController extends Controller {

    public DocController() {
    }

    public DocController(HttpRequest request, HttpResponse response) {
        super(request, response);
        request.getAttr().put("url", ParseTools.getScheme(request) + "://" + request.getHeader("Host"));
    }

    public void about() {
        getResponse().renderFreeMarker("/about");
    }

    public void index() {
        getResponse().renderFreeMarker("/doc/index");
    }

}
