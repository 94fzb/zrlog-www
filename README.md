# zrlog-www

> zrlog主页/插件中心/主题中心源码

## 发布依赖

- except
- markdown （将 markdown 转为 html）

## 上传到七牛 cdn

`sh bin/upload.sh bin/qiniu.properties`

## macOS 上传到腾讯云 cdn

### 安装 coscmd

```
brew install python
pip3 install coscmd
```

### 上传

```
sh bin/upload.sh cos.properties
```