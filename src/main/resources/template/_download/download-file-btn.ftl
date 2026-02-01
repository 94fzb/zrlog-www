<div class="mt-8">
    <h4 class="text-lg font-semibold mb-6 text-gray-900 dark:text-white">选择适合您的平台</h4>
    
    <!-- Serverless / FaaS -->
    <div class="mb-8">
        <h5 class="text-sm font-medium text-gray-700 dark:text-gray-300 mb-3 flex items-center">
            <i class="ri-cloud-windy-line mr-2 text-purple-500"></i>
            Serverless / FaaS
        </h5>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-3">
            <a href="${last.linuxAmd64FaaSDownloadUrl}" 
               class="flex items-center justify-between p-4 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg hover:border-purple-400 hover:bg-purple-50 dark:hover:bg-purple-900/20 transition-all group">
                <div class="flex items-center gap-3">
                    <i class="ri-cpu-line text-2xl text-gray-400 group-hover:text-purple-500"></i>
                    <div>
                        <div class="font-medium text-gray-900 dark:text-white">Linux AMD64 FaaS</div>
                        <div class="text-xs text-gray-500">AWS Lambda / FC</div>
                    </div>
                </div>
                <i class="ri-download-2-line text-gray-400 group-hover:text-purple-500"></i>
            </a>
            
            <a href="${last.linuxArm64FaaSDownloadUrl}" 
               class="flex items-center justify-between p-4 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg hover:border-purple-400 hover:bg-purple-50 dark:hover:bg-purple-900/20 transition-all group">
                <div class="flex items-center gap-3">
                    <i class="ri-cpu-line text-2xl text-gray-400 group-hover:text-purple-500"></i>
                    <div>
                        <div class="font-medium text-gray-900 dark:text-white">Linux ARM64 FaaS</div>
                        <div class="text-xs text-gray-500">AWS Lambda / FC</div>
                    </div>
                </div>
                <i class="ri-download-2-line text-gray-400 group-hover:text-purple-500"></i>
            </a>
        </div>
    </div>

    <!-- Linux -->
    <div class="mb-8">
        <h5 class="text-sm font-medium text-gray-700 dark:text-gray-300 mb-3 flex items-center">
            <i class="ri-terminal-box-line mr-2 text-blue-500"></i>
            Linux
        </h5>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-3">
            <a href="${last.linuxDownloadUrl}" 
               class="flex items-center justify-between p-4 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg hover:border-blue-400 hover:bg-blue-50 dark:hover:bg-blue-900/20 transition-all group">
                <div class="flex items-center gap-3">
                    <i class="ri-server-line text-2xl text-gray-400 group-hover:text-blue-500"></i>
                    <div>
                        <div class="font-medium text-gray-900 dark:text-white">Linux AMD64</div>
                        <div class="text-xs text-gray-500">.zip</div>
                    </div>
                </div>
                <i class="ri-download-2-line text-gray-400 group-hover:text-blue-500"></i>
            </a>
            
            <a href="${last.linuxArm64DownloadUrl}" 
               class="flex items-center justify-between p-4 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg hover:border-blue-400 hover:bg-blue-50 dark:hover:bg-blue-900/20 transition-all group">
                <div class="flex items-center gap-3">
                    <i class="ri-server-line text-2xl text-gray-400 group-hover:text-blue-500"></i>
                    <div>
                        <div class="font-medium text-gray-900 dark:text-white">Linux ARM64</div>
                        <div class="text-xs text-gray-500">RPi / LinDroid</div>
                    </div>
                </div>
                <i class="ri-download-2-line text-gray-400 group-hover:text-blue-500"></i>
            </a>
            
            <a href="${last.linuxDebDownloadUrl}" 
               class="flex items-center justify-between p-4 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg hover:border-blue-400 hover:bg-blue-50 dark:hover:bg-blue-900/20 transition-all group">
                <div class="flex items-center gap-3">
                    <i class="ri-ubuntu-line text-2xl text-gray-400 group-hover:text-blue-500"></i>
                    <div>
                        <div class="font-medium text-gray-900 dark:text-white">Debian/Ubuntu AMD64</div>
                        <div class="text-xs text-gray-500">.deb</div>
                    </div>
                </div>
                <i class="ri-download-2-line text-gray-400 group-hover:text-blue-500"></i>
            </a>
            
            <a href="${last.linuxDebArm64DownloadUrl}" 
               class="flex items-center justify-between p-4 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg hover:border-blue-400 hover:bg-blue-50 dark:hover:bg-blue-900/20 transition-all group">
                <div class="flex items-center gap-3">
                    <i class="ri-ubuntu-line text-2xl text-gray-400 group-hover:text-blue-500"></i>
                    <div>
                        <div class="font-medium text-gray-900 dark:text-white">Debian/Ubuntu ARM64</div>
                        <div class="text-xs text-gray-500">RPi / LinDroid</div>
                    </div>
                </div>
                <i class="ri-download-2-line text-gray-400 group-hover:text-blue-500"></i>
            </a>
        </div>
    </div>

    <!-- Desktop -->
    <div class="mb-8">
        <h5 class="text-sm font-medium text-gray-700 dark:text-gray-300 mb-3 flex items-center">
            <i class="ri-computer-line mr-2 text-green-500"></i>
            桌面系统
        </h5>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-3">
            <a href="${last.windowsDownloadUrl}" 
               class="flex items-center justify-between p-4 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg hover:border-green-400 hover:bg-green-50 dark:hover:bg-green-900/20 transition-all group">
                <div class="flex items-center gap-3">
                    <i class="ri-windows-line text-2xl text-gray-400 group-hover:text-green-500"></i>
                    <div>
                        <div class="font-medium text-gray-900 dark:text-white">Windows x86_64</div>
                        <div class="text-xs text-gray-500">.zip</div>
                    </div>
                </div>
                <i class="ri-download-2-line text-gray-400 group-hover:text-green-500"></i>
            </a>
            
            <a href="${last.macDownloadUrl}" 
               class="flex items-center justify-between p-4 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg hover:border-green-400 hover:bg-green-50 dark:hover:bg-green-900/20 transition-all group">
                <div class="flex items-center gap-3">
                    <i class="ri-apple-line text-2xl text-gray-400 group-hover:text-green-500"></i>
                    <div>
                        <div class="font-medium text-gray-900 dark:text-white">macOS Intel</div>
                        <div class="text-xs text-gray-500">.zip</div>
                    </div>
                </div>
                <i class="ri-download-2-line text-gray-400 group-hover:text-green-500"></i>
            </a>
            
            <a href="${last.macArmDownloadUrl}" 
               class="flex items-center justify-between p-4 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg hover:border-green-400 hover:bg-green-50 dark:hover:bg-green-900/20 transition-all group">
                <div class="flex items-center gap-3">
                    <i class="ri-apple-line text-2xl text-gray-400 group-hover:text-green-500"></i>
                    <div>
                        <div class="font-medium text-gray-900 dark:text-white">macOS Apple Silicon</div>
                        <div class="text-xs text-gray-500">.zip</div>
                    </div>
                </div>
                <i class="ri-download-2-line text-gray-400 group-hover:text-green-500"></i>
            </a>
        </div>
    </div>

    <!-- 通用 -->
    <div>
        <h5 class="text-sm font-medium text-gray-700 dark:text-gray-300 mb-3 flex items-center">
            <i class="ri-global-line mr-2 text-gray-500"></i>
            通用
        </h5>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-3">
            <a href="${last.downloadUrl}" 
               class="flex items-center justify-between p-4 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg hover:border-gray-400 hover:bg-gray-50 dark:hover:bg-gray-700 transition-all group">
                <div class="flex items-center gap-3">
                    <i class="ri-file-zip-line text-2xl text-gray-400 group-hover:text-gray-600"></i>
                    <div>
                        <div class="font-medium text-gray-900 dark:text-white">平台通用 ZIP</div>
                        <div class="text-xs text-gray-500">Java 11+</div>
                    </div>
                </div>
                <i class="ri-download-2-line text-gray-400 group-hover:text-gray-600"></i>
            </a>
            
            <a href="${last.warDownloadUrl}" 
               class="flex items-center justify-between p-4 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-lg hover:border-gray-400 hover:bg-gray-50 dark:hover:bg-gray-700 transition-all group">
                <div class="flex items-center gap-3">
                    <i class="ri-file-zip-line text-2xl text-gray-400 group-hover:text-gray-600"></i>
                    <div>
                        <div class="font-medium text-gray-900 dark:text-white">平台通用 WAR</div>
                        <div class="text-xs text-gray-500">Tomcat / Jetty</div>
                    </div>
                </div>
                <i class="ri-download-2-line text-gray-400 group-hover:text-gray-600"></i>
            </a>
        </div>
    </div>

    <!-- Docker 提示 -->
    <a href="https://gitee.com/94fzb/zrlog-docker" target="_blank" 
       class="mt-6 flex items-center justify-center gap-2 p-4 bg-gradient-to-r from-blue-50 to-indigo-50 dark:from-blue-900/20 dark:to-indigo-900/20 border-2 border-blue-200 dark:border-blue-800 rounded-lg hover:border-blue-400 transition-colors group">
        <i class="ri-docker-line text-2xl text-blue-600 dark:text-blue-400"></i>
        <span class="font-medium text-blue-900 dark:text-blue-100">Docker 部署文档</span>
        <i class="ri-arrow-right-line text-blue-600 dark:text-blue-400 group-hover:translate-x-1 transition-transform"></i>
    </a>
</div>