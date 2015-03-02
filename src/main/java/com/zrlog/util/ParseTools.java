package com.zrlog.util;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.hibegin.http.server.api.HttpRequest;

import java.lang.reflect.Type;
import java.util.List;

public class ParseTools {

    public static String getScheme(HttpRequest httpRequest) {
        String scheme = httpRequest.getHeaderMap().get("X-Forwarded-Protocol");
        if (scheme != null) {
            return scheme;
        }
        return httpRequest.getScheme();
    }

    public static <T> List<T> parseJsonList(String jsonArray, Class<T> clazz) {
        Type typeOfT = TypeToken.getParameterized(List.class, clazz).getType();
        return new Gson().fromJson(jsonArray, typeOfT);
    }
}
