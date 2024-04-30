function parseQuery(queryString) {
    var query = {};
    var pairs = (queryString[0] === '?' ? queryString.substr(1) : queryString).split('&');
    for (var i = 0; i < pairs.length; i++) {
        var pair = pairs[i].split('=');
        query[decodeURIComponent(pair[0])] = decodeURIComponent(pair[1] || '');
    }
    return query;
}

$(function () {
    var qMap = parseQuery(window.location.search);
    if (qMap['from'] === undefined) {
        return;
    }
    if (qMap['upgrade-v3'] === undefined) {
        $(document.body).html(`<div className="container">
            <h3 style="text-align: center;padding-top: 120px">你可能运行的版本比较旧，请先升级版本后使用 <a
                href="https://blog.zrlog.com/update-version?from=tips">点击查看如何升级</a>
            </h3>
        </div>`)
        return;
    }
    $("#header").hide();
    $("#copyInfo").hide();
    $("#footerLink").hide();
    $("#github").attr("display","none!important");
    $.each($(".storeDetailLink"), function (i, e) {
        const href = $(e).attr("href");
        $(e).attr("href", href + "?from=" + qMap['from'] + "&upgrade-v3=" + qMap['upgrade-v3'])
    })
    $.each($(".storeInstallLink"), function (i, e) {
        const href = $(e).attr("href");
        $(e).attr("href", qMap['from'] + "/download?downloadUrl=" + href)
        $(e).text("安装")
    })
})
