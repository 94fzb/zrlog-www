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
            <div class="card" style="width: 100%">
                <div class="card-header" style="display: flex;justify-content: space-between;align-items: center;">
                    <h3 style="margin-bottom: 0;line-height: 40px">ZrLog v${last.version} </h3>
                </div>
                <div class="card-body" style="display: flex;flex-flow: wrap;gap:24px">
                    <div style="padding-left: 12px">
                        <img class="img-responsive"
                             style="border-radius: 4px;object-fit: cover;max-width: 320px;max-height: 240px"
                             src="${url}/assets/img/zrlog.jpg?v=1"/>
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

                    <div>
                        <h4 style="font-size: 26px;padding-left: 4px;font-weight: 500">下载</h4>
                        <#include "include/download-file-btn.ftl">
                    </div>
                </div>
            </div>
        </div>
        <div style="padding-top: 10px">
            <div class="table-responsive">
                <h5 style="color:red;padding-top: 8px;padding-bottom: 8px;font-size: 18px">初次部署 ZrLog，或者对 Java
                    不太熟悉的，可以参考这篇文章进行安装 <a
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
                        <div style="border-radius: 4px;overflow: auto;border:1px solid #e5e7eb;padding-left: 10px">
                            <table class="auto-table"
                                   style="width:100%;min-width: 580px">
                                <thead>
                                <tr>
                                    <th style="height: 56px;text-align: start">版本</th>
                                    <th style="height: 56px;text-align: start">大小</th>
                                    <th style="height: 56px;text-align: start">变更记录</th>
                                    <th style="height: 56px;text-align: start">发布时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <#list downloads as downloadUrl>
                                    <tr style="height: 36px">
                                        <td>v${downloadUrl.version}</td>
                                        <td>${downloadUrl.fileSize}</td>
                                        <td>${downloadUrl.desc}</td>
                                        <td style="white-space: nowrap">${downloadUrl.releaseDate}</td>
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