<#assign subTitle="${template.name} - 主题中心">
<#include "../include/header.ftl"/>
<section class="py-16 bg-gray-50 dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <nav aria-label="breadcrumb">
            <nav aria-label="breadcrumb">
                <a href="/template" class="text-primary">主题中心</a> > ${template.name}
            </nav>
        </nav>
        <div style="display: flex;" class="auto-cards py-4">
            <div>
                <div class="card bg-white dark:bg-gray-900" style="overflow: hidden">
                    <a target="_blank" title="${template.name}"
                       class="thumbnail">
                        <img src="${template.image}"
                             class="img-responsive" alt="${template.name}" style="max-height: 540px;max-width: 540px;width: 100%">
                    </a>
                </div>
                <ul class="list-inline preview-links" style="padding-top: 20px">
                    <li><a href="${template.downloadUrl}" target="_top"
                           class="storeInstallLink bg-primary hover:bg-primary/90 text-white py-3 px-8 !rounded-button whitespace-nowrap transition-colors"><i class="ri-download-line mr-2"></i>${download}</a>
                    </li>
                </ul>
            </div>
            <div class="card bg-white dark:bg-gray-900" style="width: 100%">
                <div class="card-header">描述</div>
                <div class="card-body">
                    <p>${template.desc}</p>

                    <h4 class="py-4">源码</h4>
                    <ul>
                        <li><a class="text-primary" href="${template.sourceUrl}">GitHub</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<#include "../include/footer.ftl"/>
