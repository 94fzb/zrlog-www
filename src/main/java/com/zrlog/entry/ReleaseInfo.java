package com.zrlog.entry;

import java.util.List;

public class ReleaseInfo {

    private String fileSize;
    private List<String> changeLogs;
    private String downloadUrl;
    private String releaseDate;
    private boolean changeLogIsMd;
    private String desc;
    private String version;

    public String getFileSize() {
        return fileSize;
    }

    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

    public List<String> getChangeLogs() {
        return changeLogs;
    }

    public void setChangeLogs(List<String> changeLogs) {
        this.changeLogs = changeLogs;
    }

    public String getDownloadUrl() {
        return downloadUrl;
    }

    public void setDownloadUrl(String downloadUrl) {
        this.downloadUrl = downloadUrl;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public boolean isChangeLogIsMd() {
        return changeLogIsMd;
    }

    public void setChangeLogIsMd(boolean changeLogIsMd) {
        this.changeLogIsMd = changeLogIsMd;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}
