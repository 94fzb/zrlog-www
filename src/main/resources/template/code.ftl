<#include "include/header.ftl"/>
<#include "_code/header.ftl"/>

<!-- 仓库信息 -->
<section class="py-16 bg-gray-50 dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <div class="max-w-5xl mx-auto">
            <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 dark:text-white mb-12">代码仓库</h2>
            
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">
                <!-- GitHub 卡片 -->
                <div class="bg-white dark:bg-gray-900 rounded-xl shadow-sm border border-gray-200 dark:border-gray-700 overflow-hidden">
                    <div class="p-6 border-b border-gray-200 dark:border-gray-700">
                        <div class="flex items-center justify-between">
                            <div class="flex items-center gap-3">
                                <i class="ri-github-fill text-3xl text-gray-900 dark:text-white"></i>
                                <h3 class="text-xl font-bold text-gray-900 dark:text-white">GitHub</h3>
                            </div>
                            <a href="https://github.com/94fzb/zrlog" target="_blank"
                               class="text-blue-600 dark:text-blue-400 hover:text-blue-700 dark:hover:text-blue-300 transition-colors">
                                <i class="ri-external-link-line text-xl"></i>
                            </a>
                        </div>
                    </div>
                    <div class="p-6">
                        <div id="github-widget" class="min-h-[120px]">
                            <div class="github-widget-repo" data-repo="94fzb/zrlog"></div>
                            <script type="text/javascript" src="/assets/js/github_repo_widget_en.js"></script>
                        </div>
                    </div>
                </div>

                <!-- Gitee 卡片 -->
                <div class="bg-white dark:bg-gray-900 rounded-xl shadow-sm border border-gray-200 dark:border-gray-700 overflow-hidden">
                    <div class="p-6 border-b border-gray-200 dark:border-gray-700">
                        <div class="flex items-center justify-between">
                            <div class="flex items-center gap-3">
                                <svg viewBox="0 0 1024 1024" class="w-8 h-8 fill-[#c71d23]" xmlns="http://www.w3.org/2000/svg"><path d="M512 1024C230.4 1024 0 793.6 0 512S230.4 0 512 0s512 230.4 512 512-230.4 512-512 512z m259.2-569.6H502.4q-19.2 0-19.2 19.2v64q0 19.2 19.2 19.2h160q19.2 0 19.2 19.2v64q0 19.2-19.2 19.2H425.6q-19.2 0-19.2-19.2v-217.6q0-19.2 19.2-19.2h345.6q19.2 0 19.2-19.2v-64q0-19.2-19.2-19.2H342.4q-44.8 0-44.8 44.8v339.2q0 44.8 44.8 44.8h428.8q44.8 0 44.8-44.8v-112q0-44.8-44.8-44.8z"/></svg>
                                <h3 class="text-xl font-bold text-gray-900 dark:text-white">Gitee</h3>
                            </div>
                            <a href="https://gitee.com/94fzb/zrlog" target="_blank"
                               class="text-blue-600 dark:text-blue-400 hover:text-blue-700 dark:hover:text-blue-300 transition-colors">
                                <i class="ri-external-link-line text-xl"></i>
                            </a>
                        </div>
                    </div>
                    <div class="p-6">
                        <div id="osc-gitee-widget-tag" class="min-h-[120px]"></div>
                        <script src='https://gitee.com/94fzb/zrlog/widget_preview' async defer></script>
                    </div>
                </div>
            </div>

            <!-- Star 按钮区域 -->
            <div class="mt-12 bg-gradient-to-r from-blue-50 to-indigo-50 dark:from-blue-900/20 dark:to-indigo-900/20 rounded-xl p-8 border border-blue-200 dark:border-blue-800">
                <div class="text-center mb-6">
                    <h3 class="text-2xl font-bold text-gray-900 dark:text-white mb-2">支持 ZrLog</h3>
                    <p class="text-gray-600 dark:text-gray-400">如果 ZrLog 对您有帮助，请给我们一个 Star ⭐</p>
                </div>
                <div class="flex flex-wrap gap-4 justify-center">
                    <#include "include/star.ftl">
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 项目特性 -->
<section class="py-16 bg-white dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <div class="max-w-5xl mx-auto">
            <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 dark:text-white mb-4">项目特性</h2>
            <p class="text-center text-gray-600 dark:text-gray-400 mb-12">为什么选择 ZrLog</p>
            
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                <!-- 特性1 -->
                <div class="bg-gradient-to-br from-blue-50 to-indigo-50 dark:from-blue-900/20 dark:to-indigo-900/20 rounded-xl p-6 border border-blue-200 dark:border-blue-800">
                    <div class="w-12 h-12 bg-blue-600 rounded-lg flex items-center justify-center mb-4">
                        <i class="ri-rocket-line text-2xl text-white"></i>
                    </div>
                    <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-2">轻量高效</h3>
                    <p class="text-sm text-gray-600 dark:text-gray-400">
                        使用 GraalVM Native Image 编译，启动速度快，内存占用低，性能卓越
                    </p>
                </div>

                <!-- 特性2 -->
                <div class="bg-gradient-to-br from-green-50 to-emerald-50 dark:from-green-900/20 dark:to-emerald-900/20 rounded-xl p-6 border border-green-200 dark:border-green-800">
                    <div class="w-12 h-12 bg-green-600 rounded-lg flex items-center justify-center mb-4">
                        <i class="ri-cloud-line text-2xl text-white"></i>
                    </div>
                    <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-2">云原生支持</h3>
                    <p class="text-sm text-gray-600 dark:text-gray-400">
                        支持 Docker、Serverless（AWS Lambda、阿里云FC）等现代化部署方式
                    </p>
                </div>

                <!-- 特性3 -->
                <div class="bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-900/20 dark:to-pink-900/20 rounded-xl p-6 border border-purple-200 dark:border-purple-800">
                    <div class="w-12 h-12 bg-purple-600 rounded-lg flex items-center justify-center mb-4">
                        <i class="ri-palette-line text-2xl text-white"></i>
                    </div>
                    <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-2">灵活扩展</h3>
                    <p class="text-sm text-gray-600 dark:text-gray-400">
                        支持主题和插件系统，可根据需求自由定制博客外观和功能
                    </p>
                </div>

                <!-- 特性4 -->
                <div class="bg-gradient-to-br from-orange-50 to-red-50 dark:from-orange-900/20 dark:to-red-900/20 rounded-xl p-6 border border-orange-200 dark:border-orange-800">
                    <div class="w-12 h-12 bg-orange-600 rounded-lg flex items-center justify-center mb-4">
                        <i class="ri-markdown-line text-2xl text-white"></i>
                    </div>
                    <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-2">Markdown 支持</h3>
                    <p class="text-sm text-gray-600 dark:text-gray-400">
                        内置 Markdown 编辑器，支持实时预览，让写作更加专注和高效
                    </p>
                </div>

                <!-- 特性5 -->
                <div class="bg-gradient-to-br from-cyan-50 to-blue-50 dark:from-cyan-900/20 dark:to-blue-900/20 rounded-xl p-6 border border-cyan-200 dark:border-cyan-800">
                    <div class="w-12 h-12 bg-cyan-600 rounded-lg flex items-center justify-center mb-4">
                        <i class="ri-code-box-line text-2xl text-white"></i>
                    </div>
                    <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-2">简洁代码</h3>
                    <p class="text-sm text-gray-600 dark:text-gray-400">
                        代码结构清晰，易于理解和二次开发，完善的文档支持
                    </p>
                </div>

                <!-- 特性6 -->
                <div class="bg-gradient-to-br from-yellow-50 to-orange-50 dark:from-yellow-900/20 dark:to-orange-900/20 rounded-xl p-6 border border-yellow-200 dark:border-yellow-800">
                    <div class="w-12 h-12 bg-yellow-600 rounded-lg flex items-center justify-center mb-4">
                        <i class="ri-open-source-line text-2xl text-white"></i>
                    </div>
                    <h3 class="text-lg font-bold text-gray-900 dark:text-white mb-2">开源免费</h3>
                    <p class="text-sm text-gray-600 dark:text-gray-400">
                        采用 Apache License 2.0，完全开源免费，可用于个人和商业项目
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 技术栈 -->
<section class="py-16 bg-gray-50 dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <div class="max-w-6xl mx-auto">
            <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 dark:text-white mb-4">技术栈</h2>
            <p class="text-center text-gray-600 dark:text-gray-400 mb-12">构建超轻量级博客系统的核心技术</p>
            
            <!-- 核心技术大卡片 -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
                <!-- SimpleWebServer -->
                <div class="bg-gradient-to-br from-blue-500 to-indigo-600 rounded-2xl p-8 text-white relative overflow-hidden group hover:scale-105 transition-transform">
                    <div class="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full -translate-y-16 translate-x-16"></div>
                    <div class="relative">
                        <div class="w-16 h-16 bg-white/20 backdrop-blur-sm rounded-xl flex items-center justify-center mb-4">
                            <i class="ri-global-line text-4xl"></i>
                        </div>
                        <h3 class="text-2xl font-bold mb-2">SimpleWebServer</h3>
                        <p class="text-blue-100 text-sm mb-3">超轻量级 Web 框架</p>
                        <div class="flex items-center gap-2 text-sm">
                            <span class="px-2 py-1 bg-white/20 rounded">核心框架</span>
                        </div>
                    </div>
                </div>

                <!-- GraalVM -->
                <div class="bg-gradient-to-br from-purple-500 to-pink-600 rounded-2xl p-8 text-white relative overflow-hidden group hover:scale-105 transition-transform">
                    <div class="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full -translate-y-16 translate-x-16"></div>
                    <div class="relative">
                        <div class="w-16 h-16 bg-white/20 backdrop-blur-sm rounded-xl flex items-center justify-center mb-4">
                            <i class="ri-flashlight-line text-4xl"></i>
                        </div>
                        <h3 class="text-2xl font-bold mb-2">GraalVM</h3>
                        <p class="text-purple-100 text-sm mb-3">Polyglot + Native Image</p>
                        <div class="flex items-center gap-2 text-sm">
                            <span class="px-2 py-1 bg-white/20 rounded">高性能</span>
                        </div>
                    </div>
                </div>

                <!-- React + Ant Design -->
                <div class="bg-gradient-to-br from-cyan-500 to-blue-600 rounded-2xl p-8 text-white relative overflow-hidden group hover:scale-105 transition-transform">
                    <div class="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full -translate-y-16 translate-x-16"></div>
                    <div class="relative">
                        <div class="w-16 h-16 bg-white/20 backdrop-blur-sm rounded-xl flex items-center justify-center mb-4">
                            <i class="ri-reactjs-line text-4xl"></i>
                        </div>
                        <h3 class="text-2xl font-bold mb-2">React + Ant Design</h3>
                        <p class="text-cyan-100 text-sm mb-3">现代化管理后台</p>
                        <div class="flex items-center gap-2 text-sm">
                            <span class="px-2 py-1 bg-white/20 rounded">后台UI</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 辅助技术 -->
            <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-orange-400 dark:hover:border-orange-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-orange-400 to-red-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-cup-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">Java 17+</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">核心语言</p>
                </div>

                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-green-400 dark:hover:border-green-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-green-400 to-emerald-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-file-text-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">FreeMarker</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">模板引擎</p>
                </div>

                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-blue-400 dark:hover:border-blue-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-blue-400 to-indigo-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-database-2-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">D1 / MySQL</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">灵活的数据库支持</p>
                </div>

                <div class="bg-white dark:bg-gray-900 rounded-xl p-4 border border-gray-200 dark:border-gray-700 text-center hover:border-yellow-400 dark:hover:border-yellow-600 transition-colors">
                    <div class="w-12 h-12 mx-auto bg-gradient-to-br from-yellow-400 to-orange-500 rounded-lg flex items-center justify-center mb-3">
                        <i class="ri-palette-line text-2xl text-white"></i>
                    </div>
                    <h4 class="font-semibold text-gray-900 dark:text-white text-sm">多模板</h4>
                    <p class="text-xs text-gray-500 dark:text-gray-400 mt-1">主题系统</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 如何贡献 -->
<section class="py-16 bg-white dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <div class="max-w-5xl mx-auto">
            <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 dark:text-white mb-4">如何贡献</h2>
            <p class="text-center text-gray-600 dark:text-gray-400 mb-12">欢迎参与 ZrLog 的开发</p>
            
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                <!-- 左侧：贡献步骤 -->
                <div>
                    <div class="space-y-6">
                        <div class="flex gap-4">
                            <div class="flex-shrink-0 w-10 h-10 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">
                                1
                            </div>
                            <div>
                                <h3 class="text-lg font-semibold text-gray-900 dark:text-white mb-2">Fork 项目</h3>
                                <p class="text-sm text-gray-600 dark:text-gray-400">
                                    Fork 我们的仓库到您的 GitHub 或 Gitee 账号
                                </p>
                            </div>
                        </div>

                        <div class="flex gap-4">
                            <div class="flex-shrink-0 w-10 h-10 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">
                                2
                            </div>
                            <div>
                                <h3 class="text-lg font-semibold text-gray-900 dark:text-white mb-2">创建分支</h3>
                                <p class="text-sm text-gray-600 dark:text-gray-400">
                                    基于 <code class="px-2 py-0.5 bg-gray-100 dark:bg-gray-800 rounded text-xs">develop</code> 分支创建您的功能分支
                                </p>
                            </div>
                        </div>

                        <div class="flex gap-4">
                            <div class="flex-shrink-0 w-10 h-10 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">
                                3
                            </div>
                            <div>
                                <h3 class="text-lg font-semibold text-gray-900 dark:text-white mb-2">提交代码</h3>
                                <p class="text-sm text-gray-600 dark:text-gray-400">
                                    完成开发并确保代码质量，提交有意义的 commit 信息
                                </p>
                            </div>
                        </div>

                        <div class="flex gap-4">
                            <div class="flex-shrink-0 w-10 h-10 bg-blue-600 text-white rounded-full flex items-center justify-center font-bold">
                                4
                            </div>
                            <div>
                                <h3 class="text-lg font-semibold text-gray-900 dark:text-white mb-2">提交 PR</h3>
                                <p class="text-sm text-gray-600 dark:text-gray-400">
                                    提交 Pull Request，我们会尽快审核您的贡献
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 右侧：其他贡献方式 -->
                <div>
                    <div class="bg-gradient-to-br from-blue-50 to-indigo-50 dark:from-blue-900/20 dark:to-indigo-900/20 rounded-xl p-6 border border-blue-200 dark:border-blue-800">
                        <h3 class="text-xl font-bold text-gray-900 dark:text-white mb-4">其他贡献方式</h3>
                        <ul class="space-y-3">
                            <li class="flex items-start gap-3">
                                <i class="ri-bug-line text-red-500 text-xl mt-0.5"></i>
                                <div>
                                    <h4 class="font-semibold text-gray-900 dark:text-white">提交 Bug</h4>
                                    <p class="text-sm text-gray-600 dark:text-gray-400">在 GitHub Issues 中报告问题</p>
                                </div>
                            </li>
                            <li class="flex items-start gap-3">
                                <i class="ri-lightbulb-line text-yellow-500 text-xl mt-0.5"></i>
                                <div>
                                    <h4 class="font-semibold text-gray-900 dark:text-white">功能建议</h4>
                                    <p class="text-sm text-gray-600 dark:text-gray-400">分享您的想法和建议</p>
                                </div>
                            </li>
                            <li class="flex items-start gap-3">
                                <i class="ri-file-text-line text-blue-500 text-xl mt-0.5"></i>
                                <div>
                                    <h4 class="font-semibold text-gray-900 dark:text-white">完善文档</h4>
                                    <p class="text-sm text-gray-600 dark:text-gray-400">帮助改进项目文档</p>
                                </div>
                            </li>
                            <li class="flex items-start gap-3">
                                <i class="ri-chat-3-line text-green-500 text-xl mt-0.5"></i>
                                <div>
                                    <h4 class="font-semibold text-gray-900 dark:text-white">社区支持</h4>
                                    <p class="text-sm text-gray-600 dark:text-gray-400">在社区帮助其他用户</p>
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div class="mt-6 text-center">
                        <a href="https://blog.zrlog.com/for-developer.html" target="_blank"
                           class="inline-flex items-center gap-2 px-6 py-3 bg-blue-600 hover:bg-blue-700 text-white font-medium rounded-lg transition-colors">
                            <i class="ri-book-2-line"></i>
                            <span>查看开发文档</span>
                            <i class="ri-arrow-right-line"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 捐赠区域 -->
<#include "donation.ftl"/>

<style>
    /* 简化的第三方组件样式覆盖 */
    #osc-gitee-widget-tag, .github-widget-repo {
        padding: 0;
    }
    
    .osc_git_box, .github-box {
        background-color: transparent !important;
        border: none !important;
    }
    
    .osc_git_title, .github-box-title {
        background-color: transparent !important;
        border-radius: 0 !important;
    }
    
    .osc_git_footer, .github-box-download {
        display: none;
    }
</style>

<#include "include/footer.ftl"/>
