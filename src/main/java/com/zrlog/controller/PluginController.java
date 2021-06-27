package com.zrlog.controller;

import com.hibegin.http.server.api.HttpRequest;
import com.hibegin.http.server.api.HttpResponse;
import com.zrlog.dao.PluginDAO;
import com.zrlog.entry.Plugin;

public class PluginController extends StoreBaseController {

    public PluginController(HttpRequest request, HttpResponse response) {
        super(request, response);
    }

    public void index() {
        getRequest().getAttr().put("plugins", new PluginDAO().findAll());
        getResponse().renderFreeMarker("/plugin/index");
    }

    public void detail() {
        int id = getRequest().getParaToInt("id");
        if (id > 0) {
            Plugin plugin = new PluginDAO().findById((long) id);
            if (plugin != null) {
                String from = TemplateController.getFromByRequest(request);
                if (from != null) {
                    plugin.setDownloadUrl(from + "/download?id=" + id + "&host=" + request.getAttr().get("url") +
                            "&pluginName=" + plugin.getFileName());
                }
                getRequest().getAttr().put("plugin", plugin);
                getResponse().renderFreeMarker("/plugin/detail");
            } else {
                getResponse().renderCode(404);
            }
        } else {
            getResponse().renderCode(404);
        }
    }

    public void download() {
        int id = getRequest().getParaToInt("id");
        if (id > 0) {
            Plugin plugin = new PluginDAO().findById((long) id);
            getResponse().redirect(plugin.getDownloadUrl() + "?_" + System.currentTimeMillis());
        }
    }
}
