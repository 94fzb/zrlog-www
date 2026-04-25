<#include "include/header.ftl"/>
<section class="relative py-32 md:py-40 overflow-hidden bg-white dark:bg-black transition-colors duration-500">
    <!-- 背景装饰 -->
    <div class="absolute inset-0 overflow-hidden pointer-events-none">
        <div class="absolute top-[-10%] right-[-10%] w-[50%] h-[50%] bg-blue-400/10 dark:bg-blue-600/5 rounded-full blur-[120px] animate-blob"></div>
        <div class="absolute bottom-[-10%] left-[-10%] w-[50%] h-[50%] bg-purple-400/10 dark:bg-purple-600/5 rounded-full blur-[120px] animate-blob animation-delay-4000"></div>
    </div>
    
    <!-- 内容 -->
    <div class="container mx-auto px-4 md:px-6 relative z-10 text-center">
        <div class="max-w-2xl mx-auto bg-white/50 dark:bg-gray-900/50 backdrop-blur-xl border border-gray-200 dark:border-gray-800 p-10 rounded-3xl shadow-2xl">
            <div class="w-20 h-20 mx-auto bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center mb-6">
                <i class="ri-checkbox-circle-fill text-5xl text-green-500"></i>
            </div>
            <h1 class="text-4xl md:text-5xl font-black mb-4 tracking-tight text-gray-900 dark:text-white">
                感谢下载 ZrLog
            </h1>
            <p class="text-lg text-gray-600 dark:text-gray-400 mb-8">
                您正在下载的版本是 <span class="font-bold text-blue-600 dark:text-blue-400">${platform!}</span>。<br/>
                您的下载将在几秒钟后自动开始。
            </p>
            
            <div class="p-4 bg-blue-50 dark:bg-blue-900/20 rounded-2xl mb-8">
                <p class="text-sm text-gray-600 dark:text-gray-400">
                    如果下载没有自动开始，或者您希望使用其他下载软件（如 IDM、迅雷等），请点击下方按钮或右键复制链接地址。
                </p>
            </div>

            <div class="flex flex-col sm:flex-row gap-4 justify-center">
                <a href="${downloadUrl!}" class="inline-flex items-center justify-center bg-blue-600 text-white hover:bg-blue-700 py-3 px-8 rounded-xl font-bold transition-all shadow-lg shadow-blue-600/25 active:scale-95">
                    <i class="ri-download-cloud-2-line mr-2 text-xl"></i>
                    立即手动下载
                </a>
                <a href="https://blog.zrlog.com/run-zrlog-in-docker.html" target="_blank"
                   class="inline-flex items-center justify-center bg-white dark:bg-gray-800 text-gray-900 dark:text-white hover:border-blue-400 dark:hover:border-blue-500 border-2 border-gray-100 dark:border-gray-700 py-3 px-8 rounded-xl font-bold transition-all active:scale-95">
                    <i class="ri-book-read-line mr-2 text-xl"></i>
                    阅读部署手册
                </a>
            </div>
        </div>
    </div>
</section>

<script>
    // Automatically start the download after 1.5 seconds
    setTimeout(function() {
        if ("${downloadUrl!}" !== "") {
            window.location.href = "${downloadUrl!}";
        }
    }, 1500);
</script>

<#include "include/footer.ftl"/>
