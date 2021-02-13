# zrlog-www

## 发布依赖

- except
- markdown （将 markdown 转为 html）

### 上传到 ZrLog 腾讯云 cdn

```
sh bin/upload.sh bin/qiniu.properties
```

### macOS 上传到腾讯云 cdn

```
brew install python
pip3 install coscmd
sh bin/upload.sh bin/cos.properties
```