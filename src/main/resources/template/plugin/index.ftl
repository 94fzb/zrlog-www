<#assign subTitle="插件中心">
<#include "../include/header.ftl"/>
<!-- Page Content -->
<div class="container">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">插件中心</li>
            <li class="breadcrumb-item active">所有</li>
        </ol>
    </nav>
</div>
<div class="container">
    <div class="row previews">
        <#list plugins as plugin>
            <div class="col-lg-4 col-sm-6" style="padding-top: 10px">
                <div class="card text-center">
                    <img class="card-img-top" style="height:200px;width:100%;overflow:hidden;"
                         src="${plugin.image}?imageView2/2/w/650"
                         alt="${plugin.name }">
                    <div class="card-body">
                        <h5 class="card-title">${plugin.name }</h5>
                        <hr/>
                        <a href="${url}/plugin/${plugin.id}.html" class="storeDetailLink btn btn-primary">详情 &amp;
                            ${download}</a>
                    </div>
                </div>
            </div>
        </#list>
    </div>
</div>
<#include "../include/footer.ftl"/>
