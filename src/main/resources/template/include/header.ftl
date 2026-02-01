<!DOCTYPE html>
<html lang="zh">
<head>
    <title><#if pageInfo.entryTitle??>${pageInfo.entryTitle} - </#if>${pageInfo.title!''}</title>
    <meta name="description" content="${pageInfo.description!''}"/>
    <meta name="keywords" content="${pageInfo.keywords!''}"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    
    <!-- Open Graph / Social Media Meta Tags -->
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="${url}${request.uri}"/>
    <meta property="og:title" content="<#if pageInfo.entryTitle??>${pageInfo.entryTitle} - </#if>${pageInfo.title!'ZrLog - 专业的 Java 开源博客系统'}"/>
    <meta property="og:description" content="${pageInfo.description!'ZrLog 是使用 Java 开发的博客程序，具有简约、易用、组件化、内存占用低等特点。支持 Markdown 编辑器，让更多的精力放在写作上。'}"/>
    <meta property="og:image" content="${url}/assets/screenprint/post-detail.png"/>
    <meta property="og:site_name" content="ZrLog"/>
    
    <!-- Twitter Card Meta Tags -->
    <meta name="twitter:card" content="summary_large_image"/>
    <meta name="twitter:url" content="${url}${request.uri}"/>
    <meta name="twitter:title" content="<#if pageInfo.entryTitle??>${pageInfo.entryTitle} - </#if>${pageInfo.title!'ZrLog - 专业的 Java 开源博客系统'}"/>
    <meta name="twitter:description" content="${pageInfo.description!'ZrLog 是使用 Java 开发的博客程序，具有简约、易用、组件化、内存占用低等特点'}"/>
    <meta name="twitter:image" content="${url}/assets/screenprint/post-detail.png"/>
    
    <link rel="shortcut icon" type="image/svg+xml" href="${url }/favicon.svg"/>
    <link href="${url}/assets/fonts/remixicon.css" rel="stylesheet">
    <script src="${url}/assets/js/jquery-1.10.2.min.js"></script>
    <script src="${url}/assets/js/tailwindcss-3.4.6.js"></script>
    <script>tailwind.config = {
            darkMode: 'class', // ✅ 启用暗黑模式（class 模式）
            theme: {
                extend: {
                    colors: {primary: '#1677ff', secondary: '#f97316'},
                    borderRadius: {
                        'none': '0px',
                        'sm': '4px',
                        DEFAULT: '8px',
                        'md': '12px',
                        'lg': '16px',
                        'xl': '20px',
                        '2xl': '24px',
                        '3xl': '32px',
                        'full': '9999px',
                        'button': '8px'
                    }
                }
            }
        }
    </script>
    <script src="${url}/assets/js/auto-theme.js"></script>
    <script src="${url}/assets/js/store.js?v=2"></script>
    <style>
        :where([class^="ri-"])::before {
            content: "\f3c2";
        }

        body {
            font-family: 'Inter', 'PingFang SC', 'Microsoft YaHei', sans-serif;
        }

        :root {
            --color-primary: #1677ff;
        }

        .hero-gradient {
            background: linear-gradient(to bottom, rgba(31, 41, 55, 0.95), rgba(31, 41, 55, 0.8));
        }

        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }

        input[type="number"]::-webkit-inner-spin-button,
        input[type="number"]::-webkit-outer-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }

        .theme-switch {
            position: relative;
            width: 60px;
            height: 30px;
        }

        .theme-switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #2b2b2b;
            transition: .4s;
            border-radius: 30px;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 22px;
            width: 22px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            transition: .4s;
            border-radius: 50%;
        }

        input:checked + .slider {
            background-color: var(--color-primary);
        }

        input:checked + .slider:before {
            transform: translateX(30px);
        }

        @keyframes float {
            0% { transform: translateY(0px) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(2deg); }
            100% { transform: translateY(0px) rotate(0deg); }
        }

        @keyframes blob {
            0% { transform: translate(0, 0) scale(1); }
            33% { transform: translate(30px, -50px) scale(1.1); }
            66% { transform: translate(-20px, 20px) scale(0.9); }
            100% { transform: translate(0, 0) scale(1); }
        }

        .animate-float {
            animation: float 6s ease-in-out infinite;
        }

        .animate-blob {
            animation: blob 7s infinite;
        }

        .animation-delay-2000 {
            animation-delay: 2s;
        }

        .animation-delay-4000 {
            animation-delay: 4s;
        }

        @keyframes bounce-slow {
            0%, 100% { transform: translateY(-25%) translateX(-50%); }
            50% { transform: translateY(0) translateX(-50%); }
        }

        @keyframes scroll-inner {
            0% { transform: translateY(0); opacity: 1; }
            100% { transform: translateY(12px); opacity: 0; }
        }

        .animate-bounce-slow {
            animation: bounce-slow 2s infinite;
        }

        .animate-scroll-inner {
            animation: scroll-inner 1.5s infinite;
        }

        @keyframes scroll-line-progress {
            0% { transform: translateY(-100%); }
            100% { transform: translateY(100%); }
        }

        .animate-scroll-line-progress {
            animation: scroll-line-progress 2s cubic-bezier(0.4, 0, 0.2, 1) infinite;
        }

        .glass-panel {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .dark .glass-panel {
            background: rgba(0, 0, 0, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.05);
        }

        .github-star a {
            background: #000;
            color: #fff;
            text-decoration: none;
            text-align: center;
            font-weight: bold;
            padding: 5px 40px;
            font-size: 14px;
            line-height: 2rem;
            position: relative;
            transition: 0.5s;
        }

        .github-star a:hover {
            background: var(--color-primary);
            color: #fff;
        }

        .github-star a::before, .github-star a::after {
            content: "";
            width: 100%;
            display: block;
            position: absolute;
            top: 1px;
            left: 0;
            height: 1px;
            background: #fff;
        }

        .github-star a::after {
            bottom: 1px;
            top: auto;
        }

        @media screen and (min-width: 800px) {
            .github-star {
                position: fixed;
                display: block;
                top: 0;
                right: 0;
                width: 150px;
                overflow: hidden;
                height: 150px;
                z-index: 9999;
            }

            .github-star a {
                width: 238px;
                position: absolute;
                top: 42px;
                right: -60px;
                transform: rotate(45deg);
                -webkit-transform: rotate(45deg);
                -ms-transform: rotate(45deg);
                -moz-transform: rotate(45deg);
                -o-transform: rotate(45deg);
            }
        }


        @media (prefers-color-scheme: dark) {
            .icon {
                fill: var(--color-primary);
            }

            .github-star a {
                box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.8);
            }
        }

        .carousel-container {
            position: relative;
            overflow: hidden;
        }

        .carousel-slide {
            display: none;
            animation: fade 1.5s;
        }

        .active {
            display: block;
        }

        .nav-active {
            font-weight: 500;
            color: var(--color-primary);
        }

        .card {
            border: 1px solid #e5e7eb;
            border-radius: 8px;
        }

        .card-header {
            border-bottom: 1px solid #e5e7eb;
            padding: 4px 16px;
            font-size: 20px;
            line-height: 2.25rem;
        }

        .card-body {
            padding: 8px;
        }

        .text-center {
            text-align: center;
        }

        .card-img-top {
            text-align: center;
        }

        .auto-cards {
            gap: 12px;
        }

        @media (max-width: 600px) {
            .auto-cards {
                flex-flow: column;
                padding-bottom: 20px;
            }

            .img-responsive {
                max-width: 100%;
            }
        }

    </style>
<body class="dark:bg-black dark:text-gray-200">
<#if !request.attr.from??>
<!-- 导航栏 -->
<!-- 导航栏 -->
<nav class="sticky top-0 z-50 backdrop-blur-xl bg-white/70 dark:bg-gray-900/80 border-b border-gray-200/50 dark:border-white/10 py-4 transition-all duration-300 shadow-sm" id="header">
    <div class="container mx-auto px-4 md:px-6 flex items-center justify-between">
        <div class="flex items-center">
            <a href="/" class="flex items-center gap-2 text-2xl font-black tracking-tighter text-gray-900 dark:text-white mr-12 group">
                <div class="w-10 h-10 flex items-center justify-center transition-transform group-hover:scale-110">
                    <img src="${url}/favicon.svg" alt="ZrLog Logo" class="w-full h-full">
                </div>
                <span>ZRLOG</span>
            </a>
            <ul class="hidden lg:flex items-center space-x-1">
                <#include "header-nav.ftl"/>
            </ul>
        </div>
        
        <div class="flex items-center gap-6">
            <div class="hidden md:flex items-center space-x-4 border-r border-gray-200 dark:border-white/10 pr-6">
                <!-- Github & Theme Toggle -->
                <a href="https://github.com/94fzb/zrlog" target="_blank"
                   class="text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-white transition-colors p-2 rounded-full hover:bg-black/5 dark:hover:bg-white/5">
                    <i class="ri-github-fill ri-xl"></i>
                </a>
                <div class="flex items-center gap-2 bg-black/5 dark:bg-white/5 px-2 py-1 rounded-full border border-gray-200 dark:border-white/5">
                    <i class="ri-sun-line text-[10px] text-gray-500 dark:text-gray-400"></i>
                    <label class="theme-switch relative inline-block w-8 h-4 cursor-pointer">
                        <input type="checkbox" class="sr-only peer">
                        <div class="absolute inset-0 bg-gray-300 dark:bg-gray-700 rounded-full transition-colors peer-checked:bg-blue-600"></div>
                        <div class="absolute left-0.5 top-0.5 bg-white w-3 h-3 rounded-full transition-transform peer-checked:translate-x-4"></div>
                    </label>
                    <i class="ri-moon-line text-[10px] text-gray-500 dark:text-gray-400"></i>
                </div>
            </div>
            
            <a href="/download" 
               class="hidden sm:inline-flex items-center justify-center bg-blue-600 text-white hover:bg-blue-700 px-6 py-2.5 rounded-full font-semibold text-sm transition-all shadow-lg shadow-blue-600/25 active:scale-95">
                立即开始
            </a>
            
            <button class="lg:hidden flex items-center justify-center w-10 h-10 text-gray-900 dark:text-white hover:bg-black/5 dark:hover:bg-white/5 rounded-xl border border-gray-200 dark:border-white/10" id="toggleSidebar">
                <i class="ri-menu-4-line ri-lg"></i>
            </button>
        </div>
    </div>
</nav>

<div id="overlay" class="fixed inset-0 bg-black/60 backdrop-blur-sm z-[60] hidden"></div>
<aside id="sidebar" class="fixed top-0 left-0 w-72 h-full bg-white dark:bg-gray-900 border-r border-gray-200 dark:border-white/10 p-8 shadow-2xl -translate-x-full transition-transform duration-500 ease-out z-[70] hidden">
    <div class="flex flex-col h-full">
        <div class="mb-12 flex items-center justify-between">
            <div class="flex items-center gap-2 text-xl font-bold text-gray-900 dark:text-white">
                <div class="w-8 h-8 flex items-center justify-center">
                    <img src="${url}/favicon.svg" alt="ZrLog Logo" class="w-full h-full">
                </div>
                <span>ZRLOG</span>
            </div>
            <button id="closeSidebar" class="text-gray-500 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white">
                <i class="ri-close-line ri-xl"></i>
            </button>
        </div>
        <ul class="flex flex-col gap-4">
            <#include "header-nav.ftl"/>
        </ul>
        <div class="mt-auto pt-8 border-t border-gray-200 dark:border-white/10">
            <a href="https://github.com/94fzb/zrlog" target="_blank" class="flex items-center gap-3 text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-white px-3 py-2 transition-colors">
                <i class="ri-github-fill"></i>
                <span>在 GitHub 获取源码</span>
            </a>
        </div>
    </div>
</aside>
</#if>