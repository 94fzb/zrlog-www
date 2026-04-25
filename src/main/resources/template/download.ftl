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

    .changelog-content h3 {
        font-size: 1.75rem;
        font-weight: 700;
        color: #1f2937;
        margin-top: 3rem;
        margin-bottom: 1.5rem;
        padding-bottom: 0.75rem;
        border-bottom: 2px solid #e5e7eb;
        position: relative;
    }

    .dark .changelog-content h3 {
        color: #f3f4f6;
        border-bottom-color: #374151;
    }

    .changelog-content h3:before {
        content: "#";
        color: #3b82f6;
        margin-right: 0.5rem;
        font-weight: 600;
    }

    .changelog-content h4 {
        font-size: 1.25rem;
        font-weight: 600;
        color: #374151;
        margin-top: 2rem;
        margin-bottom: 1rem;
    }

    .dark .changelog-content h4 {
        color: #d1d5db;
    }

    .changelog-content h4:before {
        content: "##";
        color: #6366f1;
        margin-right: 0.5rem;
        font-weight: 500;
    }

    .changelog-content p {
        margin-bottom: 1rem;
        line-height: 1.75;
        color: #4b5563;
    }

    .dark .changelog-content p {
        color: #9ca3af;
    }

    .changelog-content ul {
        margin: 1.5rem 0;
        padding-left: 0;
    }

    .changelog-content ul li {
        position: relative;
        padding-left: 1.75rem;
        margin-bottom: 0.75rem;
        line-height: 1.75;
        color: #4b5563;
    }

    .dark .changelog-content ul li {
        color: #9ca3af;
    }

    .changelog-content ul li:before {
        content: "•";
        position: absolute;
        left: 0.5rem;
        color: #3b82f6;
        font-weight: bold;
    }

    .changelog-content hr {
        margin: 3rem 0;
        border: 0;
        border-top: 1px solid #e5e7eb;
    }

    .dark .changelog-content hr {
        border-top-color: #374151;
    }

    .changelog-content a {
        color: #3b82f6;
        text-decoration: underline;
        text-decoration-color: #3b82f6;
        text-underline-offset: 2px;
        transition: all 0.2s;
    }

    .changelog-content a:hover {
        color: #2563eb;
        text-decoration-color: #2563eb;
    }

    .changelog-content code {
        background: #f3f4f6;
        padding: 0.125rem 0.375rem;
        border-radius: 0.25rem;
        font-size: 0.875em;
        color: #e11d48;
    }

    .dark .changelog-content code {
        background: #374151;
        color: #fda4af;
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
