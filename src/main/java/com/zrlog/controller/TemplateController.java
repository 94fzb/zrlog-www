package com.zrlog.controller;

import com.hibegin.http.server.api.HttpRequest;
import com.hibegin.http.server.api.HttpResponse;
import com.hibegin.http.server.web.Controller;
import com.zrlog.dao.TemplateDAO;
import com.zrlog.entry.Template;
import com.zrlog.util.ParseTools;

import java.util.Map;

public class TemplateController extends Controller {

    private String version;

    public TemplateController(HttpRequest request, HttpResponse response) {
        super(request, response);
        request.getAttr().put("url", ParseTools.getScheme(request) + "://" + request.getHeader("Host"));
        if (getRequest().getParaToStr("from") != null) {
            getRequest().getSession().setAttr("from", getRequest().getParaToStr("from"));
            if (request.getParaToStr("v") != null && !"".equals(request.getParaToStr("v"))) {
                this.version = request.getParaToStr("v");
            } else {
                this.version = "";
            }
        }
        if (request.getSession().getAttr("from") != null) {
            request.getAttr().put("download", "安装");
        } else {
            request.getAttr().put("download", "下载");
        }
    }

    public void detail() {
        int id = getRequest().getParaToInt("id");
        if (id > 0) {
            Template template = new TemplateDAO().findById((long) id);
            if (template != null) {
                if (getRequest().getSession().getAttr("from") != null) {
                    template.setDownloadUrl(request.getSession().getAttr("from") + "/download?id="
                            + id + "&host=" + request.getAttr().get("url") + "&templateName=" + template.getFileName());
                }
                template.setSourceUrl("https://gitee.com/94fzb/zrlog-templates/tree/master/" + template.getFileName().replace(".zip", ""));
                getRequest().getAttr().put("template", template);
                getResponse().renderFreeMarker("/template/detail");
            } else {
                getResponse().renderCode(404);
            }
        } else {
            getResponse().renderCode(404);
        }
    }

    public void index() {
        if ("".equals(version)) {
            getResponse().renderFreeMarker("/template/update-version");
        } else {
            getRequest().getAttr().put("templates", new TemplateDAO().findAll());
            getResponse().renderFreeMarker("/template/index");
        }
    }

    public void download() {
        int id = getRequest().getParaToInt("id");
        if (id > 0) {
            Template template = new TemplateDAO().findById((long)id);
            getResponse().redirect(template.getDownloadUrl() + "?_" + System.currentTimeMillis());
        }
    }
}
