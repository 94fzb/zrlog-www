<#include "include/header.ftl"/>
<#include "_code/header.ftl"/>
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
        border: none #E3E9ED!important;
    }

    .osc_git_info {
        color: #666;
    }

    .osc_git_box .osc_git_title {
        border-radius: 0!important;
        height: 38px!important;
        line-height: 38px!important;
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

    .github-box {
        border: none !important;
    }

    .github-box-title {
        background: white !important;
    }
    .github-box-content {
        background: white !important;
    }
    .osc_git_box .osc_git_title h3 {
        color: #9B9B9B !important;
        padding: 8px 1px 1px 1px !important;
    }

    .github-box .github-box-title {
        border-radius: 0!important;
    }

    .github-box .github-box-download {
        border-radius: 0!important;
    }
    .osc_git_footer {
        display: none;
    }
    .github-box-download {
        display: none;
    }
</style>
<section class="py-16 bg-gray-50 dark:bg-black" style="padding-bottom: 0">
    <div class="container mx-auto px-4 md:px-6">
        <div style="display: flex; flex-wrap: wrap; justify-content: left;gap:12px">
            <div class="card shadow-md bg-white dark:bg-gray-900" style="max-width: 738px;overflow: hidden;width: 100%">
                <h5 class="card-header">Gitee</h5>
                <div class="card-body dark:bg-gray-900" style="padding:0">
                    <div id="osc-gitee-widget-tag"></div>
                    <script src='https://gitee.com/94fzb/zrlog/widget_preview' async defer></script>
                </div>
            </div>
            <div class="card shadow-md bg-white dark:bg-gray-900" style="max-width: 738px;overflow: hidden;width: 100%;height: max-content">
                <h5 class="card-header">GitHub</h5>
                <div class="card-body" style="padding:0;min-height: 128px">
                    <div class="github-widget-repo" data-repo="94fzb/zrlog"></div>
                    <script type="text/javascript" src="/assets/js/github_repo_widget_en.js"></script>
                </div>
            </div>
        </div>
        <p style="padding-bottom: 1rem; padding-top: 1rem">如果你觉得 ZrLog 不错，或者在某些地方帮助到你了，又或者是有所收获，那么可以通过下面的方式支持 ZrLog 的发展</p>
        <div class="card bg-white dark:bg-gray-900">
            <h5 class="card-header">支持</h5>
            <div class="card-body">
                <div class="card-text">如果你刚好有 Github 或者 Gitee 的账号，可以通过下面的按钮赞一下
                    <b>ZrLog</b>
                </div>
                <div style="display: flex;justify-content: start">
                    <#include "include/star.ftl">
                </div>
            </div>
        </div>
    </div>
</section>
<#include "donation.ftl"/>
<#include "include/footer.ftl"/>
