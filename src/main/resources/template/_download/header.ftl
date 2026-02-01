<!-- 英雄区 -->
<section class="relative py-32 md:py-40 overflow-hidden bg-white dark:bg-black transition-colors duration-500">
    <!-- 背景装饰 -->
    <div class="absolute inset-0 overflow-hidden pointer-events-none">
        <div class="absolute top-[-10%] right-[-10%] w-[50%] h-[50%] bg-blue-400/10 dark:bg-blue-600/5 rounded-full blur-[120px] animate-blob"></div>
        <div class="absolute bottom-[-10%] left-[-10%] w-[50%] h-[50%] bg-purple-400/10 dark:bg-purple-600/5 rounded-full blur-[120px] animate-blob animation-delay-4000"></div>
    </div>
    
    <!-- 内容 -->
    <div class="container mx-auto px-4 md:px-6 relative z-10">
        <div class="max-w-4xl mx-auto text-center">
            <div class="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-blue-50 dark:bg-blue-900/30 border border-blue-100 dark:border-blue-800 mb-6 font-medium text-xs text-blue-600 dark:text-blue-400 tracking-wider">
                <i class="ri-rocket-2-line"></i>
                最新版本: ${last.version}
            </div>
            <h1 class="text-5xl md:text-7xl font-black mb-6 tracking-tighter text-gray-900 dark:text-white">
                下载 <span class="text-blue-600">ZrLog</span>
            </h1>
            <p class="text-xl text-gray-600 dark:text-gray-400 mb-10 max-w-2xl mx-auto font-medium">
                开始您的专业博客之旅，享受飞一般的创作体验
            </p>
            <div class="flex flex-col sm:flex-row gap-4 justify-center">
                <a href="#version" class="inline-flex items-center justify-center bg-blue-600 text-white hover:bg-blue-700 py-3.5 px-10 rounded-2xl font-bold transition-all shadow-xl shadow-blue-600/25 active:scale-95">
                    <i class="ri-download-cloud-line mr-2 text-xl"></i>
                    立即下载
                </a>
                <a href="https://blog.zrlog.com/run-zrlog-in-docker.html" target="_blank"
                   class="inline-flex items-center justify-center bg-white dark:bg-gray-800 text-gray-900 dark:text-white hover:border-blue-400 dark:hover:border-blue-500 border-2 border-gray-100 dark:border-gray-700 py-3.5 px-10 rounded-2xl font-bold transition-all active:scale-95">
                    <i class="ri-book-read-line mr-2 text-xl"></i>
                    部署手册
                </a>
            </div>
        </div>
    </div>
</section>