<!DOCTYPE html>
<html lang="zh">
<head>
    <title><#if pageInfo.entryTitle??>${pageInfo.entryTitle} - </#if>${pageInfo.title!''}</title>
    <meta name="description" content="${pageInfo.description!''}"/>
    <meta name="keywords" content="${pageInfo.keywords!''}"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
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

        .storeInstallLink, .storeDetailLink {
            display: inline-flex;
            height: 56px;
            min-width: 96px;
            justify-content: center;
            align-items: center;
            padding-right: 12px;
            padding-left: 12px;
            border-radius: 4px;
            margin-top: 12px;
            color: white;
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
<nav class="bg-gray-900 text-white py-4" id="header">
    <div class="container mx-auto px-4 md:px-6 flex items-center justify-between">
        <div class="flex items-center">
            <a href="/" class="text-xl font-bold mr-10">ZRLOG</a>
            <ul class="hidden md:flex space-x-6">
                <#include "header-nav.ftl"/>
            </ul>
        </div>
        <div id="overlay"
             class="fixed inset-0 bg-black bg-opacity-50 z-30 hidden"></div>
        <aside id="sidebar" class="fixed text-white top-0 bg-primary left-0 w-56 h-full bg-gray-100 dark:bg-gray-800 text-black dark:text-white p-6
           -translate-x-full transition-transform duration-300 z-40 hidden"
               style="background: rgb(17 24 39);">
            <ul class="space-y-6" style="font-size: 18px;text-align: center;">
                <#include "header-nav.ftl"/>
            </ul>
        </aside>
        <div class="flex items-center space-x-4">
            <a href="https://github.com/94fzb/zrlog" target="_blank"
               class="flex items-center justify-center w-8 h-8">
                <i class="ri-github-fill ri-lg"></i>
            </a>
            <label class="theme-switch">
                <input type="checkbox">
                <span class="slider"></span>
            </label>
            <button class="md:hidden flex items-center justify-center w-8 h-8" id="toggleSidebar">
                <i class="ri-menu-line ri-lg"></i>
            </button>
        </div>
    </div>
</nav>
</#if>