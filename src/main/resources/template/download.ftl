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
        gap: 8px;
        display: flex;
    }

    .img-responsive {
        max-width: 320px
    }

    #version a {
        color: #2492ff;
    }

    @media (max-width: 600px) {
        #version-header {
            flex-flow: column;
            padding-bottom: 20px;
        }
        .img-responsive {
            max-width: 100%;
        }
    }

</style>
<section class="py-16 bg-gray-50">
    <div class="container mx-auto px-4 md:px-6" id="version">
        <div id="version-header">
            <img class="img-responsive"  style="border-radius: 4px;" src="${url}/assets/img/zrlog.jpg"/>
            <div class="card" style="width: 100%">
                <div class="card-header" style="display: flex;justify-content: space-between;align-items: center;">
                    <h3 style="margin-bottom: 0;line-height: 40px">ZrLog v${last.version} </h3>
                    <#include "include/download-file-btn.ftl">
                </div>
                <div class="card-body">
                        <span style="line-height: 40px">
                        发布时间：${last.releaseDate}
                        </span>

                    <h4 slot="subtitle" style="line-height: 40px">
                        变更记录：
                    </h4>
                    <#list last.changeLogs as changeLog>
                        ${changeLog}
                    </#list>
                    ...
                </div>
            </div>
        </div>
        <div style="padding-top: 10px">
            <div class="table-responsive">
                <h5 style="color:red;padding-top: 8px;padding-bottom: 8px;font-size: 18px">初次部署 ZrLog，或者对 Java 不太熟悉的，可以参考这篇文章进行安装 <a
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
                            <table class="table-auto" style="width:100%">
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
                                        <td>v${downloadUrl.version}</td>
                                        <td>${downloadUrl.fileSize}</td>
                                        <td>${downloadUrl.desc}</td>
                                        <td>${downloadUrl.releaseDate}</td>
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
</section>
<#include "include/footer.ftl"/>