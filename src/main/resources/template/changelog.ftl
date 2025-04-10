<#assign subTitle="变更记录">
<#include "include/header.ftl"/>
<section class="py-16 bg-gray-50">
    <style>
        .card-body h3:before, .card-body h4:before {
            content: "#";
            padding-right: 2px;
        }

        h3 {
            font-weight: 500;
            font-size: 24px;
            line-height: 48px;
        }

        h4 {
            font-weight: 500;
            font-size: 20px;
            line-height: 36px;
        }

        hr {
            margin-bottom: 16px;
            margin-top: 16px;
        }
    </style>
    <div class="container mx-auto px-4 md:px-6">
        <div class="card">
            <h4 class="card-header">
                变更记录
            </h4>
            <div class="card-body" style="padding: 16px;">
                ${htmlStr}
            </div>
        </div>
    </div>
</section>
<#include "include/footer.ftl">