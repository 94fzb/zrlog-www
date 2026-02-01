package com.zrlog;

import com.hibegin.http.server.SimpleWebServer;
import com.hibegin.http.server.util.PathUtil;
import com.zrlog.dao.PluginDAO;
import com.zrlog.dao.TemplateDAO;
import com.zrlog.mock.GeneratorHtml;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class GeneratorStaticHtmlApplication {

    public static void main(String[] args) {
        SimpleWebServer server = Application.server(0);
        new GeneratorHtml("/changelog", PathUtil.getStaticPath() + "/changelog/index.html",
                server.getApplicationContext(), Application.zrlogServerConfig).run();
        new GeneratorHtml("/download", PathUtil.getStaticPath() + "/download.html", server.getApplicationContext(),
                Application.zrlogServerConfig).run();
        new GeneratorHtml("/plugin", PathUtil.getStaticPath() + "/plugin/index.html", server.getApplicationContext(),
                Application.zrlogServerConfig).run();
        new PluginDAO().findAll().forEach(e -> {
            new GeneratorHtml("/plugin/" + e.getId() + ".html",
                    PathUtil.getStaticPath() + "/plugin/" + e.getId() + ".html", server.getApplicationContext(),
                    Application.zrlogServerConfig).run();
        });
        new GeneratorHtml("/template", PathUtil.getStaticPath() + "/template/index.html",
                server.getApplicationContext(), Application.zrlogServerConfig).run();
        new TemplateDAO().findAll().forEach(e -> {
            new GeneratorHtml("/template/" + e.getId() + ".html",
                    PathUtil.getStaticPath() + "/template/" + e.getId() + ".html", server.getApplicationContext(),
                    Application.zrlogServerConfig).run();
        });
        new GeneratorHtml("/code", PathUtil.getStaticPath() + "/code.html", server.getApplicationContext(),
                Application.zrlogServerConfig).run();
        new GeneratorHtml("/", PathUtil.getStaticPath() + "/index.html", server.getApplicationContext(),
                Application.zrlogServerConfig).run();
        File[] changelogFiles = PathUtil.getStaticFile("/changelog/").listFiles();
        if (Objects.nonNull(changelogFiles)) {
            for (File changelogFile : changelogFiles) {
                if (!changelogFile.getName().endsWith(".md")) {
                    continue;
                }
                String fileName = changelogFile.getName().replace(".md", ".html");
                new GeneratorHtml("/changelog/" + fileName, PathUtil.getStaticFile("/changelog/" + fileName).toString(),
                        server.getApplicationContext(), Application.zrlogServerConfig).run();
            }
        }

        // 生成 SEO 相关文件
        generateSitemap(server);
        generateRobotsTxt();

        System.out.println("静态站点生成完成！");
        System.exit(0);
    }

    /**
     * 生成 sitemap.xml 文件
     */
    private static void generateSitemap(SimpleWebServer server) {
        try {
            List<String> urls = new ArrayList<>();
            String baseUrl = "https://www.zrlog.com";

            // 添加主要页面
            urls.add(baseUrl + "/");
            urls.add(baseUrl + "/download");
            urls.add(baseUrl + "/plugin");
            urls.add(baseUrl + "/template");
            urls.add(baseUrl + "/code");
            urls.add(baseUrl + "/changelog");

            // 添加所有插件详情页
            new PluginDAO().findAll().forEach(plugin -> {
                urls.add(baseUrl + "/plugin/" + plugin.getId() + ".html");
            });

            // 添加所有主题详情页
            new TemplateDAO().findAll().forEach(template -> {
                urls.add(baseUrl + "/template/" + template.getId() + ".html");
            });

            // 生成 XML 内容
            StringBuilder xml = new StringBuilder();
            xml.append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
            xml.append("<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n");

            for (String url : urls) {
                xml.append("  <url>\n");
                xml.append("    <loc>").append(url).append("</loc>\n");
                xml.append("    <changefreq>weekly</changefreq>\n");
                xml.append("    <priority>0.8</priority>\n");
                xml.append("  </url>\n");
            }

            xml.append("</urlset>");

            // 写入文件
            String sitemapPath = PathUtil.getStaticPath() + "/sitemap.xml";
            Files.write(Paths.get(sitemapPath), xml.toString().getBytes("UTF-8"));
            System.out.println("✓ 已生成 sitemap.xml，包含 " + urls.size() + " 个URL");

        } catch (IOException e) {
            System.err.println("生成 sitemap.xml 失败: " + e.getMessage());
        }
    }

    /**
     * 生成 robots.txt 文件
     */
    private static void generateRobotsTxt() {
        try {
            String robotsTxt = "User-agent: *\n" +
                    "Allow: /\n" +
                    "\n" +
                    "# Sitemap\n" +
                    "Sitemap: https://www.zrlog.com/sitemap.xml\n";

            String robotsPath = PathUtil.getStaticPath() + "/robots.txt";
            Files.write(Paths.get(robotsPath), robotsTxt.getBytes("UTF-8"));
            System.out.println("✓ 已生成 robots.txt");

        } catch (IOException e) {
            System.err.println("生成 robots.txt 失败: " + e.getMessage());
        }
    }

}
