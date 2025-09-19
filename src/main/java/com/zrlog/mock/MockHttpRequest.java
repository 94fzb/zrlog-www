package com.zrlog.mock;

import com.hibegin.common.io.handler.ReadWriteSelectorHandler;
import com.hibegin.http.HttpMethod;
import com.hibegin.http.HttpVersion;
import com.hibegin.http.server.ApplicationContext;
import com.hibegin.http.server.api.HttpRequest;
import com.hibegin.http.server.config.RequestConfig;
import com.hibegin.http.server.config.ServerConfig;
import com.hibegin.http.server.web.cookie.Cookie;
import com.hibegin.http.server.web.session.HttpSession;

import java.io.File;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

public class MockHttpRequest implements HttpRequest {

    private String uri;
    private Map<String, Object> attr = new HashMap<>();

    public MockHttpRequest(String uri) {
        this.uri = uri;
    }

    @Override
    public Map<String, String[]> getParamMap() {
        return null;
    }

    @Override
    public Map<String, String[]> decodeParamMap() {
        return null;
    }

    @Override
    public String getHeader(String key) {
        return null;
    }

    @Override
    public String getRemoteHost() {
        return null;
    }

    @Override
    public String getUri() {
        return uri;
    }

    @Override
    public String getUrl() {
        return null;
    }

    @Override
    public String getFullUrl() {
        return null;
    }

    @Override
    public String getRealPath() {
        return null;
    }

    @Override
    public String getQueryStr() {
        return null;
    }

    @Override
    public HttpMethod getMethod() {
        return null;
    }

    @Override
    public Cookie[] getCookies() {
        return new Cookie[0];
    }

    @Override
    public HttpSession getSession() {
        return new HttpSession("");
    }

    @Override
    public Boolean getParaToBool(String key) {
        return false;
    }

    @Override
    public String getParaToStr(String key) {
        return null;
    }

    @Override
    public Integer getParaToInt(String key) {
        return 0;
    }

    @Override
    public File getFile(String key) {
        return null;
    }

    @Override
    public Map<String, Object> getAttr() {
        return attr;
    }

    @Override
    public String getScheme() {
        return null;
    }

    @Override
    public Map<String, String> getHeaderMap() {
        return null;
    }

    @Override
    public InputStream getInputStream() {
        return null;
    }

    @Override
    public RequestConfig getRequestConfig() {
        return null;
    }

    @Override
    public ReadWriteSelectorHandler getHandler() {
        return null;
    }

    @Override
    public long getCreateTime() {
        return 0;
    }

    @Override
    public ByteBuffer getInputByteBuffer() {
        return null;
    }

    @Override
    public ByteBuffer getRequestBodyByteBuffer() {
        return null;
    }

    @Override
    public ByteBuffer getRequestBodyByteBuffer(int offset) {
        return null;
    }

    @Override
    public ServerConfig getServerConfig() {
        return null;
    }

    @Override
    public ApplicationContext getApplicationContext() {
        return null;
    }

    @Override
    public HttpVersion getHttpVersion() {
        return null;
    }
}
