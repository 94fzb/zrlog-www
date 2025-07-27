<section class="py-16 bg-gray-50">
    <div class="container mx-auto px-4 md:px-6" id="version">
        <div id="version-header">
            <div class="card" style="width: 100%">
                <div class="card-header" style="display: flex;justify-content: space-between;align-items: center;">
                    <h3 style="margin-bottom: 0;line-height: 40px">ZrLog v${last.version} </h3>
                </div>
                <h5 style="color:red;padding-top: 8px;padding-bottom: 8px;font-size: 18px;padding-left: 12px">初次部署
                    ZrLog，或者对 Java
                    不太熟悉的，可以参考这篇文章进行安装 <a
                            href="https://blog.zrlog.com/run-zrlog-in-docker.html">https://blog.zrlog.com/run-zrlog-in-docker.html</a>
                </h5>
                <div class="card-body" style="display: flex;flex-flow: wrap;gap:24px">
                    <div style="max-width: 420px">
                        <img class="img-responsive"
                             style="border-radius: 4px;object-fit: cover;max-width: 320px;max-height: 240px"
                             src="${url}/assets/img/zrlog.jpg?v=1" alt=""/>
                        <span style="line-height: 40px">
                        发布时间：${last.releaseDate}
                        </span>

                        <h4 slot="subtitle" style="line-height: 40px">
                            变更记录：
                        </h4>
                        <div style="padding-left: 24px">
                            <#list last.changeLogs as changeLog>
                                ${changeLog}
                            </#list>
                            ...
                        </div>
                    </div>

                    <div>
                        <h4 style="font-size: 26px;padding-left: 4px;font-weight: 500">下载</h4>
                        <#include "download-file-btn.ftl">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>