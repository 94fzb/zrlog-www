<#include "include/header.ftl"/>
<header class="marquee" style="background-color: #343a40;">
    <div class="container" style="margin-bottom: 16px">
        <span class="brand-name">ZRLOG</span>
        <h2>可能是最好用的开源 Java 博客程序</h2>
        <style>
            #index-btn-group {
                display: flex
            }

            @media (max-width: 600px) {
                #index-btn-group {
                    display: block;
                }
            }

            @media (prefers-color-scheme: light) {
                #carouselExampleControlsNoTouching {
                    background: #343a40;
                }
            }
        </style>
        <div style="padding-top: 16px;gap: 24px;justify-content: center" id="index-btn-group">
            <a style="width: 180px" href="https://demo.zrlog.com?ref=index"
               target="_blank"
               class="btn btn-default btn-cta">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" style="height: 18px" width="18px" fill="#e6e6e6">
                    <path d="M438.6 278.6c12.5-12.5 12.5-32.8 0-45.3l-160-160c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L338.8 224 32 224c-17.7 0-32 14.3-32 32s14.3 32 32 32l306.7 0L233.4 393.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0l160-160z"/>
                </svg>
                <span style="padding-left: 4px;font-weight: 500">马上体验</span>
            </a>
            <#include "include/download-file-btn.ftl">
        </div>
    </div>
    <#include "include/star.ftl">
</header>
<div class="container" style="padding-bottom: 48px">
    <div class="row home-intro text-center">
        <div class="col-lg-12">
            <h2 class="tagline" style="line-height: 100px;justify-content:center;font-weight: 700;gap: 24px;display: flex"><span class="text-primary">免费</span><span class="text-warning">开源</span><span class="text-danger">易用</span></h2>
            <p style="font-size: 20px;margin-bottom: 8px">ZrLog 是使用 Java 开发的博客程序，具有简约，易用，组件化，内存占用低等特点</p>
            <p style="font-size: 20px">Markdown 编辑器，让更多的精力放在写作上，而不是花费大量时间在学习程序的使用上</p>
            <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false"
                 style="display: flex;justify-content: center;margin-top: 16px;border-radius: 16px" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    <button type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide-to="3" aria-label="Slide 4"></button>
                </div>
                <div class="carousel-inner" style="max-width: 80%;padding-bottom: 24px">
                    <div class="carousel-item active">
                        <img src="/assets/screenprint/post-detail.png" class="d-block w-100" alt="">
                    </div>
                    <div class="carousel-item">
                        <img src="/assets/screenprint/article-edit-dark.png" class="d-block w-100" alt="">
                    </div>
                    <div class="carousel-item">
                        <img src="/assets/screenprint/article-edit-light-pwa-full-screen.png" class="d-block w-100"
                             alt="">
                    </div>
                    <div class="carousel-item">
                        <img src="/assets/screenprint/article-edit-light-pwa-full-screen-setting.png"
                             class="d-block w-100"
                             alt="">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching"
                        data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching"
                        data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
</div>
<div class="container">
    ${features}
</div>
<#include "include/footer.ftl"/>