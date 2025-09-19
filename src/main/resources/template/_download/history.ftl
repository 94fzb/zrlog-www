<section class="py-16 bg-gray-50 dark:bg-black">
    <div class="container mx-auto px-4 md:px-6" id="version">
        <div class="dark:bg-gray-900">
            <div class="table-responsive">
                <div class="card bg-white dark:bg-gray-900">
                    <h5 class="card-header">
                        历史版本
                    </h5>
                    <div class="card-body"  style="overflow:auto;padding: 0">
                        <table class="auto-table divide-y divide-gray-200" style="width:100%;min-width: 780px;">
                            <thead class="bg-gray-50 dark:bg-gray-900 dark:divide-gray-400">
                            <tr>
                                <th scope="col" class="px-2" style="height: 56px;text-align: start">版本</th>
                                <th scope="col" class="px-2" style="height: 56px;text-align: start">发布时间</th>
                                <th scope="col" class="px-2" style="height: 56px;text-align: start;white-space: nowrap">
                                    大小
                                </th>
                                <th scope="col" class="px-2" style="height: 56px;text-align: start">主要变更</th>
                                <th scope="col" class="px-2" style="height: 56px;text-align: start">操作</th>
                            </tr>
                            </thead>
                            <tbody class="bg-white dark:bg-gray-900 divide-y divide-gray-200 dark:divide-gray-400">
                            <#list downloads as download>
                                <tr style="height: 36px">
                                    <td style="white-space: nowrap" class="px-2 py-4">v${download.version}</td>
                                    <td style="white-space: nowrap" class="px-2 py-4">${download.releaseDate}</td>
                                    <td style="white-space: nowrap" class="px-2 py-4">${download.fileSize}</td>
                                    <td style="white-space: nowrap" class="px-2 py-4">${download.desc}</td>
                                    <td style="white-space: nowrap" class="px-2 py-4"><a class="text-primary"
                                                                                         href="${download.downloadUrl}">下载</a>
                                    </td>
                                </tr>
                            </#list>
                            </tbody>
                        </table>
                        <div class="mt-4 text-center mb-4">
                            <a
                                    href="${url}/changelog/index.html?ref=downloadUrl"
                                    class="text-primary hover:text-primary/80 inline-flex items-center"
                            >
                                <span>查看更多历史版本</span>
                                <i class="ri-arrow-right-line ml-1"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>