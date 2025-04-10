<#assign subTitle="${plugin.name} - 插件中心">
<#include "../include/header.ftl"/>

<section class="py-16 bg-gray-50">
    <div class="container mx-auto px-4 md:px-6">
        <nav aria-label="breadcrumb">
            <nav aria-label="breadcrumb">
                <nav aria-label="breadcrumb">
                    <a href="/plugin" class="link">插件中心</a> > ${plugin.name}
                </nav>
            </nav>
        </nav>
        <div style="display: flex;" class="auto-cards py-4">
            <div class="card">
                <a target="_blank" title="${plugin.name}"
                   class="thumbnail">
                    <img src="${plugin.image}"
                         class="img-responsive" alt="${plugin.name}" style="border-radius: 4px;max-width: 480px;">
                </a>
            </div>
            <div class="card" style="width: 100%">
                <div class="card-header">描述</div>
                <div class="card-body">${plugin.desc}</div>
            </div>
        </div>
            <a href="${plugin.downloadUrl}" class="storeInstallLink"  style="margin-top: 20px">
                    <i class="ri-download-line mr-2"></i> ${download}</a>
    </div>
</section>
<#include "../include/footer.ftl"/>
