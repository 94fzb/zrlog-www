package com.zrlog;

import com.hibegin.http.server.SimpleWebServer;
import com.hibegin.http.server.util.PathUtil;
import com.zrlog.dao.PluginDAO;
import com.zrlog.dao.TemplateDAO;
import com.zrlog.mock.GeneratorHtml;

import java.io.File;
import java.util.Objects;

public class GeneratorStaticHtmlApplication {

    public static void main(String[] args) {
        SimpleWebServer server = Application.server(0);
        new GeneratorHtml("/changelog", PathUtil.getStaticPath() + "/changelog/index.html", server.getApplicationContext(), Application.zrlogServerConfig).run();
        new GeneratorHtml("/download", PathUtil.getStaticPath() + "/download.html", server.getApplicationContext(), Application.zrlogServerConfig).run();
        new GeneratorHtml("/plugin/", PathUtil.getStaticPath() + "/plugin/index.html", server.getApplicationContext(), Application.zrlogServerConfig).run();
        new PluginDAO().findAll().forEach(e -> {
            new GeneratorHtml("/plugin/" + e.getId() + ".html", PathUtil.getStaticPath() + "/plugin/" + e.getId() + ".html", server.getApplicationContext(), Application.zrlogServerConfig).run();
        });
        new GeneratorHtml("/template/", PathUtil.getStaticPath() + "/template/index.html", server.getApplicationContext(), Application.zrlogServerConfig).run();
        new TemplateDAO().findAll().forEach(e -> {
            new GeneratorHtml("/template/" + e.getId() + ".html", PathUtil.getStaticPath() + "/template/" + e.getId() + ".html", server.getApplicationContext(), Application.zrlogServerConfig).run();
        });
        new GeneratorHtml("/code", PathUtil.getStaticPath() + "/code.html", server.getApplicationContext(), Application.zrlogServerConfig).run();
        new GeneratorHtml("/", PathUtil.getStaticPath() + "/index.html", server.getApplicationContext(), Application.zrlogServerConfig).run();
        File[] changelogFiles = PathUtil.getStaticFile("/changelog/").listFiles();
        if (Objects.nonNull(changelogFiles)) {
            for (File changelogFile : changelogFiles) {
                if (!changelogFile.getName().endsWith(".md")) {
                    continue;
                }
                String fileName = changelogFile.getName().replace(".md", ".html");
                new GeneratorHtml("/changelog/" + fileName, PathUtil.getStaticFile("/changelog/" + fileName).toString(), server.getApplicationContext(), Application.zrlogServerConfig).run();
            }
        }
        System.exit(0);
    }

}
