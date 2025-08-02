<#assign subTitle="变更记录">
<#include "include/header.ftl"/>
<!-- 页面标题区 -->
<section class="relative hero-gradient text-white py-20 overflow-hidden">
    <div class="absolute top-0 right-0 w-40 h-40 transform rotate-45 translate-x-20 -translate-y-20 bg-primary opacity-10"></div>
    <div class="absolute bottom-0 left-0 w-40 h-40 transform rotate-45 -translate-x-20 translate-y-20 bg-primary opacity-10"></div>
    <div class="container mx-auto px-4">
        <div
                class="flex flex-col md:flex-row justify-between items-center mb-6"
        >
            <div>
                <h1 class="text-4xl font-bold mb-2">ZrLog 变更记录</h1>
                <p class="text-lg text-gray-200">
                    完整记录 ZrLog 博客系统的版本迭代与功能演进
                </p>
            </div>
        </div>
        <div class="bg-gray-50 p-6 rounded-lg dark:bg-black">
            <div class="flex items-center">
                <div
                        class="w-12 h-12 bg-primary/10 rounded-full flex items-center justify-center mr-4"
                        style="min-width:48px"
                >
                    <i class="ri-history-line text-primary text-2xl"></i>
                </div>
                <div class="">
                    <h2 class="text-xl text-gray-600 font-semibold dark:text-gray-200">项目简介</h2>
                    <p class="text-gray-600 dark:text-gray-600">
                        ZrLog 是一个使用 Java 开发的博客/CMS
                        程序，具有简约、易用、组件化、内存占用低等特点，自 2015
                        年以来，已经服务了上万个网站。
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="py-16 bg-gray-50 dark:bg-black">
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

        .card-body a {
            color: var(--color-primary);
        }
    </style>
    <div class="container mx-auto px-4 md:px-6">
        <div class="card bg-white dark:bg-gray-900">
            <h4 class="card-header">
                变更记录
            </h4>
            <div class="card-body" style="padding: 16px;overflow: hidden;white-space: wrap;word-break: break-all;">
                ${htmlStr}
            </div>
        </div>
    </div>
</section>
<#include "include/footer.ftl">