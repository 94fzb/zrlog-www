package com.zrlog.controller;

import com.hibegin.http.server.api.HttpRequest;
import com.hibegin.http.server.api.HttpResponse;
import com.zrlog.dao.TemplateDAO;
import com.zrlog.entry.Template;

public class TemplateController extends StoreBaseController {

    public TemplateController(HttpRequest request, HttpResponse response) {
        super(request, response);
    }

    public void detail() {
        int id = getRequest().getParaToInt("id");
        if (id > 0) {
            Template template = new TemplateDAO().findById((long) id);
            if (template != null) {
                String from = getFromByRequest(request);
                if (from != null) {
                    template.setDownloadUrl(from + "/download?id=" + id + "&host=" + request.getAttr().get("url") +
                            "&templateName=" + template.getFileName());
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
        getRequest().getAttr().put("templates", new TemplateDAO().findAll());
        getResponse().renderFreeMarker("/template/index");
    }

    public void download() {
        int id = getRequest().getParaToInt("id");
        if (id > 0) {
            Template template = new TemplateDAO().findById((long) id);
            getResponse().redirect(template.getDownloadUrl() + "?_" + System.currentTimeMillis());
        }
    }
}
