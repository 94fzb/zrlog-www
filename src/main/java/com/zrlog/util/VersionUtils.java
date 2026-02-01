package com.zrlog.util;

import com.hibegin.http.server.util.PathUtil;

import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;

public class VersionUtils {

    public static Map<String, File> getFileMap() {
        String basePath = PathUtil.getStaticFile("changelog").toString();

        Map<String, File> fileMap = new LinkedHashMap<>();
        File[] changelogFiles = new File(basePath).listFiles();
        if (changelogFiles != null) {
            for (File file : changelogFiles) {
                if (!file.getName().contains("SNAPSHOT") && file.getName().endsWith(".md")) {
                    fileMap.put(file.getName().substring(0, file.getName().indexOf("-")), file);
                }
            }
        }
        return fileMap;
    }
}
