package com.zrlog.util;

import com.hibegin.common.util.VersionComparator;
import com.hibegin.http.server.util.PathUtil;

import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
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

    public static List<File> getSortedChangeLogFiles() {
        List<File> files = new ArrayList<>(getFileMap().values());
        files.sort(new Comparator<File>() {
            private final VersionComparator versionComparator = new VersionComparator();

            @Override
            public int compare(File o1, File o2) {
                return versionComparator.compare(getVersion(o2), getVersion(o1));
            }
        });
        return files;
    }

    public static String getVersion(File file) {
        String fileName = file.getName();
        return fileName.substring(0, fileName.lastIndexOf("-"));
    }

    public static String getCommitId(File file) {
        String fileName = file.getName();
        return fileName.substring(fileName.lastIndexOf("-") + 1, fileName.lastIndexOf("."));
    }
}
