<#include "include/header.ftl"/>
<header class="marquee"
        style="background-color: #343a40;background-image: url('data:image/png;base64,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')">
    <div class="container" style="margin-bottom: 16px">
        <span class="brand-name">ZRLOG</span>
        <h2>可能是最好用的开源 Java 博客程序</h2>
        <style>
            .index-btn-group {
                display: flex
            }

            @media (max-width: 600px) {
                .index-btn-group {
                    display: block !important;
                    justify-content: center !important;
                }
            }

            @media (prefers-color-scheme: light) {
                #carouselExampleControlsNoTouching {
                    background: #343a40;
                }
            }
        </style>
        <div style="padding-top: 16px;gap: 24px;justify-content: center" class="index-btn-group">
            <a style="width: 180px" href="https://demo.zrlog.com?ref=index"
               target="_blank"
               class="btn btn-default btn-cta">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" style="height: 18px" width="18px"
                     fill="#e6e6e6">
                    <path d="M438.6 278.6c12.5-12.5 12.5-32.8 0-45.3l-160-160c-12.5-12.5-32.8-12.5-45.3 0s-12.5 32.8 0 45.3L338.8 224 32 224c-17.7 0-32 14.3-32 32s14.3 32 32 32l306.7 0L233.4 393.4c-12.5 12.5-12.5 32.8 0 45.3s32.8 12.5 45.3 0l160-160z"/>
                </svg>
                <span style="padding-left: 4px;font-weight: 500">马上体验</span>
            </a>
            <#include "include/download-file-btn.ftl">
        </div>
    </div>
</header>
<div class="container" style="padding-bottom: 48px">
    <div class="row home-intro text-center">
        <div class="col-lg-12">
            <h2 class="tagline" style="justify-content:center;font-weight: 700;gap: 24px;display: flex"><span
                        class="text-primary">免费</span><span class="text-warning">开源</span><span class="text-danger">易用</span>
            </h2>
            <#include "include/star.ftl">
            <p style="font-size: 20px;margin-bottom: 8px;margin-top: 20px">ZrLog 是使用 Java
                开发的博客程序，具有简约，易用，组件化，内存占用低等特点</p>
            <p style="font-size: 20px">Markdown 编辑器，让更多的精力放在写作上，而不是花费大量时间在学习程序的使用上</p>
            <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false"
                 style="display: flex;justify-content: center;margin-top: 16px;border-radius: 16px"
                 data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide-to="0"
                            class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                    <button type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide-to="3"
                            aria-label="Slide 4"></button>
                </div>
                <div class="carousel-inner" style="max-width: 80%;padding-bottom: 24px">
                    <#list indexImgList as img>
                        <div class="carousel-item<#if img?index == 0> active</#if>">
                            <img src="${img}" class="d-block w-100" alt="carousel-${img?index + 1}">
                        </div>
                    </#list>
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