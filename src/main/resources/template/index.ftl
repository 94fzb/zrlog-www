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
        <div style="padding-top: 16px;gap: 16px;justify-content: center" id="index-btn-group">
            <a style="width: 180px" href="https://demo.zrlog.com?ref=index"
               target="_blank"
               class="btn btn-default btn-cta">
                <svg t="1483704033964" class="icon" style="" viewBox="0 0 1518 1024" version="1.1"
                     xmlns="http://www.w3.org/2000/svg" p-id="1428"
                     width="23.71875" height="16">
                    <defs>
                        <style type="text/css"></style>
                    </defs>
                    <path d="M256.94675 1024l495.70167-511.983397L256.94675 0l420.475568 0 495.734875 512.016603L677.422318 1024 256.94675 1024z"
                          p-id="1429" class="" fill="#e6e6e6"></path>
                </svg>
                马上体验 </a>
            <#include "include/download-file-btn.ftl">
            <a style="width: 180px" href="https://gitee.com/94fzb/zrlog-docker"
               class="btn btn-default btn-cta">
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg"
                     width="24px" height="24px" viewBox="0,0,256,256">
                    <g fill="#e6e6e6" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt"
                       stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0"
                       font-family="none" font-weight="none" font-size="none" text-anchor="none"
                       style="mix-blend-mode: normal">
                        <g transform="scale(10.66667,10.66667)">
                            <path d="M10,2.79688c-0.276,0 -0.5,0.224 -0.5,0.5v2.34961h-5.5c-0.276,0 -0.5,0.224 -0.5,0.5v2.34766h-1.99805c-0.276,0 -0.5,0.224 -0.5,0.5v2.35547h-0.41211c-0.243,0 -0.45214,0.17406 -0.49414,0.41406c-0.361,2.089 0.31936,4.57927 1.69336,6.19727c1.432,1.686 3.56022,2.53906 6.32422,2.53906c5.742,0 10.03491,-2.58406 12.12891,-7.28906c0.862,-0.014 2.51058,-0.208 3.39258,-1.875c0.053,-0.094 0.17577,-0.34358 0.25977,-0.51758l0.05469,-0.11523c0.111,-0.225 0.03712,-0.49772 -0.17187,-0.63672l-0.47461,-0.31641c-0.595,-0.398 -1.64863,-0.51445 -2.51562,-0.43945c-0.23,-0.793 -0.74975,-1.49172 -1.59375,-2.13672l-0.50195,-0.33203c-0.231,-0.151 -0.53841,-0.08838 -0.69141,0.14063l-0.33398,0.5c-0.624,0.938 -0.92411,2.47152 -0.41211,3.72852c-0.19642,0.0587 -0.45967,0.10215 -0.75391,0.12109v-2.33789c0,-0.276 -0.224,-0.5 -0.5,-0.5h-2.5v-2.34766v-2.84961c0,-0.276 -0.224,-0.5 -0.5,-0.5zM10.5,3.79688h2v1.84961h-2zM4.5,6.64648h2v1.84766h-2zM7.5,6.64648h2v1.84766h-2zM10.5,6.64648h2v1.84766h-2zM18.55469,7.94922l0.05859,0.03906c0.765,0.586 1.18611,1.22131 1.28711,1.94531c0.018,0.135 0.09212,0.25789 0.20313,0.33789c0.111,0.08 0.25081,0.10994 0.38281,0.08594c0.863,-0.159 1.90277,-0.01534 2.25977,0.22266l0.11328,0.07617c-0.038,0.079 -0.0728,0.14769 -0.0918,0.17969c-0.004,0.007 -0.00967,0.01839 -0.01367,0.02539c-0.647,1.229 -1.85008,1.3667 -2.83008,1.3457c-0.193,0.019 -0.39366,0.11959 -0.47266,0.30859c-1.875,4.504 -5.90089,6.98438 -11.33789,6.98438c-2.457,0 -4.3275,-0.7365 -5.5625,-2.1875c-1.102,-1.298 -1.69139,-3.24389 -1.52539,-4.96289v-0.00195h15.17383c1.03,0.018 1.72638,-0.30436 1.98438,-0.44336c0.124,-0.066 0.215,-0.18041 0.25,-0.31641c0.034,-0.136 0.00864,-0.27949 -0.06836,-0.39649c-0.605,-0.92 -0.40214,-2.3543 0.13086,-3.1543zM2.00195,9.49414h1.49805v1.84766h-1.49805zM4.5,9.49414h2v1.84766h-2zM7.5,9.49414h2v1.84766h-2zM10.5,9.49414h2v1.84766h-2zM13.5,9.49414h2v1.84766h-2z"></path>
                        </g>
                    </g>
                </svg>
                <span style="padding-left: 4px">Docker 模式</span>
            </a>
        </div>
    </div>
    <#include "include/star.ftl">
</header>
<div class="container" style="padding-bottom: 48px">
    <div class="row home-intro text-center">
        <div class="col-lg-12">
            <h2 class="tagline">免费，开源，易用</h2>
            <p class="lead">ZrLog 是使用 Java 开发的博客程序，具有简约，易用，组件化，内存占用低等特点</p>
            <p class="lead">Markdown 编辑器，让更多的精力放在写作上，而不是花费大量时间在学习程序的使用上</p>
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