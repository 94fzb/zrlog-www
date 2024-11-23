<#assign subTitle="安装包下载">
<#include "include/header.ftl"/>
<style>
    .btn-cta {
        padding: 0;
        height: 57px;
        font-size: 18px;
    }

    p {
        margin-bottom: 8px;
    }

    #version-header {
        align-items: center;
        gap: 8px;
    }

    @media (max-width: 600px) {
        #version-header {
            flex-flow: column;
            padding-bottom: 20px;
            align-items: flex-start;
        }
    }
</style>
<div class="container">
    <div class="row">
        <div class="col-md-4" style="padding-bottom: 16px">
            <img class="img-responsive" style="border-radius: 4px;" src="${url}/assets/img/zrlog.jpg"/>
        </div>
        <div class="col-md-8">
            <div id="version-header" style="display: flex;justify-content: space-between">
                <div>
                    <h3 style="margin-bottom: 0;line-height: 40px">ZrLog V${last.version} </h3>

                    <span style="line-height: 40px">
                        发布时间：${last.releaseDate}
                    </span>
                </div>
                <#include "include/download-file-btn.ftl">
            </div>
            <p>
                变更记录：
            </p>
            <#list last.changeLogs as changeLog>
                ${changeLog}
            </#list>
        </div>
        <div class="col-md-12" style="padding-top: 10px">
            <div class="table-responsive">
                <h5 style="color:red">初次部署 ZrLog，或者对 Java 不太熟悉的，可以参考这篇文章进行安装 <a
                            href="https://blog.zrlog.com/run-zrlog-in-docker.html">https://blog.zrlog.com/run-zrlog-in-docker.html</a>
                </h5>
                <div class="card">
                    <h5 class="card-header">
                        历史版本
                        <small style="padding-left: 10px"><a
                                    href="${url}/changelog/index.html?ref=downloadUrl">完整的变更日志</a>
                        </small>
                    </h5>
                    <div class="card-body">
                        <div class="row">
                            <table class="table table-striped table-bordered table-hover table-responsive-xl">
                                <thead>
                                <tr>
                                    <th>版本</th>
                                    <th>大小</th>
                                    <th>变更记录</th>
                                    <th>发布时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <#list downloads as downloadUrl>
                                    <tr>
                                        <td>V${downloadUrl.version}</td>
                                        <td>${downloadUrl.fileSize}</td>
                                        <td>${downloadUrl.desc}</td>
                                        <td data-toggle="${downloadUrl.desc!''}">${downloadUrl.releaseDate}</td>
                                    </tr>
                                </#list>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<#include "include/footer.ftl"/>