package com.zrlog.entry;

import java.util.List;

public class ReleaseInfo {

    private String fileSize;
    private List<String> changeLogs;
    private String downloadUrl;
    private String linuxDownloadUrl;
    private String linuxDebDownloadUrl;
    private String linuxDebArm64DownloadUrl;
    private String linuxArm64DownloadUrl;
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

    public String getLinuxDebDownloadUrl() {
        return linuxDebDownloadUrl;
    }

    public void setLinuxDebDownloadUrl(String linuxDebDownloadUrl) {
        this.linuxDebDownloadUrl = linuxDebDownloadUrl;
    }

    public String getLinuxDebArm64DownloadUrl() {
        return linuxDebArm64DownloadUrl;
    }

    public void setLinuxDebArm64DownloadUrl(String linuxDebArm64DownloadUrl) {
        this.linuxDebArm64DownloadUrl = linuxDebArm64DownloadUrl;
    }

    public String getLinuxArm64DownloadUrl() {
        return linuxArm64DownloadUrl;
    }

    public void setLinuxArm64DownloadUrl(String linuxArm64DownloadUrl) {
        this.linuxArm64DownloadUrl = linuxArm64DownloadUrl;
    }
}
