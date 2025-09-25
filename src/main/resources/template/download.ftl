<#include "include/header.ftl"/>
<style>
    .btn-cta {
        padding: 0;
        height: 57px;
        font-size: 18px;
    }

    p {
        margin-bottom: 8px;
    }

    #version-header {
        gap: 8px;
        display: flex;
    }

    .img-responsive {
        max-width: 320px
    }

    .card-body ul li {
        list-style: decimal;
    }


    @media (max-width: 600px) {
        #version-header {
            flex-flow: column;
            padding-bottom: 20px;
        }

        .img-responsive {
            max-width: 100%;
        }
    }

</style>
<#include "_download/header.ftl"/>
<#include "_download/download-card.ftl"/>
<#include "_download/install-required.ftl"/>
<#include "_download/support-browser.ftl"/>
<#include "_download/history.ftl"/>
<#include "include/footer.ftl"/>