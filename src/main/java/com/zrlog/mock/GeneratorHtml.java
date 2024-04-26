package com.zrlog.mock;

import com.hibegin.common.util.IOUtil;
import com.hibegin.common.util.LoggerUtil;
import com.hibegin.http.server.ApplicationContext;
import com.hibegin.http.server.api.HttpRequest;
import com.hibegin.http.server.handler.HttpRequestHandlerRunnable;
import com.hibegin.http.server.impl.HttpRequestDecoderImpl;
import com.hibegin.http.server.impl.SimpleHttpResponse;
import com.zrlog.config.ZrlogServerConfig;

import java.io.File;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

public class GeneratorHtml implements Runnable {

    private static final Logger LOGGER = LoggerUtil.getLogger(GeneratorHtml.class);
    private final String uri;
    private final String responseHtmlFileName;
    private final ApplicationContext applicationContext;
    private final ZrlogServerConfig zrlogServerConfig;

    public GeneratorHtml(String uri, String responseHtmlFileName, ApplicationContext applicationContext, ZrlogServerConfig zrlogServerConfig) {
        this.uri = uri;
        this.responseHtmlFileName = responseHtmlFileName;
        this.applicationContext = applicationContext;
        this.zrlogServerConfig = zrlogServerConfig;
    }

    private HttpRequest mockRequest() throws Exception {
        HttpRequestDecoderImpl httpRequestDecoder = new HttpRequestDecoderImpl(zrlogServerConfig.getRequestConfig(), applicationContext, null);
        String httpRequestStr = "GET " + uri + " HTTP/1.1\r\nHost: www.zrlog.com\r\nX-Forwarded-Proto: https\r\n\r\n";
        httpRequestDecoder.doDecode(ByteBuffer.wrap(httpRequestStr.getBytes()));
        return httpRequestDecoder.getRequest();

    }

    @Override
    public void run() {
        try {
            File htmlFile = new File(responseHtmlFileName);
            htmlFile.delete();
            HttpRequest httpRequest = mockRequest();
            new HttpRequestHandlerRunnable(httpRequest, new SimpleHttpResponse(httpRequest, zrlogServerConfig.getResponseConfig()) {

                @Override
                public void renderHtmlStr(String s) {
                    IOUtil.writeStrToFile(s, htmlFile);
                    LOGGER.info("Generator success " + uri + " -> " + htmlFile);
                }

            }).run();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
