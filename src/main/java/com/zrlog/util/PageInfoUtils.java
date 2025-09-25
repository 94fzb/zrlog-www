package com.zrlog.util;

import com.google.gson.Gson;
import com.hibegin.http.server.api.HttpRequest;
import com.zrlog.vo.PageInfo;

import java.io.InputStreamReader;
import java.util.List;
import java.util.Objects;

public class PageInfoUtils {

    private static final List<PageInfo> pageInfos;

    static {
        pageInfos = List.of(new Gson().fromJson(new InputStreamReader(Objects.requireNonNull(PageInfoUtils.class.getResourceAsStream("/page-info.json"))), PageInfo[].class));
    }

    public static void fillMetaInfo(HttpRequest request) {
        String uri = request.getUri();
        PageInfo pageInfo = pageInfos.stream().filter(info -> uri.matches(info.getUri())).findFirst().orElse(null);
        if (Objects.isNull(pageInfo)) {
            pageInfo = pageInfos.stream().filter(info -> Objects.equals(uri, "/")).findFirst().orElseThrow();
        }
        request.getAttr().put("pageInfo", new Gson().fromJson(new Gson().toJson(pageInfo), PageInfo.class));
    }

    public static PageInfo getPageInfo(HttpRequest request) {
        return (PageInfo) request.getAttr().get("pageInfo");
    }
}
