package com.zrlog.entry;

import java.util.List;

public class ReleaseInfo {

    private String fileSize;
    private List<String> changeLogs;
    private String downloadUrl;
    private String linuxDownloadUrl;
    private String windowsDownloadUrl;
    private String macDownloadUrl;
    private String macArmDownloadUrl;
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

    public String getLinuxDownloadUrl() {
        return linuxDownloadUrl;
    }

    public void setLinuxDownloadUrl(String linuxDownloadUrl) {
        this.linuxDownloadUrl = linuxDownloadUrl;
    }

    public String getWindowsDownloadUrl() {
        return windowsDownloadUrl;
    }

    public void setWindowsDownloadUrl(String windowsDownloadUrl) {
        this.windowsDownloadUrl = windowsDownloadUrl;
    }

    public String getMacDownloadUrl() {
        return macDownloadUrl;
    }

    public void setMacDownloadUrl(String macDownloadUrl) {
        this.macDownloadUrl = macDownloadUrl;
    }

    public String getMacArmDownloadUrl() {
        return macArmDownloadUrl;
    }

    public void setMacArmDownloadUrl(String macArmDownloadUrl) {
        this.macArmDownloadUrl = macArmDownloadUrl;
    }
}
