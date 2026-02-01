<#include "include/header.ftl"/>

<!-- 页面标题区 -->
<section class="relative bg-gradient-to-br from-gray-50 to-gray-100 dark:from-gray-900 dark:to-black py-16 overflow-hidden">
    <div class="absolute inset-0 bg-[linear-gradient(to_right,#8080800a_1px,transparent_1px),linear-gradient(to_bottom,#8080800a_1px,transparent_1px)] bg-[size:24px_24px]"></div>
    <div class="absolute top-0 right-0 w-96 h-96 bg-blue-50 dark:bg-blue-900/10 rounded-full blur-3xl -translate-y-1/2 translate-x-1/2 opacity-30"></div>
    <div class="absolute bottom-0 left-0 w-96 h-96 bg-indigo-50 dark:bg-indigo-900/10 rounded-full blur-3xl translate-y-1/2 -translate-x-1/2 opacity-30"></div>
    
    <div class="container mx-auto px-4 md:px-6 relative">
        <div class="max-w-4xl mx-auto text-center">
            <h1 class="text-4xl md:text-5xl font-bold text-gray-900 dark:text-white mb-4">变更记录</h1>
            <p class="text-xl text-gray-600 dark:text-gray-400 mb-8">
                完整记录 ZrLog 博客系统的版本迭代与功能演进
            </p>
            
            <!-- 项目简介卡片 -->
            <div class="bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-xl p-6 text-left shadow-sm">
                <div class="flex items-start gap-4">
                    <div class="w-12 h-12 bg-blue-50 dark:bg-blue-900/20 rounded-lg flex items-center justify-center flex-shrink-0">
                        <i class="ri-information-line text-2xl text-blue-600 dark:text-blue-400"></i>
                    </div>
                    <div>
                        <h2 class="text-lg font-semibold text-gray-900 dark:text-white mb-2">关于 ZrLog</h2>
                        <p class="text-gray-600 dark:text-gray-400 leading-relaxed">
                            ZrLog 是一个使用 Java 开发的博客/CMS 程序，具有简约、易用、组件化、内存占用低等特点。
                            自 2015 年以来，已经服务了上万个网站。
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- 变更记录内容 -->
<section class="py-16 bg-gray-50 dark:bg-black">
    <style>
        /* 标题样式 */
        .changelog-content h3 {
            font-size: 1.75rem;
            font-weight: 700;
            color: #1f2937;
            margin-top: 3rem;
            margin-bottom: 1.5rem;
            padding-bottom: 0.75rem;
            border-bottom: 2px solid #e5e7eb;
            position: relative;
        }
        
        .dark .changelog-content h3 {
            color: #f3f4f6;
            border-bottom-color: #374151;
        }
        
        .changelog-content h3:before {
            content: "#";
            color: #3b82f6;
            margin-right: 0.5rem;
            font-weight: 600;
        }
        
        .changelog-content h4 {
            font-size: 1.25rem;
            font-weight: 600;
            color: #374151;
            margin-top: 2rem;
            margin-bottom: 1rem;
        }
        
        .dark .changelog-content h4 {
            color: #d1d5db;
        }
        
        .changelog-content h4:before {
            content: "##";
            color: #6366f1;
            margin-right: 0.5rem;
            font-weight: 500;
        }
        
        /* 段落样式 */
        .changelog-content p {
            margin-bottom: 1rem;
            line-height: 1.75;
            color: #4b5563;
        }
        
        .dark .changelog-content p {
            color: #9ca3af;
        }
        
        /* 列表样式 */
        .changelog-content ul {
            margin: 1.5rem 0;
            padding-left: 0;
        }
        
        .changelog-content ul li {
            position: relative;
            padding-left: 1.75rem;
            margin-bottom: 0.75rem;
            line-height: 1.75;
            color: #4b5563;
        }
        
        .dark .changelog-content ul li {
            color: #9ca3af;
        }
        
        .changelog-content ul li:before {
            content: "•";
            position: absolute;
            left: 0.5rem;
            color: #3b82f6;
            font-weight: bold;
        }
        
        /* 分隔线 */
        .changelog-content hr {
            margin: 3rem 0;
            border: 0;
            border-top: 1px solid #e5e7eb;
        }
        
        .dark .changelog-content hr {
            border-top-color: #374151;
        }
        
        /* 链接样式 */
        .changelog-content a {
            color: #3b82f6;
            text-decoration: underline;
            text-decoration-color: #3b82f6;
            text-underline-offset: 2px;
            transition: all 0.2s;
        }
        
        .changelog-content a:hover {
            color: #2563eb;
            text-decoration-color: #2563eb;
        }
        
        /* 代码样式 */
        .changelog-content code {
            background: #f3f4f6;
            padding: 0.125rem 0.375rem;
            border-radius: 0.25rem;
            font-size: 0.875em;
            color: #e11d48;
        }
        
        .dark .changelog-content code {
            background: #374151;
            color: #fda4af;
        }
    </style>
    
    <div class="container mx-auto px-4 md:px-6">
        <div class="max-w-4xl mx-auto">
            <div class="bg-white dark:bg-gray-900 rounded-xl shadow-sm border border-gray-200 dark:border-gray-700 overflow-hidden">
                <div class="changelog-content p-8 md:p-12">
                    ${htmlStr}
                </div>
            </div>
        </div>
    </div>
</section>

<#include "include/footer.ftl">