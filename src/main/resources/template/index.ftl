<#include "include/header.ftl"/>
<!-- 英雄区 -->
<section class="hero-gradient py-20 relative overflow-hidden dark:bg-black">
    <div class="absolute top-0 right-0 w-40 h-40 transform rotate-45 translate-x-20 -translate-y-20 bg-primary opacity-10"></div>
    <div class="absolute bottom-0 left-0 w-40 h-40 transform rotate-45 -translate-x-20 translate-y-20 bg-primary opacity-10"></div>
    <div class="container mx-auto px-4 md:px-6 text-center">
        <h1 class="text-5xl md:text-6xl font-bold text-secondary mb-4">ZRLOG</h1>
        <p class="text-xl md:text-2xl text-white mb-10">专业的 Java 开源博客系统</p>
        <div class="flex flex-col sm:flex-row justify-center gap-4">
            <a href="https://demo.zrlog.com?ref=index" class="bg-primary hover:bg-primary/90 text-white py-3 px-8 !rounded-button whitespace-nowrap transition-colors">
                <i class="ri-play-circle-line mr-2"></i>在线体验
            </a>

            <a style="display: flex;align-items: center;justify-content: center;" type="button"
                    class="bg-white hover:bg-gray-100 text-gray-800 py-3 px-8 !rounded-button whitespace-nowrap transition-colors flex items-center" href="/download">
                <i class="ri-download-line mr-2"></i>
                <span style="font-weight: 500">立即下载</span>
                <i class="ri-arrow-down-s-line ml-2"></i>
            </a>
        </div>
    </div>
</section>
<!-- 核心特性 -->
<section class="py-16 bg-white dark:bg-black">
    <div class="container mx-auto px-4 md:px-6 text-center">
        <div class="flex justify-center gap-8 mb-10">
            <div class="text-blue-500 text-4xl font-bold">免费</div>
            <div class="text-yellow-500 text-4xl font-bold">开源</div>
            <div class="text-red-500 text-4xl font-bold">易用</div>
        </div>

        <#include "include/star.ftl">

        <p class="text-gray-700 max-w-4xl mx-auto leading-relaxed text-xl dark:text-gray-400" style="line-height: 2">
            ZrLog 是使用 Java 开发的博客程序，具有简约的、易用的、组件化的、内存占用低等特点。
            <br/>
            Markdown 编辑器，让更多的精力放在写作上，而不是花费大量时间在学习程序的使用上。
        </p>
    </div>
</section>

<!-- 产品预览 -->
<section class="py-12 bg-gray-50 dark:bg-black">
    <div class="container mx-auto px-4">
        <div class="carousel-container max-w-5xl mx-auto relative">
            <#list indexImgList as img>
                <div class="carousel-slide <#if img?index == 0> active</#if>">
                    <div class="relative">
                        <img
                                src="${img}"
                                alt="ZRLOG 界面预览"
                                class="w-full h-auto rounded-lg shadow-xl"
                        />
                    </div>
                </div>
            </#list>
            <button
                    class="absolute left-4 top-1/2 -translate-y-1/2 bg-white/80 hover:bg-white text-gray-800 w-10 h-10 rounded-full flex items-center justify-center shadow-md z-10"
                    onclick="changeSlide(-1)"
            >
                <i class="ri-arrow-left-s-line text-xl"></i>
            </button>
            <button
                    class="absolute right-4 top-1/2 -translate-y-1/2 bg-white/80 hover:bg-white text-gray-800 w-10 h-10 rounded-full flex items-center justify-center shadow-md z-10"
                    onclick="changeSlide(1)"
            >
                <i class="ri-arrow-right-s-line text-xl"></i>
            </button>

            <div class="flex justify-center mt-4 gap-2">
                <button
                        class="w-3 h-3 rounded-full bg-primary"
                        onclick="currentSlide(0)"
                ></button>
                <button
                        class="w-3 h-3 rounded-full bg-gray-300"
                        onclick="currentSlide(1)"
                ></button>
                <button
                        class="w-3 h-3 rounded-full bg-gray-300"
                        onclick="currentSlide(2)"
                ></button>
                <button
                        class="w-3 h-3 rounded-full bg-gray-300"
                        onclick="currentSlide(3)"
                ></button>
            </div>
        </div>
    </div>
</section>

<!-- 功能特性 -->
<section class="py-16 bg-gray-50 dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <h2 class="text-3xl font-bold text-center mb-12">强大功能特性</h2>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            <!-- 特性卡片 1 -->
            <div class="bg-white dark:bg-gray-900 dark:text-white p-6 !rounded-lg shadow-md hover:shadow-lg transition-all duration-300 feature-card">
                <div class="w-12 h-12 bg-blue-100 !rounded-lg flex items-center justify-center mb-4">
                    <i class="ri-edit-box-line text-blue-600 ri-xl"></i>
                </div>
                <h3 class="text-xl font-semibold mb-3">博客日志管理</h3>
                <p class="text-gray-600 dark:text-gray-200">提供分类、标签、评论的管理功能，让您的博客内容井然有序。</p>
            </div>

            <!-- 特性卡片 2 -->
            <div class="bg-white dark:bg-gray-900 dark:text-white p-6 !rounded-lg shadow-md hover:shadow-lg transition-all duration-300 feature-card">
                <div class="w-12 h-12 bg-green-100 !rounded-lg flex items-center justify-center mb-4">
                    <i class="ri-palette-line text-green-600 ri-xl"></i>
                </div>
                <h3 class="text-xl font-semibold mb-3">主题支持</h3>
                <p class="text-gray-600 dark:text-gray-200">支持模板解析，如同搭积木一样构建您的个性化博客主题。</p>
            </div>

            <!-- 特性卡片 3 -->
            <div class="bg-white dark:bg-gray-900 dark:text-white p-6 !rounded-lg shadow-md hover:shadow-lg transition-all duration-300 feature-card">
                <div class="w-12 h-12 bg-purple-100 !rounded-lg flex items-center justify-center mb-4">
                    <i class="ri-plug-line text-purple-600 ri-xl"></i>
                </div>
                <h3 class="text-xl font-semibold mb-3">插件系统</h3>
                <p class="text-gray-600 dark:text-gray-200">高度可定制的主题功能，如何制作一套主题详见文档。</p>
            </div>

            <!-- 特性卡片 4 -->
            <div class="bg-white dark:bg-gray-900 dark:text-white p-6 !rounded-lg shadow-md hover:shadow-lg transition-all duration-300 feature-card">
                <div class="w-12 h-12 bg-red-100 !rounded-lg flex items-center justify-center mb-4">
                    <i class="ri-message-3-line text-red-600 ri-xl"></i>
                </div>
                <h3 class="text-xl font-semibold mb-3">第三方评论支持</h3>
                <p class="text-gray-600 dark:text-gray-200">集成多种第三方评论系统，让您的博客互动性更强。</p>
            </div>

            <!-- 特性卡片 5 -->
            <div class="bg-white dark:bg-gray-900 dark:text-white p-6 !rounded-lg shadow-md hover:shadow-lg transition-all duration-300 feature-card">
                <div class="w-12 h-12 bg-yellow-100 !rounded-lg flex items-center justify-center mb-4">
                    <i class="ri-markdown-line text-yellow-600 ri-xl"></i>
                </div>
                <h3 class="text-xl font-semibold mb-3">Markdown 编辑器</h3>
                <p class="text-gray-600 dark:text-gray-200">提供 markdown 主题的富文本编辑器，基于上传支持管理的编辑器插件。</p>
            </div>

            <!-- 特性卡片 6 -->
            <div class="bg-white dark:bg-gray-900 dark:text-white p-6 !rounded-lg shadow-md hover:shadow-lg transition-all duration-300 feature-card">
                <div class="w-12 h-12 bg-indigo-100 !rounded-lg flex items-center justify-center mb-4">
                    <i class="ri-speed-line text-indigo-600 ri-xl"></i>
                </div>
                <h3 class="text-xl font-semibold mb-3">页面静态化</h3>
                <p class="text-gray-600 dark:text-gray-200">页面静态化，缓存公共数据，可同设置更新。提升访问速度和性能。</p>
            </div>

            <!-- 特性卡片 7 -->
            <div class="bg-white dark:bg-gray-900 dark:text-white p-6 !rounded-lg shadow-md hover:shadow-lg transition-all duration-300 feature-card">
                <div class="w-12 h-12 bg-pink-100 !rounded-lg flex items-center justify-center mb-4">
                    <i class="ri-cloud-line text-pink-600 ri-xl"></i>
                </div>
                <h3 class="text-xl font-semibold mb-3">多种云存储支持</h3>
                <p class="text-gray-600 dark:text-gray-200">支持第三方云存储（默认七牛），让您的博客资源管理更灵活。</p>
            </div>

            <!-- 特性卡片 8 -->
            <div class="bg-white dark:bg-gray-900 dark:text-white p-6 !rounded-lg shadow-md hover:shadow-lg transition-all duration-300 feature-card">
                <div class="w-12 h-12 bg-orange-100 !rounded-lg flex items-center justify-center mb-4">
                    <i class="ri-global-line text-orange-600 ri-xl"></i>
                </div>
                <h3 class="text-xl font-semibold mb-3">多语言支持</h3>
                <p class="text-gray-600 dark:text-gray-200">支持数据库备份定时备份，让您的博客数据更安全。</p>
            </div>

            <!-- 特性卡片 9 -->
            <div class="bg-white dark:bg-gray-900 dark:text-white p-6 !rounded-lg shadow-md hover:shadow-lg transition-all duration-300 feature-card">
                <div class="w-12 h-12 bg-teal-100 !rounded-lg flex items-center justify-center mb-4">
                    <i class="ri-device-line text-teal-600 ri-xl"></i>
                </div>
                <h3 class="text-xl font-semibold mb-3">响应式设计</h3>
                <p class="text-gray-600 dark:text-gray-200">在线更新升级，让您的博客系统始终保持最新状态。</p>
            </div>
        </div>

        <div class="text-center mt-12">
            <a href="#" class="text-primary hover:text-primary/80 flex items-center justify-center">
                <span>查看更多功能</span>
                <i class="ri-arrow-right-line ml-1"></i>
            </a>
        </div>
    </div>
</section>
<script>
    // 轮播图功能
    let slideIndex = 0;
    const slides = document.querySelectorAll(".carousel-slide");

    function showSlides() {
        for (let i = 0; i < slides.length; i++) {
            slides[i].classList.remove("active");
        }
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
</script>
<#include "include/footer.ftl"/>