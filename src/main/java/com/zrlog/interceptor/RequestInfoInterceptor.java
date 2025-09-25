package com.zrlog.interceptor;

import com.hibegin.http.server.api.HttpRequest;
import com.hibegin.http.server.api.HttpResponse;
import com.hibegin.http.server.api.Interceptor;
import com.zrlog.util.PageInfoUtils;

public class RequestInfoInterceptor implements Interceptor {
    @Override
    public boolean doInterceptor(HttpRequest request, HttpResponse response) throws Exception {
        PageInfoUtils.fillMetaInfo(request);
        return true;
    }
}
