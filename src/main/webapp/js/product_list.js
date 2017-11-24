$.fn.dropdown = function(options) {
    return this.each(function() {
        var $dropdownGroup = $(this);
        var $dropdownBar = $dropdownGroup.find(".dropdown");
        $dropdownBar.hover(function(event) {
            var $target = $(event.currentTarget);
            $target.find(".dropdown-content").slideDown(150,function () {
                $target.addClass("dropdown-active");
            });
        },function (event) {
            var $target = $(event.currentTarget);
            $target.find(".dropdown-content").slideUp(150,function () {
                $target.removeClass("dropdown-active");
            });
            
        });


    });
};
$(function() {
    var ProductList = {};
    ProductList.initDropdown = function() {
        $(".dropdown-group").dropdown();
    };
    ProductList.initCustomScrollbar = function() {
        if ($.browser.msie && $.browser.version == "7.0") {} else {
            $(".mCustomScrollbar").each(function() {
                $this = $(this);
                $this.mCustomScrollbar({
                    theme: "dark",
                    scrollInertia: 0,
                    setHeight: $this.attr("data-height"),
                    autoHideScrollbar: Boolean($this.attr("data-autoHideScrollbar"))
                });
            })
        }
    };
    ProductList.initFixedDropdown = function() {
        var $fixedFilter = $("#pl-filter"),
            timer;
        if($fixedFilter.length ==0 ) return false;
        var staticTop = $fixedFilter.position().top+10;//fixed状态下有10像素padding
        if($fixedFilter.find(".pl-filter-dropdown").length !=0){
            $(window).bind("scroll", function() {
                if (timer) {
                    clearTimeout(timer);
                }
                timer = setTimeout(function() {
                    if ($(window).scrollTop() >= staticTop) {
                        if($fixedFilter.find(".pl-filter-tag").length == 0){//跟屏时，需要给产品添加padding,以防抖动
                            $("#pl-grid-ctn").addClass("without-filter-tag");
                        }else{
                             $("#pl-grid-ctn").addClass("with-filter-tag");
                        }
                        $fixedFilter.addClass("fixed-filter").fadeIn();
                    } else {
                        if($fixedFilter.find(".pl-filter-tag").length == 0){
                            $("#pl-grid-ctn").removeClass("without-filter-tag");
                        }else{
                             $("#pl-grid-ctn").removeClass("with-filter-tag");
                        }
                        $fixedFilter.removeClass("fixed-filter").attr("style","");
                    }
                }, 100);
            });
        }
    };
    ProductList.initGrid = {
        loadedColors: {},
        gridHover: function() {
            var timer;
            var hover_start ;
            $(".pl-grid > li").hover(function(event) {
                hover_start = new Date().getTime();
                timer = setTimeout(function() {
                    var target = $(event.currentTarget);
                    var productId = target.attr("data-productid");
                    if (!ProductList.initGrid.loadedColors[productId]) {
                        ProductList.initGrid.loadedColors[productId] = {
                            isLoad: true
                        };
                    }
                    if (ProductList.initGrid.loadedColors[productId]["isLoad"]) {
                        ProductList.initGrid.loadedColors[productId]["isLoad"]=false;
                        ProductList.initGrid.getColorData(productId, target);
                    }
                }, 200);
            },function (event) {
                var hover_end = new Date().getTime();
                var hover_duration = hover_end-hover_start;
                if(hover_duration < 200){
                    timer ? clearTimeout(timer) : false;
                }
            });
        },
        getColorData: function(productId, target) {
            $.ajax({
                url: window.ROOT_URL + "o_productlink/product/loadcolours",
                type: "get",
                dataType: "json",
                data: {
                    product_id: productId
                },
                success: function(data) {
                    if (data.ret == 0 && data.colors.length != 0) {
                        ProductList.initGrid.renderHtml(productId, data.colors, target);
                    } 
                },
                error: function(data) {
                    console.log(data.responseText);
                }
            });
        },
        renderHtml: function(productId, colors, target) {
            var docFragment = document.createDocumentFragment();
            var ul = document.createElement("ul");
            ProductList.initGrid.initToggleImg(ul);
            ul.className = "pl-color dropdown-color";
            for (var i = 0; i < colors.length; i++) {
                if (i < 6) {
                    var li = document.createElement("li");
                    li.setAttribute("data-src", colors[i]["imgUrl"]);
                    li.setAttribute("data-producturl",colors[i]["productUrl"]);
                    li.className = "set-colour"
                    var colorCircle = document.createElement("i");
                    if (colors[i]["color"] == "other") {
                        colorCircle.className = "circle colorful";
                    } else {
                        colorCircle.className = "circle";
                        colorCircle.style.backgroundColor = "rgb("+colors[i]["color"]+")";
                    }
                    li.appendChild(colorCircle);
                    ul.appendChild(li);
                } else {
                    var li = document.createElement("li");
                    var productLink = document.createElement("a");
                    productLink.href = target.find("a").attr("href");
                    productLink.innerHTML = "6+";
                    productLink.className = "circle"
                    li.appendChild(productLink);
                    ul.appendChild(li);
                    break;
                }
            }
            docFragment.appendChild(ul);
            target.get(0).appendChild(docFragment);
        },
        initToggleImg: function(element) {
            $(element).click(function(event) {
                if (event.target != event.currentTarget) {
                    var target = $(event.target);
                    target.is("li") ? true : target = target.parent();
                    target.addClass("selected").siblings("li").removeClass("selected");
                    var imgUrl = target.attr("data-src");
                    var productUrl = target.attr("data-producturl");
                    if (imgUrl != "false") {
                        var plImage = target.parentsUntil(".pl-grid").find(".pl-image");
                        plImage.attr("src", imgUrl);
                    }
                    if(productUrl){
                        $(event.currentTarget).parent().find("a").attr("href",productUrl);
                    }
                }
            });
        }
    };
    ProductList.initColorPicker = function() {
        var colorPicker = $(".product-color-picker");
        colorPicker.each(function() {
            var $this = $(this);
            $this.bind("click", function(event) {
                var target = event.target || event.srcElement;
                if (target != event.currentTarget) {
                    target = $(target);
                    target.is("li") ? "" : target = target.parent();
                    if (!target.hasClass("selected")) {
                        $this.parent().find(".pl-image").attr("src", target.attr("data-src"));
                        $this.find(".selected").removeClass("selected");
                        target.addClass("selected");
                    }
                };
            })
        });
    };
    ProductList.initLazyload = function () {
        $(".lazyload").lazyload({threshold:200});
    };
    ProductList.init = function() {
        this.initLazyload();
        this.initDropdown();
        this.initCustomScrollbar();
        this.initFixedDropdown();
        this.initColorPicker();
        this.initGrid.gridHover();
    };
    ProductList.init();
});
