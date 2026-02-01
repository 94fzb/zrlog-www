<div class="flex flex-col sm:flex-row items-center justify-center gap-6 py-4" id="star-info">
    <!-- GitHub Star Button -->
    <a href="https://github.com/94fzb/zrlog" target="_blank"
       class="group relative flex items-center gap-4 px-5 py-2.5 bg-white/50 dark:bg-white/5 backdrop-blur-xl border border-gray-200/50 dark:border-white/10 rounded-2xl hover:border-blue-400 dark:hover:border-blue-500 transition-all duration-300 hover:shadow-2xl hover:shadow-blue-500/10 active:scale-95">
        <div class="flex items-center justify-center w-9 h-9 rounded-xl bg-gray-900 shadow-lg shadow-black/10">
            <i class="ri-github-fill text-xl text-white"></i>
        </div>
        <div class="flex flex-col items-start pr-2">
            <div class="flex items-center gap-2 mb-0.5">
                <span class="text-xs font-bold text-gray-400 dark:text-gray-500 tracking-wider">GitHub 仓库</span>
                <span id="github-stars-count" class="text-xs font-bold text-blue-600 dark:text-blue-400 bg-blue-50 dark:bg-blue-900/30 px-1.5 py-0.5 rounded-md min-w-[32px] text-center">...</span>
            </div>
            <div class="flex items-center gap-1.5">
                <span class="text-sm font-black text-gray-900 dark:text-white">前往 GitHub 点赞</span>
                <i class="ri-star-fill text-yellow-400 text-xs group-hover:rotate-[30deg] transition-transform"></i>
            </div>
        </div>
    </a>

    <!-- Gitee Star Button -->
    <a href="https://gitee.com/94fzb/zrlog" target="_blank"
       class="group relative flex items-center gap-4 px-5 py-2.5 bg-white/50 dark:bg-white/5 backdrop-blur-xl border border-gray-200/50 dark:border-white/10 rounded-2xl hover:border-red-400 dark:hover:border-red-500 transition-all duration-300 hover:shadow-2xl hover:shadow-red-500/10 active:scale-95">
        <div class="flex items-center justify-center w-9 h-9 rounded-xl bg-[#c71d23] shadow-lg shadow-red-900/10">
            <svg viewBox="0 0 1024 1024" class="w-5 h-5 fill-white" xmlns="http://www.w3.org/2000/svg"><path d="M512 1024C230.4 1024 0 793.6 0 512S230.4 0 512 0s512 230.4 512 512-230.4 512-512 512z m259.2-569.6H502.4q-19.2 0-19.2 19.2v64q0 19.2 19.2 19.2h160q19.2 0 19.2 19.2v64q0 19.2-19.2 19.2H425.6q-19.2 0-19.2-19.2v-217.6q0-19.2 19.2-19.2h345.6q19.2 0 19.2-19.2v-64q0-19.2-19.2-19.2H342.4q-44.8 0-44.8 44.8v339.2q0 44.8 44.8 44.8h428.8q44.8 0 44.8-44.8v-112q0-44.8-44.8-44.8z"/></svg>
        </div>
        <div class="flex flex-col items-start pr-2">
            <div class="flex items-center gap-2 mb-0.5">
                <span class="text-xs font-bold text-gray-400 dark:text-gray-500 tracking-wider">Gitee 仓库</span>
                <span id="gitee-stars-count" class="text-xs font-bold text-red-600 dark:text-red-400 bg-red-50 dark:bg-red-900/30 px-1.5 py-0.5 rounded-md min-w-[32px] text-center">...</span>
            </div>
            <div class="flex items-center gap-1.5">
                <span class="text-sm font-black text-gray-900 dark:text-white">前往 Gitee 关注</span>
                <i class="ri-heart-fill text-red-500 text-xs group-hover:scale-125 transition-transform"></i>
            </div>
        </div>
    </a>
</div>

<script>
(function() {
    async function fetchStars() {
        // GitHub
        try {
            const ghResponse = await fetch('https://api.github.com/repos/94fzb/zrlog');
            if (ghResponse.ok) {
                const data = await ghResponse.json();
                document.getElementById('github-stars-count').innerText = (data.stargazers_count / 1000).toFixed(1) + 'K';
            }
        } catch (e) {
            document.getElementById('github-stars-count').innerText = '5.0K';
        }

        // Gitee (Using a slightly different approach as Gitee CORS can be strict, or fallback to a sensible static number)
        try {
            const giteeResponse = await fetch('https://gitee.com/api/v5/repos/94fzb/zrlog');
            if (giteeResponse.ok) {
                const data = await giteeResponse.json();
                document.getElementById('gitee-stars-count').innerText = (data.stargazers_count / 1000).toFixed(1) + 'K';
            }
        } catch (e) {
            document.getElementById('gitee-stars-count').innerText = '1.2K';
        }
    }
    fetchStars();
})();
</script>
