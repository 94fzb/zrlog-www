<#assign subTitle="源码下载">
<#include "include/header.ftl"/>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <p>秉承开源共享的精神，将源码托管在 Gitee/GitHub 上，欢迎各种 fork，star</p>
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <h5 class="card-header">Gitee</h5>
                        <div class="card-body">
                            <div class="row">
                                <script src='https://gitee.com/94fzb/zrlog/widget_preview'></script>
                                <style>
                                    .pro_name a {
                                        color: #4183c4;
                                    }

                                    .osc_git_title {
                                        background-color: #fff;
                                    }

                                    .osc_git_box {
                                        background-color: #fff;
                                        width: 100%
                                    }

                                    .osc_git_box {
                                        border-color: #E3E9ED;
                                    }

                                    .osc_git_info {
                                        color: #666;
                                    }

                                    .osc_git_main a {
                                        color: #9B9B9B;
                                    }

                                    .ui.segment.osc_git_box {
                                        border-radius: 4px;
                                        width: 100%;
                                    }
                                </style>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <h5 class="card-header">GitHub</h5>
                        <div class="card-body">
                            <div class="row">
                                <div class="github-widget-repo" data-repo="94fzb/zrlog"></div>
                                <script type="text/javascript" src="/assets/js/github_repo_widget_en.js"></script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12" style="padding-top: 20px">
            <p>如果你觉得 ZrLog 不错，或者在某些地方帮助到你了，又或者是有所收获，那么可以通过下面的方式支持 ZrLog 的发展</p>
            <div class="card">
                <h5 class="card-header">支持</h5>
                <div class="card-body">
                    <div class="card-text">如果你刚好有 Github 或者 Gitee 的账号，可以通过下面的按钮赞一下 <b>ZrLog</b></div>
                    <br/>
                    <#include "include/star.ftl">
                </div>
            </div>
        </div>
        <div class="col-md-12" style="padding-top: 20px">
            <div class="card">
                <h5 class="card-header">请作者喝杯咖啡
                    <small>（可在备注里注名昵称）</small>
                </h5>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="card text-center">
                                        <h5 class="card-header">微信</h5>
                                        <img class="card-img-top" width="273px"
                                             src="${url}/assets/img/donation/wechat.png"/>
                                    </div>
                                </div>
                                <div class="col-md-2"></div>
                                <div class="col-md-5">
                                    <div class="card text-center">
                                        <h5 class="card-header">支付宝</h5>
                                        <img class="card-img-top" width="273px"
                                             src="${url}/assets/img/donation/alipay.png"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12" style="padding-top: 20px">
            <div class="card">
                <h5 class="card-header">捐赠列表</h5>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                            <table class="table table-striped table-bordered table-hover table-responsive-xl">
                                <thead>
                                <tr>
                                    <th>金额</th>
                                    <th>捐赠者</th>
                                    <th>捐赠时间</th>
                                    <th>留言</th>
                                </tr>
                                </thead>

                                <tbody>
                    <#list donations as donation>
                    <tr>
                        <td>￥${donation.money}</td>
                        <td><a href="${donation.link}" target="_blank">${donation.name}</a></td>
                        <td>${donation.createdDate}</td>
                        <td>${donation.comment}</td>
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
</div>
<#include "include/footer.ftl"/>
