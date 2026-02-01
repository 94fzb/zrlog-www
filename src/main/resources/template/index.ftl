<#include "include/header.ftl"/>
<!-- 英雄区 -->
<section id="hero" class="relative min-h-[92vh] flex items-center overflow-hidden bg-white dark:bg-black transition-colors duration-500">
    <!-- 背景装饰 (Animated Glass Blobs) -->
    <div class="absolute inset-0 overflow-hidden pointer-events-none">
        <div class="absolute top-[-10%] left-[-10%] w-[50%] h-[50%] bg-blue-400/20 dark:bg-blue-600/10 rounded-full blur-[120px] animate-blob"></div>
        <div class="absolute bottom-[-10%] right-[-10%] w-[50%] h-[50%] bg-indigo-400/20 dark:bg-indigo-600/10 rounded-full blur-[120px] animate-blob animation-delay-2000"></div>
        <div class="absolute top-[20%] right-[10%] w-[30%] h-[30%] bg-purple-400/10 dark:bg-purple-600/5 rounded-full blur-[100px] animate-blob animation-delay-4000"></div>
        
        <!-- 网格背板 -->
        <div class="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 brightness-100 contrast-150 pointer-events-none"></div>
    </div>
    
    <!-- 内容区 -->
    <div class="container mx-auto px-4 md:px-6 relative z-10">
        <div class="max-w-4xl mx-auto text-center">
            <!-- Typewriter Keywords (打字机效果) - Enlarged -->
            <div class="inline-flex items-center gap-2 mb-10 min-h-[60px]">
                <div class="px-6 py-3 rounded-2xl bg-blue-50/50 dark:bg-blue-900/20 border-2 border-blue-100 dark:border-blue-800/50 flex items-center gap-4 shadow-sm backdrop-blur-sm">
                    <img src="${url}/favicon.svg" alt="ZrLog" class="w-8 h-8 animate-pulse">
                    <span id="typewriter" class="text-lg md:text-xl font-black text-blue-600 dark:text-blue-400 tracking-wider"></span>
                    <span class="w-1 h-6 bg-blue-600 dark:bg-blue-400 animate-pulse"></span>
                </div>
            </div>
            
            <h1 class="text-6xl md:text-8xl font-black mb-6 tracking-tighter text-gray-900 dark:text-white leading-tight">
                <span class="bg-clip-text text-transparent bg-gradient-to-r from-blue-600 via-indigo-500 to-purple-600">ZrLog</span> 极致简约
            </h1>
            
            <p class="text-xl md:text-2xl text-gray-600 dark:text-gray-400 mb-12 max-w-2xl mx-auto font-medium leading-relaxed">
                专为创作而生，由于其轻量、高性能和开箱即用的特性，让您可以全身心投入到内容创作中。
            </p>
            
            <div class="flex flex-col sm:flex-row items-center justify-center gap-6 mb-20">
                <a href="https://demo.zrlog.com?ref=index" target="_blank"
                   class="group relative inline-flex items-center justify-center px-10 py-4 font-bold text-white transition-all duration-300 bg-blue-600 rounded-2xl hover:bg-blue-700 shadow-xl shadow-blue-600/25 active:scale-95 overflow-hidden">
                    <span class="relative z-10 flex items-center gap-2">
                        <i class="ri-rocket-2-line text-xl"></i>
                        在线演示
                    </span>
                    <div class="absolute inset-0 bg-gradient-to-r from-white/0 via-white/20 to-white/0 translate-x-[-100%] group-hover:translate-x-[100%] transition-transform duration-700"></div>
                </a>
                
                <a href="/download" 
                   class="inline-flex items-center justify-center px-10 py-4 font-bold text-gray-900 dark:text-white transition-all duration-300 bg-white dark:bg-gray-800 border-2 border-gray-100 dark:border-gray-700 rounded-2xl hover:border-blue-400 dark:hover:border-blue-500 hover:shadow-lg active:scale-95">
                    <i class="ri-download-cloud-line mr-2 text-xl"></i>
                    免费下载
                </a>
            </div>

            <!-- 数据统计/Github Star -->
            <div class="flex items-center justify-center">
                <#include "include/star.ftl">
            </div>
        </div>
    </div>

    <!-- Side Navigation Dots (侧边点位进度指示器) -->
    <div class="hidden lg:flex fixed right-8 top-1/2 -translate-y-1/2 flex-col items-center gap-6 z-[100]">
        <nav class="flex flex-col gap-4">
            <a href="#hero" class="dot-nav-item group relative flex items-center justify-center w-3 h-3 transition-all duration-300" data-section="hero">
                <span class="w-2 h-2 rounded-full bg-gray-300 dark:bg-gray-700 group-hover:bg-blue-600 transition-all duration-300 ring-offset-2 ring-offset-white dark:ring-offset-black dot-nav-dot shadow-sm"></span>
                <span class="absolute right-8 px-2 py-1 rounded bg-gray-900 text-white text-[10px] font-bold opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap pointer-events-none lowercase tracking-widest shadow-xl">首页</span>
            </a>
            <a href="#features" class="dot-nav-item group relative flex items-center justify-center w-3 h-3 transition-all duration-300" data-section="features">
                <span class="w-2 h-2 rounded-full bg-gray-300 dark:bg-gray-700 group-hover:bg-blue-600 transition-all duration-300 ring-offset-2 ring-offset-white dark:ring-offset-black dot-nav-dot shadow-sm"></span>
                <span class="absolute right-8 px-2 py-1 rounded bg-gray-900 text-white text-[10px] font-bold opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap pointer-events-none lowercase tracking-widest shadow-xl">核心特性</span>
            </a>
            <a href="#preview" class="dot-nav-item group relative flex items-center justify-center w-3 h-3 transition-all duration-300" data-section="preview">
                <span class="w-2 h-2 rounded-full bg-gray-300 dark:bg-gray-700 group-hover:bg-blue-600 transition-all duration-300 ring-offset-2 ring-offset-white dark:ring-offset-black dot-nav-dot shadow-sm"></span>
                <span class="absolute right-8 px-2 py-1 rounded bg-gray-900 text-white text-[10px] font-bold opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap pointer-events-none lowercase tracking-widest shadow-xl">界面展示</span>
            </a>
            <a href="#functions" class="dot-nav-item group relative flex items-center justify-center w-3 h-3 transition-all duration-300" data-section="functions">
                <span class="w-2 h-2 rounded-full bg-gray-300 dark:bg-gray-700 group-hover:bg-blue-600 transition-all duration-300 ring-offset-2 ring-offset-white dark:ring-offset-black dot-nav-dot shadow-sm"></span>
                <span class="absolute right-8 px-2 py-1 rounded bg-gray-900 text-white text-[10px] font-bold opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap pointer-events-none lowercase tracking-widest shadow-xl">功能特性</span>
            </a>
            <a href="#faq" class="dot-nav-item group relative flex items-center justify-center w-3 h-3 transition-all duration-300" data-section="faq">
                <span class="w-2 h-2 rounded-full bg-gray-300 dark:bg-gray-700 group-hover:bg-blue-600 transition-all duration-300 ring-offset-2 ring-offset-white dark:ring-offset-black dot-nav-dot shadow-sm"></span>
                <span class="absolute right-8 px-2 py-1 rounded bg-gray-900 text-white text-[10px] font-bold opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap pointer-events-none lowercase tracking-widest shadow-xl">常见问题</span>
            </a>
        </nav>
        
        <!-- Animated Scroll Progress (跑马灯风格流光) -->
        <div class="w-[1px] h-32 bg-gradient-to-b from-transparent via-blue-600/30 to-transparent relative overflow-hidden">
            <div class="absolute top-0 left-0 w-full h-1/2 bg-blue-600 dark:bg-blue-400 animate-scroll-line-progress opacity-40"></div>
        </div>
    </div>
</section>
<!-- 核心特性 -->
<section class="py-20 bg-white dark:bg-black" id="features">
    <div class="container mx-auto px-4 md:px-6">
        <div class="max-w-6xl mx-auto">
            <div class="text-center mb-12">
                <h2 class="text-3xl md:text-4xl font-bold text-gray-900 dark:text-white mb-4">
                    为什么选择 ZrLog
                </h2>
                <p class="text-lg text-gray-600 dark:text-gray-400">
                    专为写作而生，摒弃繁琐配置，专注内容创作
                </p>
            </div>
            
            <!-- 核心特性大卡片 -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <!-- 快速部署 -->
                <div class="bg-gradient-to-br from-blue-500 to-indigo-600 rounded-2xl p-8 text-white relative overflow-hidden group hover:scale-105 transition-transform">
                    <div class="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full -translate-y-16 translate-x-16"></div>
                    <div class="relative">
                        <div class="w-16 h-16 bg-white/20 backdrop-blur-sm rounded-xl flex items-center justify-center mb-4">
                            <i class="ri-rocket-line text-4xl"></i>
                        </div>
                        <h3 class="text-2xl font-bold mb-2">快速部署</h3>
                        <p class="text-blue-100 text-sm mb-4">
                            一条 Docker 命令即可完成部署，无需复杂的环境配置，支持 Serverless
                        </p>
                        <div class="flex items-center gap-2 text-sm">
                            <span class="px-2 py-1 bg-white/20 rounded">Docker</span>
                            <span class="px-2 py-1 bg-white/20 rounded">Serverless</span>
                        </div>
                    </div>
                </div>

                <!-- 简洁设计 -->
                <div class="bg-gradient-to-br from-purple-500 to-pink-600 rounded-2xl p-8 text-white relative overflow-hidden group hover:scale-105 transition-transform">
                    <div class="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full -translate-y-16 translate-x-16"></div>
                    <div class="relative">
                        <div class="w-16 h-16 bg-white/20 backdrop-blur-sm rounded-xl flex items-center justify-center mb-4">
                            <i class="ri-palette-line text-4xl"></i>
                        </div>
                        <h3 class="text-2xl font-bold mb-2">简洁设计</h3>
                        <p class="text-purple-100 text-sm mb-4">
                            精心设计的管理界面，简洁直观，基于 React + Ant Design 构建
                        </p>
                        <div class="flex items-center gap-2 text-sm">
                            <span class="px-2 py-1 bg-white/20 rounded">React</span>
                            <span class="px-2 py-1 bg-white/20 rounded">Ant Design</span>
                        </div>
                    </div>
                </div>

                <!-- 开源免费 -->
                <div class="bg-gradient-to-br from-cyan-500 to-blue-600 rounded-2xl p-8 text-white relative overflow-hidden group hover:scale-105 transition-transform">
                    <div class="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full -translate-y-16 translate-x-16"></div>
                    <div class="relative">
                        <div class="w-16 h-16 bg-white/20 backdrop-blur-sm rounded-xl flex items-center justify-center mb-4">
                            <i class="ri-open-source-line text-4xl"></i>
                        </div>
                        <h3 class="text-2xl font-bold mb-2">开源免费</h3>
                        <p class="text-cyan-100 text-sm mb-4">
                            采用 Apache License 2.0，完全开源免费，活跃的社区支持
                        </p>
                        <div class="flex items-center gap-2 text-sm">
                            <span class="px-2 py-1 bg-white/20 rounded">Apache 2.0</span>
                            <span class="px-2 py-1 bg-white/20 rounded">社区支持</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 产品预览 -->
<section id="preview" class="py-16 bg-white dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <div class="max-w-6xl mx-auto">
            <div class="text-center mb-12">
                <h2 class="text-3xl md:text-4xl font-bold text-gray-900 dark:text-white mb-4">
                    界面展示
                </h2>
                <p class="text-gray-600 dark:text-gray-400">
                    简洁现代的设计，流畅直观的体验
                </p>
            </div>
            
            <#if indexImgList?? && (indexImgList?size > 0)>
            <div class="carousel-container relative">
                <#list indexImgList as img>
                    <div class="carousel-slide <#if img?index == 0> active</#if>">
                        <img
                            src="${img}"
                            alt="ZRLOG 界面预览"
                            class="w-full h-auto rounded-2xl shadow-2xl"
                        />
                    </div>
                </#list>
                
                <!-- 左右箭头 -->
                <button
                    class="absolute left-0 md:left-4 top-1/2 -translate-y-1/2 bg-white dark:bg-gray-800 hover:bg-gray-50 dark:hover:bg-gray-700 text-gray-800 dark:text-white w-12 h-12 rounded-full flex items-center justify-center shadow-lg border border-gray-200 dark:border-gray-700 transition-all hover:scale-110 z-10"
                    onclick="changeSlide(-1)"
                >
                    <i class="ri-arrow-left-s-line text-2xl"></i>
                </button>
                <button
                    class="absolute right-0 md:right-4 top-1/2 -translate-y-1/2 bg-white dark:bg-gray-800 hover:bg-gray-50 dark:hover:bg-gray-700 text-gray-800 dark:text-white w-12 h-12 rounded-full flex items-center justify-center shadow-lg border border-gray-200 dark:border-gray-700 transition-all hover:scale-110 z-10"
                    onclick="changeSlide(1)"
                >
                    <i class="ri-arrow-right-s-line text-2xl"></i>
                </button>

                <!-- 指示器 -->
                <div class="flex justify-center mt-6 gap-4">
                    <#list indexImgList as img>
                        <button
                            class="carousel-dot group relative flex items-center justify-center w-5 h-5 transition-all duration-300"
                            onclick="currentSlide(${img?index})"
                            aria-label="切换到第 ${img?index + 1} 张图片"
                        >
                            <span class="carousel-dot-inner w-2 h-2 rounded-full transition-all duration-300 <#if img?index == 0>bg-blue-600 ring-2 ring-blue-600/30 scale-125<#else>bg-gray-300 dark:bg-gray-700</#if> ring-offset-2 ring-offset-white dark:ring-offset-black"></span>
                        </button>
                    </#list>
                </div>
            </div>
            <#else>
            <div class="text-center py-12 bg-gray-50 dark:bg-gray-900 rounded-2xl">
                <i class="ri-image-line text-6xl text-gray-300 dark:text-gray-600 mb-4"></i>
                <p class="text-gray-500 dark:text-gray-400">暂无预览图片</p>
            </div>
            </#if>
        </div>
    </div>
</section>


<!-- 功能特性 -->
<section id="functions" class="py-16 bg-gray-50 dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <div class="max-w-6xl mx-auto">
            <div class="text-center mb-12">
                <h2 class="text-3xl md:text-4xl font-bold text-gray-900 dark:text-white mb-4">
                    功能特性
                </h2>
                <p class="text-gray-600 dark:text-gray-400">
                    简洁而强大的功能，满足您的博客需求
                </p>
            </div>

            <!-- 核心功能大卡片 -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
                <!-- Markdown 编辑 -->
                <div class="bg-gradient-to-br from-orange-500 to-red-600 rounded-2xl p-8 text-white relative overflow-hidden group hover:scale-105 transition-transform">
                    <div class="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full -translate-y-16 translate-x-16"></div>
                    <div class="relative">
                        <div class="w-16 h-16 bg-white/20 backdrop-blur-sm rounded-xl flex items-center justify-center mb-4">
                            <i class="ri-markdown-line text-4xl"></i>
                        </div>
                        <h3 class="text-2xl font-bold mb-2">Markdown 编辑</h3>
                        <p class="text-orange-100 text-sm mb-3">
                            所见即所得的 Markdown 编辑器，实时预览，专注创作
                        </p>
                        <div class="flex items-center gap-2 text-sm">
                            <span class="px-2 py-1 bg-white/20 rounded">实时预览</span>
                        </div>
                    </div>
                </div>

                <!-- 主题系统 -->
                <div class="bg-gradient-to-br from-green-500 to-emerald-600 rounded-2xl p-8 text-white relative overflow-hidden group hover:scale-105 transition-transform">
                    <div class="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full -translate-y-16 translate-x-16"></div>
                    <div class="relative">
                        <div class="w-16 h-16 bg-white/20 backdrop-blur-sm rounded-xl flex items-center justify-center mb-4">
                            <i class="ri-palette-line text-4xl"></i>
                        </div>
                        <h3 class="text-2xl font-bold mb-2">主题系统</h3>
                        <p class="text-green-100 text-sm mb-3">
                            强大的主题系统，自由定制博客外观，灵活扩展
                        </p>
                        <div class="flex items-center gap-2 text-sm">
                            <span class="px-2 py-1 bg-white/20 rounded">自由定制</span>
                        </div>
                    </div>
                </div>

                <!-- 插件扩展 -->
                <div class="bg-gradient-to-br from-indigo-500 to-purple-600 rounded-2xl p-8 text-white relative overflow-hidden group hover:scale-105 transition-transform">
                    <div class="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full -translate-y-16 translate-x-16"></div>
                    <div class="relative">
                        <div class="w-16 h-16 bg-white/20 backdrop-blur-sm rounded-xl flex items-center justify-center mb-4">
                            <i class="ri-plug-line text-4xl"></i>
                        </div>
                        <h3 class="text-2xl font-bold mb-2">插件扩展</h3>
                        <p class="text-indigo-100 text-sm mb-3">
                            强大的插件系统，即插即用，轻松扩展博客功能
                        </p>
                        <div class="flex items-center gap-2 text-sm">
                            <span class="px-2 py-1 bg-white/20 rounded">即插即用</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 辅助功能小卡片 -->
            <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4">
                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-blue-400 dark:hover:border-blue-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-blue-400 to-indigo-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-edit-box-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">博客管理</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">分类 · 标签 · 评论</p>
                </div>

                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-red-400 dark:hover:border-red-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-red-400 to-pink-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-message-3-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">第三方评论</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">多平台集成</p>
                </div>

                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-yellow-400 dark:hover:border-yellow-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-yellow-400 to-orange-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-speed-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">页面静态化</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">极速加载</p>
                </div>

                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-pink-400 dark:hover:border-pink-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-pink-400 to-rose-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-cloud-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">云存储</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">灵活存储</p>
                </div>

                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-teal-400 dark:hover:border-teal-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-teal-400 to-cyan-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-global-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">多语言</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">国际化支持</p>
                </div>

                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-purple-400 dark:hover:border-purple-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-purple-400 to-violet-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-device-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">响应式</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">全设备支持</p>
                </div>

                <!-- 新增：Serverless -->
                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-green-400 dark:hover:border-green-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-green-400 to-emerald-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-server-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">Serverless</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">无服务部署</p>
                </div>

                <!-- 新增：PWA 离线写作 -->
                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-indigo-400 dark:hover:border-indigo-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-indigo-400 to-blue-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-file-edit-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">PWA 离线</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">离线写作</p>
                </div>

                <!-- 新增：AI 助手 -->
                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-amber-400 dark:hover:border-amber-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-amber-400 to-orange-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-sparkling-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">AI 助手</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">智能写作</p>
                </div>

                <!-- 更多探索 -->
                <a href="https://blog.zrlog.com/sort/doc" target="_blank" class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-blue-400 dark:hover:border-blue-600 transition-colors block group">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-gray-300 to-gray-400 dark:from-gray-600 dark:to-gray-700 rounded-lg flex items-center justify-center mb-3 group-hover:from-blue-400 group-hover:to-indigo-500 transition-all">
                        <i class="ri-more-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">更多探索</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">发现更多</p>
                </a>
            </div>
        </div>
    </div>
</section>

<!-- FAQ 快速问答 -->
<section id="faq" class="py-16 bg-white dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <div class="max-w-4xl mx-auto">
            <div class="text-center mb-12">
                <h2 class="text-3xl md:text-4xl font-bold text-gray-900 dark:text-white mb-4">
                    常见问题
                </h2>
                <p class="text-gray-600 dark:text-gray-400">
                    快速了解 ZrLog 的常见疑问
                </p>
            </div>

            <div class="space-y-4">
                <!-- FAQ 1 -->
                <div class="border border-gray-200 dark:border-gray-700 rounded-xl overflow-hidden">
                    <button onclick="toggleFaq(1)" class="w-full px-6 py-4 text-left flex items-center justify-between bg-gray-50 dark:bg-gray-900 hover:bg-gray-100 dark:hover:bg-gray-800 transition-colors">
                        <h3 class="text-lg font-semibold text-gray-900 dark:text-white">ZrLog 适合哪些用户？</h3>
                        <i id="faq-icon-1" class="ri-arrow-down-s-line text-2xl text-gray-500 dark:text-gray-400 transition-transform"></i>
                    </button>
                    <div id="faq-content-1" class="px-6 py-4 bg-white dark:bg-black hidden">
                        <p class="text-gray-600 dark:text-gray-400 leading-relaxed">
                            ZrLog 适合个人博主、技术写作者、小团队以及任何需要轻量级博客系统的用户。如果你追求简洁高效的写作体验，又希望拥有完整的博客功能，ZrLog 是理想的选择。
                        </p>
                    </div>
                </div>

                <!-- FAQ 2 -->
                <div class="border border-gray-200 dark:border-gray-700 rounded-xl overflow-hidden">
                    <button onclick="toggleFaq(2)" class="w-full px-6 py-4 text-left flex items-center justify-between bg-gray-50 dark:bg-gray-900 hover:bg-gray-100 dark:hover:bg-gray-800 transition-colors">
                        <h3 class="text-lg font-semibold text-gray-900 dark:text-white">如何快速安装 ZrLog？</h3>
                        <i id="faq-icon-2" class="ri-arrow-down-s-line text-2xl text-gray-500 dark:text-gray-400 transition-transform"></i>
                    </button>
                    <div id="faq-content-2" class="px-6 py-4 bg-white dark:bg-black hidden">
                        <p class="text-gray-600 dark:text-gray-400 leading-relaxed mb-3">
                            安装非常简单！推荐使用 Docker 方式：
                        </p>
                        <code class="block bg-gray-100 dark:bg-gray-900 px-4 py-3 rounded-lg text-sm text-gray-800 dark:text-gray-200">
                            docker run -p 8080:8080 -v $(pwd)/conf:/opt/zrlog/conf zrlog/zrlog
                        </code>
                        <p class="text-gray-600 dark:text-gray-400 leading-relaxed mt-3">
                            也支持传统部署和 Serverless 部署方式。详情请查看<a href="/download" class="text-blue-600 hover:text-blue-700 dark:text-blue-400">下载页面</a>。
                        </p>
                    </div>
                </div>

                <!-- FAQ 3 -->
                <div class="border border-gray-200 dark:border-gray-700 rounded-xl overflow-hidden">
                    <button onclick="toggleFaq(3)" class="w-full px-6 py-4 text-left flex items-center justify-between bg-gray-50 dark:bg-gray-900 hover:bg-gray-100 dark:hover:bg-gray-800 transition-colors">
                        <h3 class="text-lg font-semibold text-gray-900 dark:text-white">支持哪些数据库？</h3>
                        <i id="faq-icon-3" class="ri-arrow-down-s-line text-2xl text-gray-500 dark:text-gray-400 transition-transform"></i>
                    </button>
                    <div id="faq-content-3" class="px-6 py-4 bg-white dark:bg-black hidden">
                        <p class="text-gray-600 dark:text-gray-400 leading-relaxed">
                            ZrLog 支持 MySQL 和 Cloudflare D1（基于 SQLite 的无服务数据库），可以根据你的部署环境灵活选择。D1 特别适合 Serverless 部署场景。
                        </p>
                    </div>
                </div>

                <!-- FAQ 4 -->
                <div class="border border-gray-200 dark:border-gray-700 rounded-xl overflow-hidden">
                    <button onclick="toggleFaq(4)" class="w-full px-6 py-4 text-left flex items-center justify-between bg-gray-50 dark:bg-gray-900 hover:bg-gray-100 dark:hover:bg-gray-800 transition-colors">
                        <h3 class="text-lg font-semibold text-gray-900 dark:text-white">是否支持主题和插件？</h3>
                        <i id="faq-icon-4" class="ri-arrow-down-s-line text-2xl text-gray-500 dark:text-gray-400 transition-transform"></i>
                    </button>
                    <div id="faq-content-4" class="px-6 py-4 bg-white dark:bg-black hidden">
                        <p class="text-gray-600 dark:text-gray-400 leading-relaxed">
                            是的！ZrLog 拥有强大的主题和插件系统。你可以在<a href="/template" class="text-blue-600 hover:text-blue-700 dark:text-blue-400">主题中心</a>和<a href="/plugin" class="text-blue-600 hover:text-blue-700 dark:text-blue-400">插件中心</a>找到丰富的扩展资源，也可以根据需求开发自己的主题和插件。
                        </p>
                    </div>
                </div>

                <!-- FAQ 5 -->
                <div class="border border-gray-200 dark:border-gray-700 rounded-xl overflow-hidden">
                    <button onclick="toggleFaq(5)" class="w-full px-6 py-4 text-left flex items-center justify-between bg-gray-50 dark:bg-gray-900 hover:bg-gray-100 dark:hover:bg-gray-800 transition-colors">
                        <h3 class="text-lg font-semibold text-gray-900 dark:text-white">性能如何？能支撑多大访问量？</h3>
                        <i id="faq-icon-5" class="ri-arrow-down-s-line text-2xl text-gray-500 dark:text-gray-400 transition-transform"></i>
                    </button>
                    <div id="faq-content-5" class="px-6 py-4 bg-white dark:bg-black hidden">
                        <p class="text-gray-600 dark:text-gray-400 leading-relaxed">
                            ZrLog 采用轻量级架构和页面静态化技术，性能出色。配合 CDN 和缓存，可以轻松支撑日均数万 PV 的访问量。对于更大流量，建议使用 Serverless 部署方式，可以自动扩展。
                        </p>
                    </div>
                </div>
            </div>

            <div class="text-center mt-12">
                <p class="text-gray-600 dark:text-gray-400 mb-4">还有其他问题？</p>
                <a href="https://blog.zrlog.com/faq-collect.html" target="_blank" class="inline-flex items-center text-blue-600 hover:text-blue-700 dark:text-blue-400 dark:hover:text-blue-300 font-medium">
                    查看完整 FAQ
                    <i class="ri-arrow-right-line ml-2"></i>
                </a>
            </div>
        </div>
    </div>
</section>
<script>
    // 轮播图功能
    let slideIndex = 0;
    const slides = document.querySelectorAll(".carousel-slide");
    const dots = document.querySelectorAll(".carousel-dot");

    function showSlides() {
        // 隐藏所有幻灯片
        for (let i = 0; i < slides.length; i++) {
            slides[i].classList.remove("active");
        }
        
        // 更新指示器
        dots.forEach((btn, i) => {
            const inner = btn.querySelector('.carousel-dot-inner');
            if (i === slideIndex) {
                inner.classList.add('bg-blue-600', 'ring-2', 'ring-blue-600/30', 'scale-125');
                inner.classList.remove('bg-gray-300', 'dark:bg-gray-700');
            } else {
                inner.classList.remove('bg-blue-600', 'ring-2', 'ring-blue-600/30', 'scale-125');
                inner.classList.add('bg-gray-300', 'dark:bg-gray-700');
            }
        });
        
        // 显示当前幻灯片
        slides[slideIndex].classList.add("active");
    }

    function changeSlide(n) {
        slideIndex += n;
        if (slideIndex >= slides.length) {
            slideIndex = 0;
        }
        if (slideIndex < 0) {
            slideIndex = slides.length - 1;
        }
        showSlides();
    }

    function currentSlide(n) {
        slideIndex = n;
        showSlides();
    }

    // 自动轮播
    setInterval(() => {
        changeSlide(1);
    }, 5000);

    // FAQ 折叠展开功能
    function toggleFaq(index) {
        const content = document.getElementById('faq-content-' + index);
        const icon = document.getElementById('faq-icon-' + index);
        
        if (content.classList.contains('hidden')) {
            content.classList.remove('hidden');
            icon.style.transform = 'rotate(180deg)';
        } else {
            content.classList.add('hidden');
            icon.style.transform = 'rotate(0deg)';
        }
    }
</script>
<script>
    document.addEventListener('DOMContentLoaded', () => {
        const text = document.getElementById('typewriter');
        const phrases = [
            '专业的 Java 开源博客系统',
            '高性能，轻量级，低内存',
            '支持 Docker 一键部署',
            '极致简约，专注内容创作',
            'Serverless 部署优化'
        ];
        
        let i = 0;
        let j = 0;
        let isDeleting = false;

        function loop() {
            const current = phrases[i];
            let time = isDeleting ? 40 : 120; // 删减快一点，输入慢一点

            if (isDeleting) {
                text.innerText = current.substring(0, j - 1);
                j--;
            } else {
                text.innerText = current.substring(0, j + 1);
                j++;
            }

            if (!isDeleting && j === current.length) {
                isDeleting = true;
                time = 3000; // 展示完毕停留 3 秒
            } else if (isDeleting && j === 0) {
                isDeleting = false;
                i = (i + 1) % phrases.length;
                time = 500; // 删完后停留 0.5 秒开始下一个
            }

            setTimeout(loop, time);
        }

        loop();
    });

    // 侧边导航逻辑 (Side Dot Nav Logic)
    document.addEventListener('DOMContentLoaded', () => {
        const dotNavItems = document.querySelectorAll('.dot-nav-item');
        const sections = Array.from(dotNavItems).map(item => document.getElementById(item.dataset.section));

        function updateActiveDot() {
            let currentSectionId = 'hero';
            const scrollPosition = window.scrollY + window.innerHeight / 3;

            sections.forEach(section => {
                if (section && scrollPosition >= section.offsetTop) {
                    currentSectionId = section.id;
                }
            });

            dotNavItems.forEach(item => {
                const dot = item.querySelector('.dot-nav-dot');
                if (item.dataset.section === currentSectionId) {
                    dot.classList.add('bg-blue-600', 'ring-2', 'ring-blue-600/30', 'scale-125');
                    dot.classList.remove('bg-gray-300', 'dark:bg-gray-700');
                } else {
                    dot.classList.remove('bg-blue-600', 'ring-2', 'ring-blue-600/30', 'scale-125');
                    dot.classList.add('bg-gray-300', 'dark:bg-gray-700');
                }
            });
        }

        window.addEventListener('scroll', updateActiveDot);
        updateActiveDot(); // 初始化

        // 平滑点击滚动 (由 href 处理，但可以增强)
        dotNavItems.forEach(item => {
            item.addEventListener('click', (e) => {
                e.preventDefault();
                const targetId = item.getAttribute('href').substring(1);
                const targetElement = document.getElementById(targetId);
                if (targetElement) {
                    window.scrollTo({
                        top: targetElement.offsetTop - 80, // 考虑头部高度
                        behavior: 'smooth'
                    });
                }
            });
        });
    });
</script>
<#include "include/footer.ftl"/>