<!-- 返回顶部按钮 -->
<button
        id="back-to-top"
        class="fixed bottom-6 right-6 w-12 h-12 bg-primary text-white rounded-full shadow-lg flex items-center justify-center opacity-0 invisible transition-all duration-300"
>
    <i class="ri-arrow-up-line text-xl"></i>
</button>
<footer class="bg-gray-900 text-white py-12" id="footer">
    <div class="container mx-auto px-4 md:px-6">
        <#include "footer-link-ext.ftl" />

        <div class="border-t border-gray-800 pt-8 flex flex-col md:flex-row justify-between items-center">
            <div class="text-gray-400 mb-4 md:mb-0">
                © 2025 ZrLog 博客程序 <a href="https://beian.miit.gov.cn/" class="text-gray-400 hover:text-white">蜀ICP备16023991号-1</a>
            </div>
            <#include "footer-links.ftl">
        </div>
    </div>
</footer>
<script>
    // 返回顶部按钮
    const backToTopButton = document.getElementById("back-to-top");
    window.addEventListener("scroll", () => {
        if (window.pageYOffset > 300) {
            backToTopButton.classList.remove("opacity-0", "invisible");
            backToTopButton.classList.add("opacity-100", "visible");
        } else {
            backToTopButton.classList.remove("opacity-100", "visible");
            backToTopButton.classList.add("opacity-0", "invisible");
        }
    });
    backToTopButton.addEventListener("click", () => {
        window.scrollTo({
            top: 0,
            behavior: "smooth",
        });
    });


    // 主题切换
    const themeSwitch = document.querySelector(".theme-switch input");

    // 页面加载时，根据 localStorage 设置初始主题
    if (localStorage.theme === "dark") {
        document.documentElement.classList.add("dark");
        themeSwitch.checked = true;
    }

    const userPreference = localStorage.getItem("theme");

    function applyTheme() {
        if (userPreference === "dark" || (!userPreference && window.matchMedia("(prefers-color-scheme: dark)").matches)) {
            document.documentElement.classList.add("dark");
            themeSwitch.checked = true;
        } else {
            document.documentElement.classList.remove("dark");
            themeSwitch.checked = false;
        }
    }

    // 初始化：加载页面时设置主题
    applyTheme();

    themeSwitch.addEventListener("change", function () {
        if (this.checked) {
            document.documentElement.classList.add('dark'); // ✅ 开启暗黑模式
            localStorage.theme = "dark";
        } else {
            document.documentElement.classList.remove('dark'); // ✅ 关闭暗黑模式
            localStorage.theme = "light";
        }
    });

    const btn = document.getElementById("toggleSidebar");
    const sidebar = document.getElementById("sidebar");
    const overlay = document.getElementById('overlay');

    function closeSidebar() {
        sidebar.classList.add('-translate-x-full');
        overlay.classList.add('hidden');
        setTimeout(() => {
            sidebar.classList.add('hidden');
        }, 300); // 等待动画结束再隐藏
    }

    overlay.addEventListener('click', closeSidebar);

    btn.addEventListener("click", () => {
        // 先取消隐藏
        sidebar.classList.remove('hidden');
        overlay.classList.remove('hidden');
        // 然后触发滑出
        setTimeout(() => {
            sidebar.classList.remove('-translate-x-full');
        }, 10);
    });

    // ESC 键也可关闭（可选）
    document.addEventListener('keydown', (e) => {
        if (e.key === 'Escape') {
            closeSidebar();
        }
    });
</script>
<#include "statistcis.ftl">
</body>
</html>
