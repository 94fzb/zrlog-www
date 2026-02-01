<!-- 运行环境 -->
<section class="py-16 bg-white dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <h2 class="text-3xl md:text-4xl font-bold mb-12 text-center">运行环境</h2>
        <div class="max-w-6xl mx-auto">
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                <!-- Docker 部署 (推荐) -->
                 <div class="bg-gradient-to-br from-blue-50 to-indigo-50 dark:from-blue-900/20 dark:to-indigo-900/20 rounded-lg p-6 border-2 border-blue-200 dark:border-blue-800">
                    <div class="flex items-center mb-4">
                        <i class="ri-docker-line text-3xl text-blue-600 dark:text-blue-400 mr-3"></i>
                        <div>
                            <h3 class="text-lg font-bold">Docker 部署 <span class="text-xs bg-blue-500 text-white px-1.5 py-0.5 rounded ml-1 align-middle">推荐</span></h3>
                            <p class="text-xs text-gray-600 dark:text-gray-400">最简单的部署方式</p>
                        </div>
                    </div>
                    <ul class="space-y-2 text-sm">
                        <li class="flex items-start">
                            <i class="ri-check-line text-green-600 dark:text-green-400 mt-0.5 mr-2"></i>
                            <span>Docker 环境</span>
                        </li>
                        <li class="flex items-start">
                            <i class="ri-check-line text-green-600 dark:text-green-400 mt-0.5 mr-2"></i>
                            <span>无需配置 Java</span>
                        </li>
                        <li class="flex items-start">
                            <i class="ri-check-line text-green-600 dark:text-green-400 mt-0.5 mr-2"></i>
                            <span>一条命令启动</span>
                        </li>
                    </ul>
                </div>

                <!-- Serverless 部署 (推荐) -->
                <div class="bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-900/20 dark:to-pink-900/20 rounded-lg p-6 border-2 border-purple-200 dark:border-purple-800">
                    <div class="flex items-center mb-4">
                        <i class="ri-cloud-windy-line text-3xl text-purple-600 dark:text-purple-400 mr-3"></i>
                        <div>
                            <h3 class="text-lg font-bold">Serverless <span class="text-xs bg-purple-500 text-white px-1.5 py-0.5 rounded ml-1 align-middle">推荐</span></h3>
                            <p class="text-xs text-gray-600 dark:text-gray-400">AWS Lambda / FC</p>
                        </div>
                    </div>
                    <ul class="space-y-2 text-sm">
                        <li class="flex items-start">
                            <i class="ri-check-line text-green-600 dark:text-green-400 mt-0.5 mr-2"></i>
                            <span>按需付费</span>
                        </li>
                        <li class="flex items-start">
                            <i class="ri-check-line text-green-600 dark:text-green-400 mt-0.5 mr-2"></i>
                            <span>自动扩缩容</span>
                        </li>
                        <li class="flex items-start">
                            <i class="ri-check-line text-green-600 dark:text-green-400 mt-0.5 mr-2"></i>
                            <span>零维护成本</span>
                        </li>
                    </ul>
                </div>

                <!-- 传统部署 -->
                <div class="bg-gray-50 dark:bg-gray-800 rounded-lg p-6 h-full">
                    <div class="flex items-center mb-4">
                        <i class="ri-server-line text-3xl text-gray-600 dark:text-gray-400 mr-3"></i>
                        <div>
                            <h3 class="text-lg font-bold">传统部署</h3>
                            <p class="text-xs text-gray-600 dark:text-gray-400">适合自定义环境</p>
                        </div>
                    </div>
                    <ul class="space-y-2 text-sm">
                        <li class="flex items-start">
                            <i class="ri-checkbox-blank-circle-fill text-gray-400 text-xs mt-1.5 mr-2"></i>
                            <span>JDK 11+</span>
                        </li>
                        <li class="flex items-start">
                            <i class="ri-checkbox-blank-circle-fill text-gray-400 text-xs mt-1.5 mr-2"></i>
                            <span>MySQL 5.6+ / MariaDB</span>
                        </li>
                        <li class="flex items-start">
                            <i class="ri-checkbox-blank-circle-fill text-gray-400 text-xs mt-1.5 mr-2"></i>
                            <span>Tomcat / Jetty 容器</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>