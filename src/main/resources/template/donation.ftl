<section class="py-16 bg-white dark:bg-black" id="donate">
    <div class="container mx-auto px-4 md:px-6">
        <div class="max-w-5xl mx-auto">
            <!-- 标题 -->
            <div class="text-center mb-12">
                <h2 class="text-3xl md:text-4xl font-bold text-gray-900 dark:text-white mb-4">支持项目</h2>
                <p class="text-lg text-gray-600 dark:text-gray-400">
                    如果 ZrLog 对您有帮助，欢迎请作者喝杯咖啡 ☕
                </p>
            </div>

            <!-- 二维码区域 -->
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-12">
                <div class="bg-gradient-to-br from-green-50 to-emerald-50 dark:from-green-900/20 dark:to-emerald-900/20 rounded-xl p-8 border border-green-200 dark:border-green-800 text-center">
                    <h3 class="text-xl font-bold text-gray-900 dark:text-white mb-4 flex items-center justify-center gap-2">
                        <i class="ri-wechat-pay-line text-2xl text-green-600 dark:text-green-400"></i>
                        微信支付
                    </h3>
                    <div class="bg-white rounded-lg p-4 inline-block">
                        <img src="${url}/assets/img/donation/wechat.png" alt="微信支付" class="w-64 h-64 mx-auto"/>
                    </div>
                    <p class="text-sm text-gray-600 dark:text-gray-400 mt-4">扫码支持开发</p>
                </div>

                <div class="bg-gradient-to-br from-blue-50 to-indigo-50 dark:from-blue-900/20 dark:to-indigo-900/20 rounded-xl p-8 border border-blue-200 dark:border-blue-800 text-center">
                    <h3 class="text-xl font-bold text-gray-900 dark:text-white mb-4 flex items-center justify-center gap-2">
                        <i class="ri-alipay-line text-2xl text-blue-600 dark:text-blue-400"></i>
                        支付宝
                    </h3>
                    <div class="bg-white rounded-lg p-4 inline-block">
                        <img src="${url}/assets/img/donation/alipay.png" alt="支付宝" class="w-64 h-64 mx-auto"/>
                    </div>
                    <p class="text-sm text-gray-600 dark:text-gray-400 mt-4">扫码支持开发</p>
                </div>
            </div>

            <!-- 捐赠列表 -->
            <div class="bg-gray-50 dark:bg-gray-900 rounded-xl p-6 md:p-8">
                <h3 class="text-2xl font-bold text-gray-900 dark:text-white mb-6 flex items-center gap-2">
                    <i class="ri-heart-3-line text-red-500"></i>
                    捐赠名单
                </h3>

                <div class="space-y-4">
                    <#list donations as donation>
                        <div class="bg-white dark:bg-gray-800 rounded-lg p-4 border border-gray-200 dark:border-gray-700 hover:border-blue-400 dark:hover:border-blue-600 transition-all">
                            <div class="flex flex-col md:flex-row md:items-center md:justify-between gap-3">
                                <!-- 左侧：捐赠者和金额 -->
                                <div class="flex items-center gap-4">
                                    <div class="w-12 h-12 bg-gradient-to-br from-red-400 to-pink-500 rounded-full flex items-center justify-center flex-shrink-0">
                                        <i class="ri-user-heart-line text-2xl text-white"></i>
                                    </div>
                                    <div>
                                        <div class="flex items-center gap-2">
                                            <a href="${donation.link}" target="_blank" 
                                               class="text-lg font-semibold text-blue-600 dark:text-blue-400 hover:text-blue-700 dark:hover:text-blue-300">
                                                ${donation.name}
                                            </a>
                                            <span class="px-2 py-0.5 bg-red-100 dark:bg-red-900/30 text-red-700 dark:text-red-300 text-sm font-medium rounded">
                                                ￥${donation.money}
                                            </span>
                                        </div>
                                        <div class="text-sm text-gray-500 dark:text-gray-400 mt-1">
                                            <i class="ri-calendar-line mr-1"></i>${donation.createdDate}
                                        </div>
                                    </div>
                                </div>

                                <!-- 右侧：留言 -->
                                <#if donation.comment?? && donation.comment?trim != ''>
                                    <div class="bg-gray-50 dark:bg-gray-700 rounded-lg px-4 py-2 max-w-md">
                                        <p class="text-sm text-gray-700 dark:text-gray-300 italic">
                                            "${donation.comment}"
                                        </p>
                                    </div>
                                </#if>
                            </div>
                        </div>
                    </#list>
                </div>
            </div>

            <!-- 感谢提示 -->
            <div class="mt-8 text-center">
                <p class="text-gray-600 dark:text-gray-400">
                    感谢每一位支持者的慷慨捐助 🙏
                </p>
            </div>
        </div>
    </div>
</section>