<button style="width: 180px" type="button" class="btn btn-default btn-cta btn btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" href="#download">
    <svg t="1519487162038" class="icon" style="" viewBox="0 0 1024 1024" version="1.1"
         xmlns="http://www.w3.org/2000/svg" p-id="1928" width="18"
         height="18">
        <defs>
            <style type="text/css"></style>
        </defs>
        <path d="M708.923077 512c0 65.220923-52.932923 118.153846-118.153846 118.153846l-157.538462 0c-65.220923 0-118.153846-52.932923-118.153846-118.153846L315.076923 118.153846c0-65.260308 52.932923-118.153846 118.153846-118.153846l157.538462 0c65.220923 0 118.153846 52.893538 118.153846 118.153846L708.923077 512z"
              p-id="1929" fill="#e6e6e6"></path>
        <path d="M599.000615 749.095385c-86.843077 86.882462-85.779692 86.646154-172.465231 0l-258.678154-258.678154C120.32 442.722462 131.229538 433.230769 186.761846 433.230769l652.248615 0c50.136615 0 66.323692 9.491692 18.747077 57.147077L599.000615 749.095385z"
              p-id="1930" fill="#e6e6e6"></path>
        <path d="M945.230769 748.307692l0 157.538462c0 21.700923-17.644308 39.384615-39.384615 39.384615L118.153846 945.230769c-21.740308 0-39.384615-17.683692-39.384615-39.384615l0-157.538462L0 748.307692l0 157.538462c0 65.220923 52.932923 118.153846 118.153846 118.153846l787.692308 0c65.220923 0 118.153846-52.932923 118.153846-118.153846l0-157.538462L945.230769 748.307692z"
              p-id="1931" fill="#e6e6e6"></path>
    </svg>
    <span style="padding-left: 4px">下载（zip）</span>
</button>

<ul class="dropdown-menu">
    <li><a class="dropdown-item" href="${last.linuxDownloadUrl}">Linux x86_64（无需 Java 环境）</a></li>
    <li><a class="dropdown-item" href="${last.windowsDownloadUrl}">Windows x86_64（无需 Java 环境）</a></li>
    <li><a class="dropdown-item" href="${last.macDownloadUrl}">macOS Intel（无需 Java 环境）</a></li>
    <li><a class="dropdown-item" href="${last.macArmDownloadUrl}">macOS Apple Silicon（无需 Java 环境）</a></li>
    <li>
        <hr class="dropdown-divider">
    </li>
    <li><a class="dropdown-item" href="${last.downloadUrl}">平台通用 (需 Java >= 21)</a></li>
</ul>