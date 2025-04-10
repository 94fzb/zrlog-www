<!DOCTYPE html>
<html lang="zh">
<head>
    <title><#if subTitle??>${subTitle} - </#if>ZrLog 博客程序</title>
    <meta name="description" content="ZrLog 使用 Java 构建的个人博客程序 - 可能是最好用的开源Java博客系统"/>
    <meta name="keywords"
          content="ZrLog,博客,java开源博客,博客程序,记录日志,博客系统,建站系统,blog,java建站系统,简洁博客"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="shortcut icon" type="image/svg+xml" href="${url }/favicon.svg"/>
    <link href="${url}/assets/fonts/remixicon.css" rel="stylesheet">
    <script src="${url}/assets/js/jquery-1.10.2.min.js"></script>
    <script src="${url}/assets/js/tailwindcss-3.4.6.js"></script>
    <script>tailwind.config = {
            theme: {
                extend: {
                    colors: {primary: '#f97316', secondary: '#3b82f6'},
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
        }</script>
    <script src="${url}/assets/js/auto-theme.js"></script>
    <script src="${url}/assets/js/store.js?v=1"></script>
    <style>
        :where([class^="ri-"])::before {
            content: "\f3c2";
        }

        body {
            font-family: 'Inter', 'PingFang SC', 'Microsoft YaHei', sans-serif;
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
            background-color: #f97316;
        }

        input:checked + .slider:before {
            transform: translateX(30px);
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
            background: rgb(13, 110, 253);
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
                fill: #111827;
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
            font-weight: 700;
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

        .card-body a {
            color: #2492ff;
        }

        .link {
            color: #2492ff;
        }

        .storeInstallLink, .storeDetailLink {
            color: #2492ff;
            display: inline-flex;
            height: 56px;
            min-width: 96px;
            justify-content: center;
            align-items: center;
            padding-right: 12px;
            padding-left: 12px;
            border-radius: 4px;
            margin-top: 12px;
            border: 1px solid #2492ff;
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
<body>
<#if !request.attr.from??>
<!-- 导航栏 -->
<nav class="bg-gray-900 text-white py-4">
    <div class="container mx-auto px-4 md:px-6 flex items-center justify-between">
        <div class="flex items-center">
            <a href="#" class="text-xl font-bold mr-10">ZRLOG</a>
            <div class="hidden md:flex space-x-6">
                <a href="/"
                   class="hover:text-primary transition-colors <#if request.uri == '/'>nav-active</#if>">主页</a>
                <a href="https://blog.zrlog.com" class="hover:text-primary transition-colors">博客</a>
                <a href="/template"
                   class="hover:text-primary transition-colors <#if request.uri == '/template'>nav-active</#if>">主题</a>
                <a href="/plugin"
                   class="hover:text-primary transition-colors <#if request.uri == '/plugin'>nav-active</#if>">插件</a>
                <a href="/download"
                   class="hover:text-primary transition-colors <#if request.uri == '/download'>nav-active</#if>">下载</a>
                <a href="https://blog.zrlog.com/doc" class="hover:text-primary transition-colors">文档</a>
                <a href="https://blog.zrlog.com/about" class="hover:text-primary transition-colors">关于</a>
                <a href="/code"
                   class="hover:text-primary transition-colors <#if request.uri == '/code'>nav-active</#if>">源码</a>
            </div>
        </div>
        <div class="flex items-center space-x-4">
            <a href="https://github.com/94fzb/zrlog" target="_blank"
               class="flex items-center justify-center w-8 h-8">
                <i class="ri-github-fill ri-lg"></i>
            </a>
            <label class="theme-switch">
                <input type="checkbox">
                <span class="slider"></span>
            </label>
            <button class="md:hidden flex items-center justify-center w-8 h-8">
                <i class="ri-menu-line ri-lg"></i>
            </button>
        </div>
    </div>
</nav>
</#if>