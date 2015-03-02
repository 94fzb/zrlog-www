<#assign subTitle="主题中心">
<#include "../include/header.ftl"/>
<!-- Page Content -->
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">主题中心</li>
            <li class="breadcrumb-item active">所有</li>
        </ol>
    </nav>
</div>
<div class="container">
    <div class="row previews">
        <#list templates as template>
            <div class="col-lg-4 col-sm-6" style="padding-top: 10px">
                <div class="card text-center" style="min-height: 400px">
                    <img class="card-img-top" style="width:100%" src="${template.image}?imageView2/2/w/650&v=2"
                         alt="${template.name }">
                    <div class="card-body">
                        <h5 class="card-title">${template.name }</h5>
                        <hr/>
                        <a href="${url}/template/detail?id=${template.id}" class="btn btn-primary">预览 &amp;
                            ${download}</a>
                    </div>
                </div>
            </div>
        </#list>
    </div>
</div>
<#include "../include/footer.ftl"/>
