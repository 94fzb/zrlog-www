<#include "../include/header.ftl"/>
<section class="py-16 bg-gray-50 dark:bg-black">
    <div class="container mx-auto px-4 md:px-6">
        <nav aria-label="breadcrumb">
            主题中心 > 所有
        </nav>
        <div style="display:flex;flex-flow: wrap;gap:16px;justify-content: left;align-items:start"
             class="py-4">
            <#list templates as template>
                <div class="card bg-white text-center dark:bg-gray-900" style="object-fit: cover">
                    <div class="card-body">
                        <img class="img-responsive"
                             style="height:200px;min-width:320px;max-width: 320px;overflow:hidden;object-fit: cover"
                             src="${template.image}?imageView2/2/w/650&v=2"
                             alt="${template.name }">
                        <h5 class="card-header">${template.name }</h5>
                        <hr/>
                        <a href="${url}/template/${template.id}.html"
                           class="storeDetailLink bg-primary hover:bg-primary/90 text-white py-3 px-8 !rounded-button whitespace-nowrap transition-colors">预览
                            &amp;
                            ${download}</a>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</section>
<#include "../include/footer.ftl"/>
