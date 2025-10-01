<section class="bg-gray-50 dark:bg-black" style="padding-bottom: 48px" id="donate">
    <div class="container mx-auto px-4 md:px-6 pt-4">
        <div class="card bg-white dark:bg-gray-900">
            <h5 class="card-header">请作者喝杯咖啡
                <small>（可在备注里注名昵称）</small>
            </h5>
            <div class="card-body donation-card">
                <div style="display: flex;flex-flow: wrap;justify-content: space-evenly;gap: 12px">
                    <div class="card bg-white dark:bg-gray-900 text-center">
                        <h5 class="card-header">微信</h5>
                        <div class="card-body" style="display:flex">
                            <img class="card-img-top" width="273px"
                                 src="${url}/assets/img/donation/wechat.png"/>
                        </div>
                    </div>
                    <div class="card bg-white dark:bg-gray-900 text-center">
                        <h5 class="card-header">支付宝</h5>
                        <div class="card-body" style="display:flex">
                            <img class="card-img-top" width="273px"
                                 src="${url}/assets/img/donation/alipay.png"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card bg-white dark:bg-gray-900 mt-4">
            <h5 class="card-header">捐赠列表</h5>
            <div class="card-body" style="padding:0;overflow: hidden">
                <div style="overflow: auto;">
                    <table class="auto-table divide-y divide-gray-200 dark:divide-gray-700 dark:bg-gray-900 mb-1"
                           style="width:100%;min-width: 680px">
                        <thead class="bg-gray-50 dark:bg-gray-900 dark:divide-gray-400">
                        <tr>
                            <th scope="col" class="px-2" style="height: 56px;text-align: start">金额</th>
                            <th scope="col" class="px-2" style="height: 56px;text-align: start">捐赠者</th>
                            <th scope="col" class="px-2" style="height: 56px;text-align: start">捐赠时间</th>
                            <th scope="col" class="px-2" style="height: 56px;text-align: start">留言</th>
                        </tr>
                        </thead>

                        <tbody class="bg-white divide-y divide-gray-200 dark:divide-gray-700 dark:bg-gray-900">
                        <#list donations as donation>
                            <tr style="height: 36px">
                                <td class="px-2 py-4">￥${donation.money}</td>
                                <td class="px-2 py-4 text-primary" style="white-space: nowrap"><a
                                            href="${donation.link}" target="_blank">${donation.name}</a></td>
                                <td class="px-2 py-4" style="white-space: nowrap">${donation.createdDate}</td>
                                <td class="px-2 py-4">${donation.comment}</td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>