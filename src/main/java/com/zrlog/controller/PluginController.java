package com.zrlog.controller;

import com.hibegin.http.server.api.HttpRequest;
import com.hibegin.http.server.api.HttpResponse;
import com.hibegin.http.server.web.Controller;
import com.zrlog.dao.PluginDAO;
import com.zrlog.entry.Plugin;
import com.zrlog.util.ParseTools;

import java.util.Map;

public class PluginController extends Controller {

    public PluginController(HttpRequest request, HttpResponse response) {
        super(request, response);
        request.getAttr().put("url", ParseTools.getScheme(request) + "://" + request.getHeader("Host"));
        if (getRequest().getParaToStr("from") != null) {
            getRequest().getSession().setAttr("from", getRequest().getParaToStr("from"));
        }
        if (request.getSession().getAttr("from") != null) {
            request.getAttr().put("download", "安装");
        } else {
            request.getAttr().put("download", "下载");
        }
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
                if (getRequest().getSession().getAttr("from") != null) {
                    plugin.setDownloadUrl(request.getSession().getAttr("from") + "/download?id="
                            + id + "&host=" + request.getAttr().get("url") + "&pluginName=" + plugin.getFileName());
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
