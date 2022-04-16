<footer>
    <div class="container">
        <hr>
        <div class="row">
        <#if !request.attr.from??>
            <div class="col-lg-12 footer-below">
                <#include "footer-links.ftl">
            </div>
        </#if>
            <div class="col-lg-12 footer-below">
                <p class="copyright">Copyright &copy; 2022 ZrLog 博客程序
                </p>
            </div>
            <div class="col-lg-12 footer-below">
                <a href="https://www.zrlog.com">www.zrlog.com</a>
            </div>
        </div>
    </div>
</footer>
<#include "statistcis.ftl">
</body>
</html>