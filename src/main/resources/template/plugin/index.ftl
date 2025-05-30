<#assign subTitle="插件中心">
<#include "../include/header.ftl"/>
<section class="py-16 bg-gray-50">
    <div class="container mx-auto px-4 md:px-6">
        <nav aria-label="breadcrumb">
            插件中心 > 所有
        </nav>
        <div style="display:flex;flex-flow: wrap;gap:16px;justify-content: left;align-items:start"
             class="py-4">
            <#list plugins as plugin>
                <div class="card text-center">
                    <div class="card-body">
                        <img class="img-responsive"
                             style="height:200px;min-width:320px;max-width: 320px;overflow:hidden;object-fit: cover"
                             src="${plugin.image}?imageView2/2/w/650"
                             alt="${plugin.name }">
                        <h5 class="card-header">${plugin.name }</h5>
                        <hr/>
                        <a href="${url}/plugin/${plugin.id}.html" class="storeDetailLink">详情 &amp;
                            ${download}</a>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</section>
<#include "../include/footer.ftl"/>
