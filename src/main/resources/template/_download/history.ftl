<section class="py-16 bg-white dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <div class="max-w-5xl mx-auto">
            <!-- 标题 -->
            <div class="mb-8">
                <h2 class="text-3xl md:text-4xl font-bold text-gray-900 dark:text-white mb-2">历史版本</h2>
                <p class="text-gray-600 dark:text-gray-400">查看 ZrLog 的版本发布历史</p>
            </div>

            <!-- 版本列表 -->
            <div class="space-y-4">
                <#list downloads as download>
                    <div class="bg-gray-50 dark:bg-gray-900 rounded-lg p-6 border border-gray-200 dark:border-gray-700 hover:border-blue-400 dark:hover:border-blue-600 transition-all">
                        <div class="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
                            <!-- 左侧：版本信息 -->
                            <div class="flex-1">
                                <div class="flex items-center gap-3 mb-2">
                                    <h3 class="text-xl font-bold text-gray-900 dark:text-white">
                                        v${download.version}
                                    </h3>
                                    <span class="px-2 py-0.5 bg-blue-100 dark:bg-blue-900/30 text-blue-700 dark:text-blue-300 text-xs rounded">
                                        ${download.fileSize}
                                    </span>
                                </div>
                                <div class="flex items-center gap-4 text-sm text-gray-600 dark:text-gray-400 mb-3">
                                    <span class="flex items-center gap-1">
                                        <i class="ri-calendar-line"></i>
                                        ${download.releaseDate}
                                    </span>
                                </div>
                                <p class="text-sm text-gray-700 dark:text-gray-300">
                                    ${download.desc}
                                </p>
                            </div>

                            <!-- 右侧：下载按钮 -->
                            <div class="flex-shrink-0">
                                <a href="${download.downloadUrl}" 
                                   class="inline-flex items-center gap-2 px-6 py-2.5 bg-blue-600 hover:bg-blue-700 text-white font-medium rounded-lg transition-colors">
                                    <i class="ri-download-2-line"></i>
                                    <span>下载</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </#list>
            </div>

            <!-- 查看更多 -->
            <div class="mt-8 text-center">
                <a href="${url}/changelog/index.html?ref=downloadUrl"
                   class="inline-flex items-center gap-2 text-blue-600 dark:text-blue-400 hover:text-blue-700 dark:hover:text-blue-300 font-medium transition-colors group">
                    <span>查看更多历史版本</span>
                    <i class="ri-arrow-right-line group-hover:translate-x-1 transition-transform"></i>
                </a>
            </div>
        </div>
    </div>
</section>