<#include "../include/header.ftl"/>
<section class="py-16 bg-gray-50 dark:bg-black min-h-screen">
    <div class="container mx-auto px-4 md:px-6">
        <!-- 头部区域 -->
        <div class="mb-16 text-center md:text-left relative">
            <nav class="flex items-center justify-center md:justify-start gap-2 text-sm text-gray-500 dark:text-gray-400 mb-6">
                <a href="/" class="storeDetailLink hover:text-blue-600 transition-colors">首页</a>
                <i class="ri-arrow-right-s-line"></i>
                <span class="text-gray-900 dark:text-white font-medium">插件中心</span>
            </nav>
            <h1 class="text-4xl md:text-6xl font-black text-gray-900 dark:text-white mb-4 tracking-tighter">
                功能 <span class="bg-clip-text text-transparent bg-gradient-to-r from-green-600 to-emerald-500">插件</span>
            </h1>
            <p class="text-lg text-gray-600 dark:text-gray-400 max-w-2xl">通过强大的插件系统扩展您的博客功能，即插即用，满足各种个性化需求。</p>
            
            <!-- 装饰背景 -->
            <div class="absolute -top-10 -right-20 w-64 h-64 bg-green-100/30 dark:bg-green-900/10 rounded-full blur-3xl pointer-events-none"></div>
        </div>

        <!-- 列表区域 -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            <#list plugins as plugin>
                <div class="group bg-white dark:bg-gray-900 rounded-2xl overflow-hidden border border-gray-200 dark:border-gray-800 shadow-sm hover:shadow-xl transition-all duration-300 flex flex-col">
                    <!-- 预览图 -->
                    <div class="relative aspect-[16/10] overflow-hidden bg-gray-100 dark:bg-gray-800">
                        <img class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110"
                             src="${plugin.image}?imageView2/2/w/800"
                             alt="${plugin.name}">
                        <div class="absolute inset-0 bg-black/20 opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center">
                             <a href="${url}/plugin/${plugin.id}.html"
                                class="bg-white text-gray-900 px-6 py-2 rounded-full font-medium transform translate-y-4 group-hover:translate-y-0 transition-all duration-300">
                                查看详情
                             </a>
                        </div>
                    </div>
                    
                    <!-- 内容描述 -->
                    <div class="p-6 flex-grow flex flex-col">
                        <div class="flex justify-between items-start mb-2">
                            <h3 class="text-xl font-bold text-gray-900 dark:text-white group-hover:text-blue-600 transition-colors">
                                ${plugin.name}
                            </h3>
                            <span class="text-xs text-gray-500 dark:text-gray-400 font-medium">
                                v${plugin.version!'1.0.0'}
                            </span>
                        </div>

                        <!-- 动态标签 -->
                        <div class="flex flex-wrap gap-2 mb-4">
                            <#if plugin.tags??>
                                <#list plugin.tags as tag>
                                    <span class="px-2 py-0.5 bg-green-50 dark:bg-green-900/30 text-green-600 dark:text-green-400 text-[10px] font-medium rounded">
                                        ${tag}
                                    </span>
                                </#list>
                            <#else>
                                <span class="px-2 py-0.5 bg-green-50 dark:bg-green-900/30 text-green-600 dark:text-green-400 text-[10px] font-medium rounded">
                                    精选
                                </span>
                            </#if>
                        </div>
                        
                        <p class="text-gray-600 dark:text-gray-400 text-sm line-clamp-2 mb-6 flex-grow">
                            ${plugin.desc!'增强你的 ZrLog 博客，通过 ${plugin.name} 插件开启更多可能性。'}
                        </p>
                        
                        <div class="flex items-center justify-between pt-4 border-t border-gray-100 dark:border-gray-800">
                            <div class="flex items-center gap-2">
                                <i class="ri-user-smile-line text-gray-400"></i>
                                <span class="text-sm text-gray-500">${plugin.author!'官方'}</span>
                            </div>
                            <a href="${url}/plugin/${plugin.id}.html"
                               class="storeDetailLink text-blue-600 dark:text-blue-400 font-medium hover:underline flex items-center">
                                <span class="storeInstallText">详情 &amp; ${download}</span>
                                <i class="ri-arrow-right-line ml-1"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</section>
<#include "../include/footer.ftl"/>
