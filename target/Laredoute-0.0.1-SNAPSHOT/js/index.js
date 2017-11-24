$(function () {
	var LRIndex = {};
	LRIndex.bannerSlides = function () {
        if($("#index-banner") && $("#index-banner").length > 0) {
    		$("#index-banner").slidesjs({
                width: 1190,
                height: 560,
                play: {
                    active: false,
                    effect: "slide",
                    interval: 5000,
                    auto: true,
                    pauseOnHover: true,
                    restartDelay: 2500
                },
                pagination: {
                    active: true
                },
                navigation: {
                    active: true
                }
            });
        }
	};
	LRIndex.init = function () {
		this.bannerSlides();
	};
	 LRIndex.init();
});