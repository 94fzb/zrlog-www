<section class="py-16 bg-gray-50">
    <div class="container mx-auto px-4 md:px-6" id="version">
        <div style="padding-top: 10px">
            <div class="table-responsive">
                <div class="card">
                    <h5 class="card-header">
                        历史版本
                    </h5>
                    <div class="card-body">
                        <div style="border-radius: 4px;overflow: auto;border:1px solid #e5e7eb">
                            <table class="auto-table divide-y divide-gray-200" style="width:100%;min-width: 780px">
                                <thead class="bg-gray-50">
                                <tr>
                                    <th scope="col" class="px-2" style="height: 56px;text-align: start">版本</th>
                                    <th scope="col" class="px-2" style="height: 56px;text-align: start">发布时间</th>
                                    <th scope="col" class="px-2" style="height: 56px;text-align: start;white-space: nowrap">大小</th>
                                    <th scope="col" class="px-2" style="height: 56px;text-align: start">主要变更</th>
                                    <th scope="col" class="px-2" style="height: 56px;text-align: start">操作</th>
                                </tr>
                                </thead>
                                <tbody class="bg-white divide-y divide-gray-200">
                                <#list downloads as download>
                                    <tr style="height: 36px">
                                        <td style="white-space: nowrap" class="px-2 py-4">v${download.version}</td>
                                        <td style="white-space: nowrap" class="px-2 py-4">${download.releaseDate}</td>
                                        <td style="white-space: nowrap" class="px-2 py-4">${download.fileSize}</td>
                                        <td style="white-space: nowrap" class="px-2 py-4">${download.desc}</td>
                                        <td style="white-space: nowrap" class="px-2 py-4"><a class="text-primary" href="${download.downloadUrl}">下载</a></td>
                                    </tr>
                                </#list>
                                </tbody>
                            </table>
                        </div>
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