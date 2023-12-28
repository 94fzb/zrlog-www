<#assign subTitle="安装包下载">
<#include "include/header.ftl"/>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <img class="img-responsive" style="border-radius: 4px;" src="${url}/assets/img/zrlog.jpg"/>
        </div>
        <div class="col-md-8" style="padding-top: 8px">
            <h3>ZrLog V${last.version} </h3>

            <p class="">
                发布时间 ： ${last.releaseDate}
            </p>

            <p class="">
                变更记录：
            </p>
            <ul>
            <#list last.changeLogs as changeLog>
                <li>${changeLog}</li>
            </#list>
                <li>...</li>
            </ul>


            <a href="${last.downloadUrl}">
                <button class="btn btn-primary btn-lg"><i class="fa fa-downloadUrl"></i>下载（${last.fileSize}）
                </button>
            </a>

        </div>
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
        <div class="col-md-12" style="padding-top: 40px">
            <div class="table-responsive">
                <h5 style="color:red">初次部署 ZrLog，或者对 JavaWeb 不太熟悉的，可以参考这篇文章进行安装 <a
                        href="https://blog.zrlog.com/how-to-install-zrlog">https://blog.zrlog.com/how-to-install-zrlog</a>
                </h5>
                <div class="card">
                    <h5 class="card-header">
                        历史版本
                        <small style="padding-left: 10px"><a href="${url}/changelog/index.html?ref=downloadUrl">完整的变更日志</a>
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
                                    <!--<th>下载</th>-->
                                </tr>
                                </thead>

                                <tbody>
                    <#list downloads as downloadUrl>
                    <tr>
                        <td>V${downloadUrl.version}</td>
                        <td>${downloadUrl.fileSize}</td>
                        <td>${downloadUrl.desc}</td>
                        <td data-toggle="${downloadUrl.desc!''}">${downloadUrl.releaseDate}</td>
                        <!--<td><a href="${downloadUrl.downloadUrl}">
                            <button class="btn btn-xs btn btn-info"><i class="fa fa-downloadUrl"></i>下载</button>
                        </a></td>-->
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