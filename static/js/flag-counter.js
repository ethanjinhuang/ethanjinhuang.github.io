(function () {
    var counter = document.getElementById("footerFlagCounter");
    if (!counter) return;

    function syncCounterTheme() {
        var dark = document.documentElement.classList.contains("dark") || document.body.classList.contains("dark");
        var source = dark ? counter.dataset.darkSrc : counter.dataset.lightSrc;
        if (counter.getAttribute("src") !== source) {
            counter.setAttribute("src", source);
        }
    }

    // Enhance the visible fallback image after site theme initialization.
    syncCounterTheme();
    var observer = new MutationObserver(syncCounterTheme);
    observer.observe(document.documentElement, { attributes: true, attributeFilter: ["class"] });
    observer.observe(document.body, { attributes: true, attributeFilter: ["class"] });
})();
