<#assign subTitle="主题中心">
<#include "../include/header.ftl"/>
<section class="py-16 bg-gray-50">
    <div class="container mx-auto px-4 md:px-6">
        <nav aria-label="breadcrumb">
            主题中心 > 所有
        </nav>
        <div style="display:flex;flex-flow: wrap;gap:16px;justify-content: left;align-items:start"
             class="py-4">
            <#list templates as template>
                <div class="col-lg-4 col-sm-6" style="padding-top: 10px">
                    <div class="card text-center" style="object-fit: cover">
                        <div class="card-body">
                            <img class="img-responsive"
                                 style="height:200px;min-width:320px;max-width: 320px;overflow:hidden;object-fit: cover"
                                 src="${template.image}?imageView2/2/w/650&v=2"
                                 alt="${template.name }">
                            <h5 class="card-header">${template.name }</h5>
                            <hr/>
                            <a href="${url}/template/${template.id}.html" class="storeDetailLink btn btn-primary">预览
                                &amp;
                                ${download}</a>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</section>
<#include "../include/footer.ftl"/>
