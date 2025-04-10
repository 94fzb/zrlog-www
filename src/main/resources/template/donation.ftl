<section class="bg-gray-50" style="padding-bottom: 48px">
    <div class="container mx-auto px-4 md:px-6">
        <div class="col-md-12" style="padding-top: 20px">
            <div class="card">
                <h5 class="card-header">请作者喝杯咖啡
                    <small>（可在备注里注名昵称）</small>
                </h5>
                <div class="card-body donation-card">
                    <div style="display: flex;flex-flow: wrap;justify-content: space-evenly;gap: 12px">
                        <div class="card text-center">
                            <h5 class="card-header">微信</h5>
                            <div class="card-body" style="display:flex">
                                <img class="card-img-top" width="273px"
                                     src="${url}/assets/img/donation/wechat.png"/>
                            </div>
                        </div>
                        <div class="card text-center">
                            <h5 class="card-header">支付宝</h5>
                            <div class="card-body" style="display:flex">
                                <img class="card-img-top" width="273px"
                                     src="${url}/assets/img/donation/alipay.png"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12" style="padding-top: 20px">
                <div class="card">
                    <h5 class="card-header">捐赠列表</h5>
                    <div class="card-body">
                        <div style="border-radius: 4px;overflow: auto;border:1px solid #e5e7eb;padding-left: 10px">
                            <table class="auto-table"
                                   style="width:100%;min-width: 680px">
                                <thead>
                                <tr >
                                    <th style="height: 56px;text-align: start">金额</th>
                                    <th style="height: 56px;text-align: start">捐赠者</th>
                                    <th style="height: 56px;text-align: start">捐赠时间</th>
                                    <th style="height: 56px;text-align: start">留言</th>
                                </tr>
                                </thead>

                                <tbody>
                                <#list donations as donation>
                                    <tr style="height: 36px">
                                        <td>￥${donation.money}</td>
                                        <td style="white-space: nowrap"><a href="${donation.link}" target="_blank">${donation.name}</a></td>
                                        <td style="white-space: nowrap">${donation.createdDate}</td>
                                        <td>${donation.comment}</td>
                                    </tr>
                                </#list>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>