<#assign subTitle="${template.name} - 主题中心">
<#include "../include/header.ftl"/>
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/template/">主题中心</a></li>
            <li class="breadcrumb-item active">${template.name}</li>
        </ol>
    </nav>
</div>
<div class="container">
    <div class="row">
        <div class="col-lg-7 col-md-6 preview-page-window">
            <a target="_blank" title="View Live Preview"
               class="thumbnail">
                <img src="${template.image}?v=2"
                     class="img-responsive" alt="${template.name}">
            </a>
            <hr class="big">
            <ul class="list-inline preview-links" style="padding-top: 20px">
                <li><a href="${template.downloadUrl}" target="_top" class="storeInstallLink btn btn-primary">${download}</a></li>
            </ul>
        </div>
        <div class="col-lg-5 col-md-6 preview-page-content">
            <h4>描述</h4>
            <p>${template.desc}</p>

            <h4>源码</h4>
            <ul>
                <li><a href="${template.sourceUrl}">Gitee</a></li>
            </ul>
        </div>
    </div>
</div>
<#include "../include/footer.ftl"/>
