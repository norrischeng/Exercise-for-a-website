/**

 * 图片轮播对象

 * @param options

 * @constructor

 */

function Banner(options){

    this.leftBtn = options.leftBtn;//左按钮（JQuery元素对象）

    this.rightBtn = options.rightBtn;//右按钮（JQuery元素对象）

    this.bannerBox = options.bannerBox;//主体框（JQuery元素对象）不能为空

    this.banner = options.banner;//轮播对象（数组JQuery元素对象）不能为空

    this.indexBtn = options.indexBtn;//快捷按钮（数组JQuery元素对象）

    this.indexBtnCurrent = options.indexBtnCurrent;//当前快捷按钮样式

    this.autoPlay = options.autoPlay || !1;//是否自动播放

    this.autoPlayTime = options.autoPlayTime || 2000;//自动播放间隔时间

    this.scrollSpeed = options.scrollSpeed || 500;//轮播速度

    this.scrollAnimate = options.scrollAnimate || "opacity";//轮播效果

    this.init().bindEvent();

}

Banner.prototype = {

    init : function(){

        this.banner.not(":first").css({display: "none",opacity: 0,filter: "alpha(opacity=0)"});

        this.currentIndex = 0;

        this.targetIndex = 0;

        this.bannerNum = this.banner.length;

        this.autoPlay && this.auto();

        return this;

    },

    bindEvent : function(){

        var _this = this;

        this.leftBtn && this.leftBtn.bind("click",function(){

            _this.targetIndex--;

            _this.targetIndex < 0 && (_this.targetIndex = _this.bannerNum - 1);

            _this.scroll();

        });

        this.rightBtn && this.rightBtn.bind("click",function(){

            _this.targetIndex++;

            _this.targetIndex >= _this.bannerNum && (_this.targetIndex = 0);

            _this.scroll();

        });

        this.indexBtn && this.indexBtn.bind("mouseover",function(){

            //_this.targetIndex != $(this).index() && (_this.targetIndex = $(this).index(),_this.scroll());

        });

        this.bannerBox.bind("mouseenter",function(){

            _this.autoPlay && clearInterval(_this.timer);

            _this.leftBtn.show();

            _this.rightBtn.show();

        }).bind("mouseleave",function(){

            _this.autoPlay && _this.auto();

            _this.leftBtn.show();

            _this.rightBtn.show();

        });

        return this;

    },

    scroll : function(){

        var _this = this;

        this.indexBtn.removeClass(this.indexBtnCurrent).eq(this.targetIndex).addClass(this.indexBtnCurrent);

        var current = this.banner.eq(this.currentIndex).show();

        var target = this.banner.eq(this.targetIndex).show();

        switch (this.scrollAnimate){

            case "opacity" :

                target.css("opacity",0);

                current.stop().animate({opacity:0},_this.scrollSpeed,function(){

                    current.hide();

                });

                target.stop().animate({opacity:1},_this.scrollSpeed);

        }

        this.currentIndex = this.targetIndex;

    },

    auto : function(){

        var _this = this;

        this.timer && clearInterval(this.timer);

        this.timer = setInterval(function(){

            _this.targetIndex++;

            _this.targetIndex >= _this.bannerNum && (_this.targetIndex = 0);

            _this.scroll();

        },_this.autoPlayTime);

    }

};




