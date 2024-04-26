<#assign subTitle="${plugin.name} - 插件中心">
<#include "../include/header.ftl"/>

<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/plugin/">插件中心</a></li>
            <li class="breadcrumb-item active">${plugin.name}</li>
        </ol>
    </nav>
</div>
<div class="container">
    <div class="row">
        <div class="col-lg-7 col-md-6 preview-page-window">
            <a target="_blank" title="${plugin.name}"
               class="thumbnail">
                <img src="${plugin.image}"
                     class="img-responsive" alt="${plugin.name}">
            </a>
            <hr class="big">
            <ul class="list-inline preview-links" style="padding-top: 20px">
                <li><a href="${plugin.downloadUrl}" class="storeInstallLink btn btn-primary">${download}</a></li>
            </ul>
        </div>
        <div class="col-lg-5 col-md-6 preview-page-content">
            <h4>描述</h4>
            <p>${plugin.desc}</p>
        </div>
    </div>
</div>
<#include "../include/footer.ftl"/>
