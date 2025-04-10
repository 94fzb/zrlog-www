<#assign subTitle="源码下载">
<#include "include/header.ftl"/>

<style>
    #osc-gitee-widget-tag {
        padding: 0;
    }

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

    .github-widget-repo {
        padding: 0;
    }

    img.card-img-top {
        border-radius: 0;
    }

</style>
<section class="py-16 bg-gray-50" style="padding-bottom: 0">
    <div class="container mx-auto px-4 md:px-6">
        <div class="row">
            <div class="col-md-12">
                <p style="padding-bottom: 1rem">秉承开源共享的精神，将源码托管在 Gitee/GitHub 上，欢迎各种 fork，star</p>
                <div style="display: flex; flex-wrap: wrap; justify-content: left;gap:12px">
                    <div class="card" style="max-width: 600px;">
                        <h5 class="card-header">Gitee</h5>
                        <div class="card-body">
                            <div class="row">
                                <div id="osc-gitee-widget-tag"></div>
                                <script src='https://gitee.com/94fzb/zrlog/widget_preview' async defer></script>
                            </div>
                        </div>
                    </div>
                    <div class="card" style="max-width: 600px">
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
            <div class="col-md-12" style="padding-top: 20px">
                <p style="padding-bottom: 1rem">如果你觉得 ZrLog 不错，或者在某些地方帮助到你了，又或者是有所收获，那么可以通过下面的方式支持
                    ZrLog
                    的发展</p>
                <div class="card">
                    <h5 class="card-header">支持</h5>
                    <div class="card-body">
                        <div class="card-text">如果你刚好有 Github 或者 Gitee 的账号，可以通过下面的按钮赞一下
                            <b>ZrLog</b></div>
                        <div style="display: flex;justify-content: start">
                            <#include "include/star.ftl">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<#include "donation.ftl"/>
<#include "include/footer.ftl"/>
