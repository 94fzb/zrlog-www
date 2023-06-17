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
                <span class="copyright">&copy; 2023 ZrLog博客程序
               
                </span>
                <a href="https://beian.miit.gov.cn/" style="margin-left:8px">蜀ICP备16023991号-1
                </a>
            </div>
            <div class="col-lg-12 footer-below" style="margin-top:8px">
                <a href="https://www.zrlog.com">www.zrlog.com</a>
            </div>
        </div>
    </div>
</footer>
<#include "statistcis.ftl">
</body>
</html>
