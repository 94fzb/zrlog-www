<footer class="bg-gray-900 text-white py-12" id="footer">
    <div class="container mx-auto px-4 md:px-6">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-8 mb-8">
            <div>
                <h3 class="text-lg font-semibold mb-4">关于 ZRLOG</h3>
                <p class="text-gray-400">ZRLOG 是一款使用 Java 开发的开源博客系统，专注于为用户提供简单、高效的博客写作体验。</p>
            </div>
            <div>
                <h3 class="text-lg font-semibold mb-4">快速链接</h3>
                <ul class="space-y-2">
                    <li><a href="/" class="text-gray-400 hover:text-white transition-colors">主页</a></li>
                    <li><a href="https://blog.zrlog.com" class="text-gray-400 hover:text-white transition-colors">博客</a></li>
                    <li><a href="/template" class="text-gray-400 hover:text-white transition-colors">主题</a></li>
                    <li><a href="/plugin" class="text-gray-400 hover:text-white transition-colors">插件</a></li>
                </ul>
            </div>
            <div>
                <h3 class="text-lg font-semibold mb-4">资源</h3>
                <ul class="space-y-2">
                    <li><a href="https://blog.zrlog.com/sort/doc" class="text-gray-400 hover:text-white transition-colors">文档</a></li>
                    <li><a href="https://blog.zrlog.com/faq-collect.html" class="text-gray-400 hover:text-white transition-colors">FAQ</a></li>
                    <li><a href="https://blog.zrlog.com/for-developer.html" class="text-gray-400 hover:text-white transition-colors">开发者</a></li>
                    <li><a href="#" class="text-gray-400 hover:text-white transition-colors">API</a></li>
                </ul>
            </div>
            <div>
                <h3 class="text-lg font-semibold mb-4">联系我们</h3>
                <ul class="space-y-2">
                    <li class="flex items-center">
                        <i class="ri-mail-line mr-2"></i>
                        <a href="mailto:support@zrlog.com" class="text-gray-400 hover:text-white transition-colors">support@zrlog.com</a>
                    </li>
                    <li class="flex items-center">
                        <i class="ri-github-fill mr-2"></i>
                        <a href="https://github.com/94fzb/zrlog" target="_blank" class="text-gray-400 hover:text-white transition-colors">GitHub</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="border-t border-gray-800 pt-8 flex flex-col md:flex-row justify-between items-center">
            <div class="text-gray-400 mb-4 md:mb-0">
                © 2025 ZrLog 博客程序 <a href="https://beian.miit.gov.cn/" class="text-gray-400 hover:text-white">蜀ICP备16023991号-1</a>
            </div>
            <#include "footer-links.ftl">
        </div>
    </div>
</footer>
<#include "statistcis.ftl">
</body>
</html>
