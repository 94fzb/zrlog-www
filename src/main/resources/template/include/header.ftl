<!DOCTYPE html>
<html>
<head>
    <title><#if subTitle??>${subTitle} - </#if>ZrLog 博客程序</title>
    <meta name="description" content="ZrLog 使用 Java 构建的个人博客程序 - 可能是最好用的开源Java博客系统"/>
    <meta name="keywords" content="ZrLog,博客,java开源博客,博客程序,记录日志,博客系统,建站系统,blog,java建站系统,简洁博客"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

    <link rel="shortcut icon" type="image/x-icon" href="${url }/favicon.ico"/>
    <link href="${url }/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${url }/assets/css/bootstrap-theme-v2.css" rel="stylesheet" type="text/css"/>
    <script src="${url}/assets/js/jquery-1.10.2.min.js"></script>
    <script src="${url}/assets/js/bootstrap.min.js"></script>
    <script src="${url}/assets/js/auto-theme.js"></script>
<body>
<#if !request.attr.from??>
<a href="https://github.com/94fzb/zrlog" class="d-none d-lg-block">
    <img style="position: fixed; top: 0; right: 0; border: 0; z-index: 9999" src="/assets/img/fork-me-on-github.png"
         alt="Fork me on GitHub"></a>
<nav class="navbar navbar-expand-lg sticky-top">
    <div class="container">
        <a class="navbar-brand" href="/"><b>ZRLOG</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item <#if request.uri == '/'>active</#if>"><a class="nav-link"
                                                                             href="https://www.zrlog.com/">主页</a>
                </li>
                <li class="nav-item "><a class="nav-link"
                                         href="https://blog.zrlog.com/">博客</a>
                </li>
                <li class="nav-item <#if request.uri == '/template/'>active</#if> "><a class="nav-link"
                                                                                       href="https://store.zrlog.com/template/">主题</a>
                </li>
                <li class="nav-item <#if request.uri == '/plugin/'>active</#if> "><a class="nav-link"
                                                                                     href="https://store.zrlog.com/plugin/">插件</a>
                </li>
                <li class="nav-item <#if request.uri == '/download'>active</#if>"><a class="nav-link" href="https://www.zrlog.com/download.html">下载</a>
                </li>
                <li class="nav-item"><a class="nav-link" href="https://blog.zrlog.com/sort/doc.html">文档</a>
                </li>
                <li class="nav-item <#if request.uri == '/about'>active</#if> "><a class="nav-link"
                                                                                   href="https://blog.zrlog.com/about.html">关于</a>
                </li>
                <li class="nav-item <#if request.uri == '/code'>active</#if>"><a class="nav-link" href="https://www.zrlog.com/code.html">源码</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
</#if>
<#if request.uri != '/'><br/></#if>