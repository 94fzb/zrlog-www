<section class="py-16 bg-gray-50 dark:bg-black">
    <div class="container mx-auto px-4 md:px-6" id="version">
        <div class="bg-white dark:bg-gray-900 rounded-lg shadow-md overflow-hidden">
            <div class="grid grid-cols-1 lg:grid-cols-3 gap-0">
                <!-- 左侧：版本信息 -->
                <div class="lg:col-span-1 bg-gradient-to-br from-blue-50 to-indigo-50 dark:from-gray-800 dark:to-gray-900 p-8 border-r border-gray-200 dark:border-gray-700">
                    <div class="mb-6">
                        <div class="flex items-center gap-2 mb-2">
                            <i class="ri-price-tag-3-line text-blue-600 dark:text-blue-400 text-xl"></i>
                            <span class="text-sm text-gray-600 dark:text-gray-400">最新版本</span>
                        </div>
                        <h3 class="text-3xl font-bold text-gray-900 dark:text-white mb-4">
                            v${last.version}
                        </h3>
                        <div class="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
                            <i class="ri-calendar-line"></i>
                            <span>${last.releaseDate}</span>
                        </div>
                    </div>

                    <div class="pt-6 border-t border-gray-200 dark:border-gray-700">
                        <h4 class="text-sm font-semibold text-gray-900 dark:text-white mb-3 flex items-center">
                            <i class="ri-file-list-3-line mr-2"></i>
                            变更日志
                        </h4>
                        <div class="space-y-3">
                            <#list last.changeLogs as changeLog>
                                <div class="text-sm text-gray-700 dark:text-gray-300 leading-relaxed whitespace-pre-line">
${changeLog}
                                </div>
                            </#list>
                        </div>
                    </div>
                </div>

                <!-- 右侧：下载选项 -->
                <div class="lg:col-span-2 p-8">
                    <!-- Docker 快速启动 -->
                    <div class="bg-gradient-to-r from-blue-50 to-indigo-50 dark:from-blue-900/20 dark:to-indigo-900/20 p-6 rounded-lg mb-6 border-2 border-blue-200 dark:border-blue-800">
                        <h4 class="text-lg font-semibold mb-2 flex items-center text-gray-900 dark:text-white">
                            <i class="ri-docker-line mr-2 text-blue-500 text-2xl"></i>
                            Docker 一键启动 
                            <span class="ml-2 text-xs bg-blue-500 text-white px-2 py-1 rounded">推荐</span>
                        </h4>
                        <p class="text-sm text-gray-600 dark:text-gray-300 mb-3">
                            一条命令，即刻开始
                        </p>
                        <div class="relative">
                            <pre class="bg-gray-900 text-green-400 p-4 rounded-lg overflow-x-auto text-sm font-mono"><code id="docker-cmd">docker run -d -p 8080:8080 -v $(pwd)/conf:/opt/zrlog/conf --name zrlog zrlog/zrlog:${last.version}</code></pre>
                            <button onclick="copyDockerCmd()" class="absolute top-2 right-2 bg-blue-500 hover:bg-blue-600 text-white px-3 py-1.5 rounded text-sm transition-colors flex items-center gap-2">
                                <i class="ri-file-copy-line"></i>
                                <span id="copy-btn-text">复制</span>
                            </button>
                        </div>
                        <div class="mt-3 text-xs text-gray-500 dark:text-gray-400">
                            然后访问 <code class="bg-gray-200 dark:bg-gray-600 px-2 py-1 rounded">http://localhost:8080</code>
                        </div>
                    </div>
                    
                    <!-- 其他下载选项 -->
                    <#include "download-file-btn.ftl">
                </div>
            </div>
        </div>
    </div>
</section>