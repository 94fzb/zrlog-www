<#assign subTitle="变更记录">
<#include "include/header.ftl"/>
<!-- 页面标题区 -->
<section class="py-10 bg-white">
    <div class="container mx-auto px-4">
        <div
                class="flex flex-col md:flex-row justify-between items-center mb-6"
        >
            <div>
                <h1 class="text-4xl font-bold mb-2">ZrLog 更新历史</h1>
                <p class="text-lg text-gray-600">
                    完整记录 ZrLog 博客系统的版本迭代与功能演进
                </p>
            </div>
        </div>
        <div class="bg-gray-50 p-6 rounded-lg">
            <div class="flex items-center mb-4">
                <div
                        class="w-12 h-12 bg-primary/10 rounded-full flex items-center justify-center mr-4"
                >
                    <i class="ri-history-line text-primary text-2xl"></i>
                </div>
                <div>
                    <h2 class="text-xl font-semibold">项目简介</h2>
                    <p class="text-gray-600">
                        ZrLog 是一个使用 Java 开发的博客/CMS
                        程序，具有简约、易用、组件化、内存占用低等特点，自 2015
                        年以来，已经服务了上万个网站。
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

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

        .card-body ul li {
            list-style: inside;
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