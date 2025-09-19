<#assign subTitle="${plugin.name} - 插件中心">
<#include "../include/header.ftl"/>

<section class="py-16 bg-gray-50 dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <nav aria-label="breadcrumb">
            <nav aria-label="breadcrumb">
                <nav aria-label="breadcrumb">
                    <a href="/plugin" class="text-primary">插件中心</a> > ${plugin.name}
                </nav>
            </nav>
        </nav>
        <div style="display: flex;" class="auto-cards py-4" >
            <div class="card bg-white dark:bg-gray-900" style="overflow: hidden">
                <a target="_blank" title="${plugin.name}"
                   class="thumbnail">
                    <img src="${plugin.image}"
                         class="img-responsive" alt="${plugin.name}" style="max-height: 360px;max-width: 540px;width: 100%">
                </a>
            </div>
            <div class="card bg-white dark:bg-gray-900" style="width: 100%">
                <div class="card-header">描述</div>
                <div class="card-body">${plugin.desc}</div>
            </div>
        </div>
            <a href="${plugin.downloadUrl}" class="storeInstallLink bg-primary hover:bg-primary/90 text-white py-3 px-8 !rounded-button whitespace-nowrap transition-colors"  style="margin-top: 20px">
                    <i class="ri-download-line mr-2"></i> ${download}</a>
    </div>
</section>
<#include "../include/footer.ftl"/>
