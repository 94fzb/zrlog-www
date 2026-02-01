<#include "../include/header.ftl"/>
<section class="py-16 bg-gray-50 dark:bg-black min-h-screen">
    <div class="container mx-auto px-4 md:px-6">
        <!-- 导航与标题 -->
        <div class="mb-12">
            <nav class="flex items-center gap-2 text-sm text-gray-500 dark:text-gray-400 mb-4">
                <a href="/" class="storeDetailLink hover:text-blue-600 transition-colors">首页</a>
                <i class="ri-arrow-right-s-line"></i>
                <a href="/template" class="storeDetailLink hover:text-blue-600 transition-colors">主题中心</a>
                <i class="ri-arrow-right-s-line"></i>
                <span class="text-gray-900 dark:text-white font-medium">${template.name}</span>
            </nav>
            <div class="flex flex-col md:flex-row md:items-center justify-between gap-6">
                <div>
                    <h1 class="text-3xl md:text-4xl font-bold text-gray-900 dark:text-white">${template.name}</h1>
                    <div class="flex items-center gap-4 mt-2">
                        <#if template.tags??>
                            <#list template.tags as tag>
                                <span class="text-blue-600 dark:text-blue-400 flex items-center gap-1 text-sm font-medium">
                                    <#if tag?index == 0><i class="ri-price-tag-3-line"></i></#if>
                                    ${tag}
                                </span>
                            </#list>
                        <#else>
                            <span class="text-gray-500 dark:text-gray-400 flex items-center gap-1 text-sm">
                                <i class="ri-user-smile-line"></i>
                                官方主题
                            </span>
                        </#if>
                        <span class="text-gray-300 dark:text-gray-700">|</span>
                        <span class="text-gray-500 dark:text-gray-400 flex items-center gap-1 text-sm">
                            <i class="ri-calendar-line"></i>
                            上传于 ${template.createdDate!'2016-01-04'}
                        </span>
                    </div>
                </div>
                <div class="flex items-center gap-4">
                    <a href="${template.downloadUrl}" 
                       class="storeInstallLink inline-flex items-center justify-center bg-blue-600 text-white hover:bg-blue-700 py-3 px-8 rounded-lg font-medium transition-all shadow-lg shadow-blue-600/20 active:scale-95">
                        <i class="ri-download-line mr-2"></i>
                        <span class="storeInstallText">${download}</span>
                    </a>
                </div>
            </div>
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
            <!-- 左侧：大图预览 -->
            <div class="lg:col-span-2 space-y-8">
                <div class="bg-white dark:bg-gray-900 rounded-3xl overflow-hidden shadow-xl border border-gray-100 dark:border-gray-800">
                    <img src="${template.image}" 
                         alt="${template.name}" 
                         class="w-full h-auto object-cover">
                </div>
                
                <!-- 详细说明 -->
                <div class="bg-white dark:bg-gray-900 rounded-3xl p-8 shadow-sm border border-gray-100 dark:border-gray-800">
                    <h2 class="text-2xl font-bold text-gray-900 dark:text-white mb-6 flex items-center gap-2">
                        <i class="ri-article-line text-blue-600"></i>
                        主题描述
                    </h2>
                    <div class="prose dark:prose-invert max-w-none text-gray-600 dark:text-gray-400 leading-relaxed">
                        <p>${template.desc!'暂无详细介绍'}</p>
                    </div>
                </div>
            </div>

            <!-- 右侧：详情信息 -->
            <div class="space-y-8">
                <div class="bg-white dark:bg-gray-900 rounded-3xl p-8 shadow-sm border border-gray-100 dark:border-gray-800">
                    <h3 class="text-xl font-bold text-gray-900 dark:text-white mb-6 flex items-center gap-2">
                        <i class="ri-information-line text-blue-600"></i>
                        详情信息
                    </h3>
                    
                    <ul class="space-y-6">
                        <li class="flex items-center justify-between">
                            <span class="text-gray-500 dark:text-gray-400 text-sm">版本号</span>
                            <span class="text-gray-900 dark:text-white font-medium px-2 py-1 bg-gray-100 dark:bg-gray-800 rounded text-xs">v${template.version!'1.0.0'}</span>
                        </li>
                        <li class="flex items-center justify-between">
                            <span class="text-gray-500 dark:text-gray-400 text-sm">作者</span>
                            <span class="text-gray-900 dark:text-white font-medium">${template.author!'官方'}</span>
                        </li>
                        <li class="flex items-center justify-between">
                            <span class="text-gray-500 dark:text-gray-400 text-sm">开源协议</span>
                            <span class="text-gray-900 dark:text-white font-medium">Apache-2.0</span>
                        </li>
                        <li class="pt-6 border-t border-gray-100 dark:border-gray-800">
                            <p class="text-gray-500 dark:text-gray-400 text-sm mb-4">更多资源</p>
                            <a href="${template.sourceUrl!'https://github.com/94fzb/zrlog'}" 
                               target="_blank"
                               class="flex items-center justify-center gap-2 w-full py-3 px-4 rounded-xl border border-gray-200 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-800 transition-all text-gray-900 dark:text-white font-medium">
                                <i class="ri-github-line"></i>
                                View on GitHub
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- 提示卡片 -->
                <div class="bg-gradient-to-br from-indigo-600 to-blue-700 rounded-3xl p-8 text-white shadow-xl shadow-blue-900/20">
                    <h4 class="text-lg font-bold mb-2">需要帮助？</h4>
                    <p class="text-blue-100 text-sm mb-6">如果在安装过程中遇到任何问题，欢迎查看官方文档或在 GitHub 提交反馈。</p>
                    <a href="https://blog.zrlog.com/sort/doc" class="inline-flex items-center text-sm font-semibold hover:underline">
                        查看帮助文档
                        <i class="ri-arrow-right-line ml-1"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<#include "../include/footer.ftl"/>
