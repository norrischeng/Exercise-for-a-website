/**************************  ui模块 ************************************/
/**
 * 结账页ui
 */
var AccountCartView = (function($){
    var o;
    o = {};

    /**
     * 信息提示
     */
    o.msg = function (msg, type) {
        easyDialog.open({
            container: {
                header: '提示',
                content: msg,
                yesFn: function () {
                },
                noFn: false
            }
        });
    };

    /**
     * 商品数量错误提示
     */
    o.show_error = function (ele, msg) {
        var errorTip;
        $(ele).parents('tr').find('p.errorTip').html(msg);
    };

    /**
     * 商品数量错误提示隐藏
     */
    o.hide_error = function (ele) {
        $(ele).parents('tr').find('p.errorTip').html("");
    };

    /**
     * 更新购物车合计信息
     */
    o.initInfo = function (data) {

        if (String(data["ship"]) !== 'undefined') {
            $('.value', "#quote_shipping").html(data["ship"]);
        }
        if (String(data["discount"]) !== 'undefined') {
            $("#discount").html(-data["discount"] + '€');
        }
        /*折扣分开显示*/
        if (String(data["shipping_discount_amount"]) !== 'undefined') {
            $("#shipping_discount_amount .value").html(data["shipping_discount_amount"]);
        }
        if (String(data["product_discount_amount"]) !== 'undefined') {
            $("#product_discount_amount .value").html(data["product_discount_amount"]);
        }
        if(data["shipping_discount_amount"] <=0){
           $("#shipping_discount_amount").parents('.cart-details-line').hide();
        }else{
            $("#shipping_discount_amount").parents('.cart-details-line').show();
        }
        if(data["product_discount_amount"] <=0){
            $("#product_discount_amount").hide();
        }else{
            $("#product_discount_amount").show();
        }
        if (String(data["subtotal"]) !== 'undefined') {
            if ($('.value', "#quote_subtotal ").length) {
                $('.value', "#quote_subtotal ").text(data["subtotal"]);
            } else {
                $('#quote').val(data["subtotal"])
            }
        }
        if (String(data["grandtotal"]) !== 'undefined') {
            $(".all-price .main-total .all-grandtotal").text(data["grandtotal"]);
        }
        $("#total_weight").text(data["weight"]);
    };

    /**
     * 计算购物车中单行商品的总价。先获取单价，然后再乘以个数。
     */
    o.updateTableInfo = function (itemsData, itemPriceArray) {
        for (var id in itemPriceArray) {
            var $itemContain, itemPrice, qty, subtotal, currency, weight;
            $itemContain = $("#" + id);

            //从参数的qty里面获取数量而不是直接获取当前input。因为用户做了操作提交请求后还会改变值。
            qty = Number(itemsData[id].qty);
            subtotal = (Number(itemPriceArray[id]["lastPrice"]) * qty).toFixed(2);
            currency = $('#currency').val();  //货币符号
            weight = itemPriceArray[id]["itemWeight"];

            $itemContain.find('.qty').val(qty);
            $itemContain.find('.subtotal .cart-price').text(currency + subtotal);
            $("#calculate-weight-item-id" + id).html(weight);

        }
    };

    /**
     * 获取当前item的数量和id
     */
    o.getItemsData = function () {
        var itemsData = {};
        $('.country-part table .tr-selected').each(function () {
            var item = {};
            item.id = $(this).attr('id');
            item.qty = $(this).find('.qty').val();

            itemsData[item.id] = item;
        });
        return itemsData;
    };

    /**
     * 把所有购物车里面的数据解析为json,用于ajax使用(用于选择商品的数据)
     */
    o.getAllItemsDataChose = function () {
        var data,$container,good_info,isSelecteds,itemIds;
        isSelecteds = [];
        itemIds = [];
        data = {};
        good_info = {};
        $container = $(".supplier");

        //遍历获取商品信息
        $container.find('.item-checkbox').each(function (index) {
            isSelecteds[index] = $(this).prop('checked');
            itemIds[index] = $(this).attr('data-item');
        });

        good_info["parterId"] = $container.attr("id");
        good_info["shipping_method"] = $container.find('.shipping_method option:selected').val();
        good_info["id"] = itemIds.join("_");
        good_info["isSelected"] = isSelecteds.join("_");

        data["timestamp"] = new Date().getTime();
        data["Data"] = [good_info];
        return JSON.stringify(data);
    };

    /**
     * 获取所有item的id和数量等信息
     */
    o.getAllItemJsonData = function () {
        var $contain,data,good_info,itemInfo,good_list;
        $contain = $(".supplier");
        data = {};
        good_info = {};
        good_list = $contain.find('.qty');
        itemInfo = [];

        //获取选择商品的信息
        for (var i = 0; i < good_list.length; i++) {
            itemInfo[i] = {
                id: good_list.eq(i).parents('tr').attr('id'),
                qty: good_list.eq(i).val(),
                isSelected: good_list.eq(i).parents('tr').find('.item-checkbox').prop('checked')
            };
        }

        good_info["parterId"] = $contain.attr("id");
        good_info["shipping_method"] = $contain.find('.shipping_method option:selected').val();
        good_info["items"] = itemInfo;

        data["timestamp"] = new Date().getTime();
        data["Data"] = [good_info];
        return JSON.stringify(data);
    };

    /**
     * ajax过程中禁用按钮
     */
    o.beforeSend = function () {
        //禁用按钮
        $('#AccountButton').addClass("disabled")
            .attr("disabled", "disabled");
    };

    /**
     * ajax完成后启用按钮
     */
    o.complete = function () {
        //启用按钮
        $('#AccountButton').removeClass("disabled")
            .removeAttr("disabled");
    };
    return o;
}(jQuery));

/**
 * 订单确认页ui
 */
var OrderPageView = function ($) {
    return {
        init_pay_info: function (d) {
            var $html;
            d.total && jQuery(".should-pay .fee").find('strong').html(d.total);
            d.ship && jQuery(".computed-price p").eq(1).find('strong').html(d.ship);
            if (d.discount){
                $html = $(d.discount);
                $html.html("-" + $html.html());
                jQuery("#discount").html($html[0]);
            }
        },
        msg: function (msg, type) {
            easyDialog.open({
                container: {
                    header: '提示',
                    content: msg,
                    yesFn: function () {
                    },
                    noFn: false
                }
            });
        },
        beforeSend: function(){
            $("#onestepcheckout-place-order").attr("disabled","disabled").addClass("disabled");
        },
        complete:function(){
            $("#onestepcheckout-place-order").removeAttr("disabled","disabled").removeClass("disabled");
        }
    }
}(jQuery);

/**
 * 登录注册ui
 */
var PageLoginAndRegisterView = function ($) {
    return {
        show_error: function ($ele, msg) {
            // ele为验证不通过的表单，msg为表单的错误信息
            var $tip = $ele.siblings(".validation-advice");
            $tip.html(msg);
            $tip.show();
            $ele.addClass("validation-failed");
        },
        hide_error: function ($ele) {
            var $tip = $ele.siblings(".validation-advice");
            $tip.hide();
            $ele.removeClass("validation-failed");
        }
    }
}(jQuery);

/**
 * 地址管理页ui
 */
var PageAddressView;
PageAddressView = (function ($) {
    var o = {};

    o.show_error = function ($ele, msg) {
        $ele.siblings(".adck-tip").html(msg).show();
    };

    o.hide_error = function ($ele) {
        $ele.siblings(".adck-tip").html("").hide();
    };

    return o
}(jQuery));

/**
 * 身份验证ui
 */
var IdValidatorView = (function ($) {
    var o, $name, $is_confirm, $contain, $pass_tip, $need_tip, $success_img, $input, $ing_ele, $fail_msg, $id_input;
    o = {};
    $name = $('#receiver');
    $is_confirm = $("#autonym_bool");
    $contain = $("#certification");
    $pass_tip = $contain.find(".pass-validate");
    $need_tip = $("#idnum_text");
    $success_img = $contain.find(".J_succeed");
    $input = $("#J_card_show");
    $ing_ele = $contain.find(".validating");
    $fail_msg = $contain.find(".prompt.restrictions_guo");
    $id_input = $("#receiver-id");

    o.confirm_passed = function (name) {
        $contain.show();
        $success_img.show();
        $pass_tip.show();

        $need_tip.hide();
        $input.hide();
        $ing_ele.hide();
        //全局验证状态设为已验证
        $name.html(name);
        $is_confirm.val(1);
    };
    o.need_confirm = function (name) {
        $contain.show();
        $need_tip.show();
        $input.show();

        $pass_tip.hide();
        $success_img.hide();
        $fail_msg.hide();
        $ing_ele.hide();

        $name.html(name);
        $is_confirm.val(0);
        $id_input.val("");

    };
    o.confirm_needless = function () {
        $contain.hide();

        $is_confirm.val(1);
    };
    o.confirm_fail = function (msg) {
        $pass_tip.hide();
        $success_img.hide();
        $ing_ele.hide();

        $input.show();
        $need_tip.show();
        $fail_msg.html(msg).show();

        $is_confirm.val(0);
    };
    o.confirming = function () {
        $fail_msg.hide();
        $ing_ele.show();
    };
    return o;
})(jQuery);
/************************** ui end ************************************/

/************************* 登录注册页  *******************************************/
jQuery(function () {
    var $log_button, $register_button;
    $log_button = jQuery("#PageLogin");
    $register_button = jQuery("#PageRegister");

    //input focus 时的交互
    jQuery('#login-form, #form-validate').find('.input-text').on('blur, keyup', function () {
        var $ = jQuery;
        if ($(this).val()) {
            $(this).parents('li').find('label').hide();
        } else {
            $(this).parents('li').find('label').show();
        }

    });

    //登录
    if ($log_button.length) {
        //$log_button.on("click", function (e) {
        //    var data;
        //    data = {
        //        password: jQuery("#LoginPwd"),
        //        email: jQuery("#LoginEmail")
        //    };
        //    if (!PageLoginConfirm(PageLoginAndRegisterView, data)) {
        //        e.preventDefault();
        //    }
        //});
        jQuery('#login-form').validator({
            isErrorOnParent: true,
            errorCallback:function(){
                if(sa_enabled) { //神策登录信息埋点
                    $('.error .validation-advice').not('.reg-agree .validation-advice').each(function() {
                          if ($(this).text()) {
                                indexSensors.login('union', [$(this).text()]);
                          }
                    })
                }
            }
        });
        //用定时器去掉placeholder
        setInterval(function () {
            jQuery('.input-text').each(function () {
                if (!jQuery(this).val()) {
                    jQuery(this).parents('li').find('label').show();
                } else {
                    jQuery(this).parents('li').find('label').hide();
                }
            });
        }, 50);
    }

    //注册
    if ($register_button.length) {
        //$register_button.on("click", function (e) {
        //    var data;
        //    data = {
        //        email: jQuery("#EmailAddress"),
        //        password: jQuery("#RPassword"),
        //        confirm_password: jQuery("#RConfirmPW"),
        //        nick_name: jQuery("#firstname")
        //    };
        //    if (!PageRegisterConfirm(PageLoginAndRegisterView, data)) {
        //        e.preventDefault();
        //    }
        //})
        jQuery('#form-validate').validator({isErrorOnParent: true});
        $register_button.parents('form').on('submit', function (e) {
            var $ = jQuery,
                $pass1 = $('#RPassword'),
                $pass2 = $('#RConfirmPW');
            if(sa_enabled) { //神策注册信息埋点
                $('.error .validation-advice').not('.reg-agree .validation-advice').each(function() {
                      if ($(this).text()) {
                            indexSensors.register('union', [$(this).text()]);
                      }
                })
            }
            if ($.trim($pass1.val()) == $.trim($pass2.val())) {
                $pass2.removeClass('error');
            } else {
                e.preventDefault();
                $pass2.parent().addClass('error');
            }
        });
        //用定时器去掉placeholder
        setInterval(function () {
            jQuery('.input-text').each(function () {
                if (!jQuery(this).val()) {
                    jQuery(this).parents('li').find('label').show();
                } else {
                    jQuery(this).parents('li').find('label').hide();
                }
            });
        }, 50);
    }

    //忘记密码
    if (jQuery('.account-findpass').length) {
        jQuery('#form-validate').validator({isErrorOnParent: true});
    }
});

/************************* 登录注册页 end  *******************************************/

/**************************  个人中心 ************************************/

//jQuery(function () {
//    /**
//     * 地址管理保存地址
//     */
//    !function ($) {
//        var $button, data, check_handle, $form;
//        $button = $("#PageSaveAddress");
//        if (!$button.length) {
//            return
//        }
//        //获取相关元素
//        $form = $("#PageAddressForm");
//        data = {
//            name: $("#firstname"),
//            country: $("#country"),
//            region: $("#region_id"),
//            city: $("#city"),
//            s_county: $("#s_county"),
//            email: $("#email"),
//            phone: $("#telephone"),
//            postcode: $("#postcode"),
//            street: $("#street_1")
//        };
//
//        //验证初始化
//        check_handle = AddressConfirm(PageAddressView, data);
//
//        //初始化完成启用按钮
//        $button.removeAttr("disabled");
//
//        $button.on("click", function (e) {
//            var result;
//
//            e.preventDefault();
//
//            //验证表单
//            result = check_handle.check();
//
//            if (result) {
//                //非ajax更改页面表单值
//                $("#country_id").val(result["country_id"]);
//                $("#verify").val(result["verify"]);
//
//                $form.submit();
//
//                //防止重复提交
//                $button.attr("disabled", "disabled");
//            }
//        });
//    }(jQuery);
//});


/**
 * 修改用户信息
 */
jQuery(function () {
    var ele_data;
    var $button = jQuery("#EditUserInfo");
    if ($button.length) {
        ele_data = {
            new_pw: jQuery("#EditPassword"),
            confirm_pw: jQuery("#EditConfirmPassWord"),
            current_pw: jQuery("#current_password")
        };
        $button.on("click", function (e) {
            if (jQuery("#change_password").prop("checked") && !EditInfoConfirm(PageLoginAndRegisterView, ele_data)) {
                e.preventDefault();
            }
        });

    }

    /**
     *  是否修改密码选取
     */
    jQuery("#change_password").on("change", function () {
        var $this = jQuery(this);
        if ($this.prop("checked")) {
            jQuery('#current_password').parents(".fieldset").show();
        } else {
            jQuery('#current_password').parents(".fieldset").hide();
        }

    });
});

/**
 * 我的订单页支付订单
 */
jQuery(document).ready(function () {
    var $form = jQuery('#repay-order');
    if (!$form.length) return;

    $form.bind('submit', function (e) {
        if (!jQuery('#checkout-payment-method-load :radio:checked').length) {
            easyDialog.open({
                container: {
                    header: '提示',
                    content: '<p>请选择支付方式后继续完成支付！</p>',
                    yesFn: function () {
                    },
                    noFn: false
                }
            });
            e.preventDefault();
        }
    });
});

/**
 * 订单详情页
 */
jQuery(function () {
    /**
     * 订单剩余时间倒计时
     */
    if (!jQuery(".js-order-detail-pay").length){return;}
    var time = '';
    var begin_time = jQuery(".po_order_overplus_time .begin-time").val();
    jQuery.ajax({
        url: '/pt_sales/order/getTime',
        type: 'get',
        dataType: 'json',
        cache: false,
        success: function (data) {
            time = data.current_time - begin_time;
                if (data.current_time) {
                    jQuery(".po_order_overplus_time .over-time").val(data.current_time);
                    jQuery(".po_order_overplus_time .long-time").val(data.plus_time);
                    jQuery(".po_order_overplus_time").show();
                    initTimes();
                    count_down();
                }
        }
    })
    //定义倒计时函数
    var countdown_start_time ;//倒计时开始时间
    var begin_time_btn = jQuery(".po_order_overplus_time .begin-time");  //订单创建时间
    var plus_time = jQuery(".po_order_overplus_time .long-time");  //时间戳
    var over_time_btn = jQuery(".po_order_overplus_time .over-time");  //服务器时间
    var str_btn = jQuery(".po_order_overplus_time .po_order_time_contect");  //显示时间
    var total_time;                         //订单创建时间
    var time;                                //服务器时间
    var time_distance ;                      //剩余时间
    var timer;                               //计时器
    function initTimes () {
        total_time = parseInt(begin_time_btn.val()) + parseInt(plus_time.val());
        time = over_time_btn.val();
        time_distance = total_time - time;
        countdown_start_time = Math.floor(new Date().getTime()/1000);
    }
    function count_down() {
        if(timer){
            clearTimeout(timer);
        }
        var countdown_current_time = Math.floor(new Date().getTime()/1000);
        var countdown_past_time = countdown_current_time - countdown_start_time;
        var time_surplus = time_distance - countdown_past_time;
        var int_day, int_hour, int_minute, int_second;
        if (time_surplus > 0) {
            int_day = Math.floor(time_surplus / 86400);
            time_surplus -= int_day * 86400;
            int_hour = Math.floor(time_surplus / 3600);
            time_surplus -= int_hour * 3600;
            int_minute = Math.floor(time_surplus / 60);
            time_surplus -= int_minute * 60;
            int_second = Math.floor(time_surplus);
            var str = '';
            if (int_day > 0) {
                str = int_day + "天";
            }
            if (int_hour > 0) {
                str += int_hour + "小时";
            }
            if (int_minute > 0) {
                str += int_minute + "分";
            }
            if (int_second > 0) {
                str += int_second + "秒";
            }
            if (int_hour < 10) {
                int_hour = "0" + int_hour;
            }
            if (int_minute < 10) {
                int_minute = "0" + int_minute;
            }
            if (int_second < 10) {
                int_second = "0" + int_second;
            }
            str_btn.html('<strong style="color:#333;">' + str + '</strong>');
            timer = setTimeout(count_down, 1000);
            over_time_btn.val(time);
        } else {
            jQuery(".po_order_overplus_time").html("订单已经超时支付！已被取消");
            jQuery(".js-order-detail-pay").remove();
        }
    }
})


/**
 * 我的优惠券
 */
jQuery(function(){
    var $ = jQuery;
    $("#bindingCoupon").click(function () {
        var couponCode = $("#coupon_code").val(),
            actionUrl = '/customer/account/bindCoupon/code/' + couponCode + "";
        jQuery.ajax({
            type: 'post',
            url: actionUrl,
            dataType: 'json',
            success: function (data) {
                if (data.ret === 1) {
                    var coupon = data.coupon,
                        element = "";
                    element += '<div id="' + coupon.id + '" class="single clearfix">';
                    element += '<div class="left cut-off">';

                    if (coupon.type == 2) {
                        element += '<span class="price">';
                        element += '' + coupon.value + '';
                        element += '</span>';
                        /*element += '<i>优惠券</i>';*/
                    }
                    else if(coupon.type == 5){
                        element += '<span class="price">';
                        element += '' + coupon.value + '';
                        element += '</span>';
                        /*element += '<i>优惠券</i>';*/
                    }
                    else {
                        element += '<span class="varchar">' + coupon.value + '</span>';
                    }
                    element += '</div>';
                    element += '<div class="left detail">';
                    element += '<div class="left desc">' + coupon.name +  '</div>';
                    element +=  '<div class="left line">|</div>';
                    element +=  '<div class="left code">优惠码：' + couponCode + '</div>';
                    element += '</div>';

                    element += '<div class="right other-info">';
                    element += coupon.expire_time;
                    element += '</div>';

                    element += '</div>';

                    $(".promo-wrap").prepend(element);
                    easyDialog.open({
                        container: {
                            header: '提示',
                            content: '<p>'+ data.msg + '</p>',
                            yesFn: function () {
                            }
                        }
                    });
                }
                else {
                    easyDialog.open({
                        container: {
                            header: '提示',
                            content: '<p>'+ data.msg + '</p>',
                            yesFn: function () {
                            }
                        }
                    });
                }
            },
            error: function (data) {
                if (data.status == 404) {
                    easyDialog.open({
                        container: {
                            header: '提示',
                            content: '<p>'+ 请重新登录 + '</p>',
                            yesFn: function () {
                            }
                        }
                    });
                }
                else {
                    easyDialog.open({
                        container: {
                            header: '提示',
                            content: '<p>'+ data.msg + '</p>',
                            yesFn: function () {
                            }
                        }
                    });
                }
            },
            beforeSend: function () {
                $("#loading").show();
            },
            complete: function () {
                $("#loading").hide();
            }
        });
    });
});

/**
 * 删除地址、设为默认地址
 */
function deleteAddress(id) {
    easyDialog.open({
        container: {
            header: '提示',
            content: '<div class="tip-notice-content"><p>您是否确认要删除该地址？</p></div>',
            yesFn: function () {
                if (jQuery('#onestepcheckout-place-order').length) {
                    jQuery.ajax({
                        type: 'post',
                        url: '/Demo/address/delAddress',
                        dataType: 'json',
                        data: 'id=' + id
                    }).success(function (resJSON) {
                        if (Number(resJSON.ret) === 0) {
                            window.location.href = window.location.href;
                        } else {
                            easyDialog.open({
                                container: {
                                    header: '提示',
                                    content: '<p>'+ resJSON.msg + '</p>',
                                    yesFn: function () {}
                                }
                            });
                        }
                    });
                } else {
                    window.location = 'address/selectAddres?userId=' + id;
                }
            },
            noFn: true
        },
        drag: false
    });
    return false;
}

function setDefaultAdress(addressId) {
    jQuery.ajax({
        type: "post",
        url: "/customer/address/setDefaultShipment'?>",
        //dataType:"json",
        data: 'address_id=' + addressId,
        success: function (result) {
            //{"ret":"0","msg":"用户必须登录"},0为未登陆，1为成功，2为失败，3为未选择地址
            alert(result);
        },
        error: function (message) {
            alert(message);
        }
    });
}

/**
 * 个人中心，删除我的收藏
 */
jQuery(function(){
    jQuery('.lazy_product').lazyload();
    !function($){
        $('body').on('click','.J-close-button',function(a){
            a.stopPropagation();
            a.preventDefault();
            var customer_id=$(this).attr('data-customer-id'),
                product_id=$(this).attr('data-product-id');
            var myDate = new Date();
            var year=myDate.getFullYear(),
                month=myDate.getMonth()+1,
                date=myDate.getDate();
            if (month >= 1 && month <= 9) {
                month = "0" + month;
            };
            if (date >= 0 && date <= 9) {
                date = "0" + date;
            };
            var mytime=year+''+month+date;
            var sign=mytime+'cecs@po'+customer_id+product_id;
            var url='/o_customer/favourites/delete?customer_id='+customer_id+'&product_id='+product_id+'&sign='+sign;
            var Product=$(this).parents('.ProductPanel');
            easyDialog.open({
                container: {
                    header: '提示',
                    content: '<p>确认要删除?</p>',
                    yesText: '确定',
                    yesFn: function () {
                        jQuery.ajax({
                            type: 'GET',
                            url: url,
                            dataType: "json",
                            success: function (data) {
                                if (data.ret == 0) {
                                    easyDialog.open({
                                        container: {
                                            header: '提示',
                                            content: '<p>删除最近收藏记录成功！</p>',
                                            yesText: '确定',
                                            yesFn: function () {
                                                window.location.href=window.location.href;
                                            },
                                            noFn: false
                                        }
                                    });
                                    return;
                                } else {
                                    easyDialog.open({
                                        container: {
                                            header: '提示',
                                            content: '<p>删除最近收藏记录不成功！</p>',
                                            yesText: '确定',
                                            yesFn: function () {
                                            },
                                            noFn: false
                                        }
                                    });
                                    return;
                                }
                            }
                        })
                    },
                    noFn: function(){}
                }
            });
        })
    }(jQuery);
});

/**
 * 个人中心新增地址
 */
function addNewAddress() {
    easyDialog.open({
        container : 'PageAddressForm',
        fixed : true,
        lock: true,
        drag: false
    });
}

/**
 * 个人中心表单验证
 */
jQuery(function () {
    var $ = jQuery;

    $('.my-account a.address-book-add').click(function (e) {
        e.preventDefault();

        var $PageAddressForm = $('#PageAddressForm');

        addNewAddress();
        $PageAddressForm.validator({isErrorOnParent: true});
        $('.cancel-add-address').click(function (e) {
            e.preventDefault();
            easyDialog.close();
            //关掉添加地址的弹层时就清掉表单
            $('#firstname').add('#street_1').add('#postcode').add('#telephone').add('#email').val('');
            $('#country').val('国家、地域');
            $('#region_id').val('省份');
            $('#city').val('城市');
            $('#s_county').val('市、县级市');
            $('#PageAddressForm').find('.error').removeClass('error');
        });

        //提交中的表单，锁定提交按钮禁止重复提交
        $PageAddressForm.on('submit', function (e) {
            if (!$(this).find('.error').length) {
                $('#PageSaveAddress').attr('disabled', 'disabled');
            }
        });
    });
});

/**
 * 修改地址
 */
jQuery(function () {
    var $ = jQuery,
        $PageAddressForm = $('#PageAddressForm');

    if ($PageAddressForm.length && !$('.saved-address').length) {
        $PageAddressForm.addClass('edit-address-page').css('display', 'block');
        $PageAddressForm.parent().css('display', 'block');
        $PageAddressForm.validator({isErrorOnParent: true});
        $PageAddressForm.find('.cancel-add-address').attr('href', '/customer/address/');
    }
});

/**************************  个人中心end ************************************/


/***************************  确认订单页  ***********************************************/

jQuery(function () {

    if (!jQuery("#onestepcheckout-place-order").length){return}

    //添加右上角的样式
    jQuery('.HeaderMiddle').append('<div class="cart-step-2 cart-step clearfix"><span class="step-1">我的购物车</span><span class="step-2">订单提交</span></div>');

    /**
     * 保存收货地址
     */
    jQuery('#billing_address').find('.address-book-add').click(function () {
        easyDialog.open({
            container : 'billing_address_list',
            fixed : true,
            lock: true,
            drag: false
        });
        jQuery("#firstname,#telephone,#email").removeAttr("readonly");
        jQuery('#billing_address_list').validator({isErrorOnParent: true});
        jQuery('.cancel-add-address').click(function (e) {
            e.preventDefault();
            easyDialog.close();
            //关掉添加地址的弹层时就清掉表单
            jQuery('#firstname').add('#street_1').add('#postcode').add('#telephone').add('#email').val('');
            jQuery('#country').find('option').eq(0).text('国家、地域').val('国家、地域');
            jQuery('#region_id').find('option').eq(0).text('省份').val('省份');
            jQuery('#city').find('option').eq(0).text('地级市').val('地级市');
            jQuery('#s_county').find('option').eq(0).text('市、县级市').val('市、县级市');
            jQuery('#billing_address_list').find('.error').removeClass('error');
            //清掉id的input
            jQuery('#J-get-address-id').remove();
        });
    });
    !function ($) {
        var $button, isRequesting;
        $button = $("#AjaxSaveAddress");
        if (!$button.length) {
            return
        }

        //验证初始化
        isRequesting = false;

        $('#billing_address_list').on("submit", function () {
            var result, that = this;
            if (isRequesting) {
                return;
            }

            //验证表单
            //result = check_handle.check();

            result = {
                'firstname': $("#firstname").val(),
                'lastname': $("#lastname").val(),
                'region': $("#region_id").val(),
                'city': $("#city").val(),
                'county': $("#s_county").val(),
                'street[]': $("#street_1").val(),
                'postcode': $("#postcode").val(),
                'telephone': $("#telephone").val(),
                'email': $("#email").val(),
                'country_id': 'CN'
            };

            if (result) {
                //添加所缺数据
                result["form_key"] = $("#formkey").val();
                result["default_shipping"] = ($("#primary_shipping").prop("checked") === true ? 1 : 0);
                result['id'] = $('#J-get-address-id').val() || '';

                //ajax请求以下为原来的函数
                setTimeout(function () {
                    //如果验证不通过，就不发送请求
                    if ($(that).find('.error').length) {
                        return false;
                    }
                    //请求通过才向后端发送请求
                    $.ajax({
                        type: 'post',
                        url: "/customer/address/saveAddress",
                        dataType: 'json',
                        data: result,
                        beforeSend: function () {
                            isRequesting = true
                        },
                        success: function (data) {
                            if (data.ret === 0) {
                                //成功
                                var r = result;
                                    r.verify = data.isVerified || 0; 
                                var html = [
                                    '<div class="address selectd">',
                                        '<div class="name-phone clearfix">',
                                            '<input style="display:none;" value="', data.addressid, '" id="addrId_', data.addressid, '" type="radio" checked name="billing_address_id" onchange="billing.newAddress(!this.value)">',
                                            '<span class="phone right">', r.telephone, '</span>',
                                            '<span class="name">', r.firstname, '</span>',
                                        '</div>',
                                        '<div class="address-zip-mail">',
                                            '<p class="address">', r.region, r.city, (r.s_county == '市、县级市' ? '' : r.s_county), r["street[]"], '</p>',
                                            '<p class="zip">', r.postcode, '</p>',
                                            '<p class="mail">', r.email, '</p>',
                                            '<input type="hidden" value=' + r.verify + ' class="verify" is_country_china=' + r.country_id + '>',
                                        '</div>',
                                        '<div class="func-zone clearfix">',
                                            '<a href="javascript:void(0)" class="right delete" title="删除地址" onclick="return deleteAddress(\'', data.addressid ,'\');">删除</a>',
                                            '<a href="/customer/address/form/', data.addressid, '/" class="left edit" title="编辑地址">编辑</a>',
                                        '</div>',
                                    '</div>'
                                ].join('');
                                $('#customer_address_ids').val(data.addressid);

                                //判断有没有地址
                                if ($('.saved-address').find('div.address').length) {
                                    var addList = $('.saved-address div.address');

                                    //如果有传入过id的值，就有替换html的方式
                                    //否则就用prepend的方式
                                    addList.removeClass('selectd');
                                    if ($('#J-get-address-id').val()) {
                                        $('#addrId_' + $('#J-get-address-id').val()).parents('div.address').replaceWith(html);
                                    } else {
                                        addList.removeClass('first selectd old-mark')
                                            .eq(-1).after(html);
                                    }

                                } else {
                                    //html = '<div class="saved-address clearfix">' + html + '</div>';
                                    $('.saved-address').prepend(html);
                                    //$('#billing_address_list').parents("ul").prepend(html);
                                    //$('.saved-address div.address').trigger('click');
                                    //$('a.address-use-new').show();
                                    //$('#billing_address_list').hide();
                                }

                                $("#certification").show();
                                if (r.country_id == "CN") {
                                    if(r.verify == 1){
                                        IdValidatorView.confirm_passed($("#firstname").val());
                                    }else{
                                        IdValidatorView.need_confirm($("#firstname").val());
                                    }
                                } else {
                                    IdValidatorView.confirm_needless();
                                }

                                //保存成功就关闭表单
                                easyDialog.close();

                                //关掉添加地址的弹层时就清掉表单
                                $('#firstname').add('#street_1').add('#postcode').add('#telephone').add('#email').val('');
                                $('#country').find('option').eq(0).text('国家、地域').val('国家、地域');
                                $('#region_id').find('option').eq(0).text('省份').val('省份');
                                $('#city').find('option').eq(0).text('地级市').val('地级市');
                                $('#s_county').find('option').eq(0).text('市、县级市').val('市、县级市');
                                $('#billing_address_list').find('.error').removeClass('error');

                                //清掉id的input
                                $('#J-get-address-id').remove();
                            }
                            else {
                                //验证不通过
                                easyDialog.open({
                                    container: {
                                        header: '提示',
                                        content: '<div class="tip-fail-content"><p>表单填写不正确，请检查表单填写！</p></div>'
                                    }
                                });
                            }
                        },
                        complete: function () {
                            isRequesting = false;
                        }
                    });
                }, 0);
            }
        });
    }(jQuery);

    /**
     * 身份验证
     */
    !function ($) {
        $("#idSubBtn").on("click", function (e) {
            e.preventDefault();
            var data = {
                id_no: $.trim($('#receiver-id').val()),
                customer_address_id: $('.address.selectd').find('.name-phone > input').val(),
                id_name: $('#receiver').text(),
                mail : $(".address.selectd").find(".mail").text(),
                phone: $(".address.selectd").find(".phone").text()
            };

            //身份验证
            IdValidator(IdValidatorView, data)
        })
    }(jQuery);

    /**
     * 更新支付方式
     */
    // !function ($) {
    //     if (!jQuery("#onestepcheckout-place-order").length) {
    //         return;
    //     }
    //     function updatePayMethod(pay) {
    //         var p = pay || $('#checkout-payment-method-load input:checked').val() || cuurentPayMethod;
    //         $('#summary').hide();
    //         $.ajax({
    //             url: '/onestepcheckout/ajax/set_methods_separate',
    //             type: 'post',
    //             data: {shipping_method: "tablerate_bestway", payment_method: p},
    //             dataType: 'json',
    //             success: function (data) {
    //                 $('#summary').html(data.summary || '').show();
    //                 //$('div.onestepcheckout-error-all', '#onestepcheckout-form').hide();
    //             }
    //         });
    //     }

    //     $('#checkout-payment-method-load').on('change', 'input', function () {
    //         if (this.checked) {
    //             var v = this.value;
    //             updatePayMethod(v);
    //         }
    //     });
    //     updatePayMethod();
    // }(jQuery);

    /**
     * 包装选项
     */
    !function($){
        var $tip, $J_tit_text;
        $tip = jQuery('.adck-tip-a');
        $J_tit_text = jQuery('.J_tit_text');

        jQuery('body').on('click', '.J_packing_title', function () {
            var index;
            index = jQuery(this).index();
            jQuery(this).find('.tit_radio').attr('checked', true);
            jQuery('.J_packing_img').hide()
                .eq(index).show();

            if (index == 1) {
                $J_tit_text.removeAttr('disabled')
                    .removeClass('tit_disabled_text');
                $tip.show();
            } else {
                $J_tit_text.attr('disabled', true)
                    .val('')
                    .addClass('tit_disabled_text');
                $tip.hide();

            }
        }).on('blur', '.J_tit_text', function () {
            var value = jQuery(this).val();
            if (jQuery.trim(value) == '') {
                $tip.show();
            } else {
                $tip.hide();
            }
        }).on('focus', '.J_tit_text', function () {
            $tip.hide();

        })
    }(jQuery)

    /**
     * 更多地址收起隐藏
     */
    !function ($) {
        //收货地址显示
        $('.J_unfold_add').click(function () {
            if ($(this).hasClass('expand')) {
                $(this).removeClass('expand');
                $('.J_begin').hide();
                $('.J_address_text').text('更多地址');
            } else {
                $(this).addClass('expand');
                $('.J_begin').show();
                $('.J_address_text').text('收起地址');
            }
        });
    }(jQuery);

    /**
     * 新增地址收起隐藏
     */
    //!function ($) {
    //    $('.onestepcheckout-enterprise .address-use-new').live('click', function () {
    //        $('.onestepcheckout-enterprise .address-use-new').addClass('selected');
    //        if ($('.address-use-new').text() == '使用新地址') {
    //            $('.address.other').hide(400);
    //            $('#billing_address_list').slideDown(200);
    //            $(this).text('收起地址域');
    //            $('.onestepcheckout-enterprise div.selectd').removeClass('selectd').addClass('old-mark');
    //            $('#add_newAddress').prop("checked", true);
    //        }
    //        else if ($('.address-use-new').text() == '收起地址域') {
    //            $('.onestepcheckout-enterprise .address-use-new').removeClass('selected');
    //            $('.adck-tip').hide(400);
    //            $('#billing_address_list').slideUp(100);
    //            $(this).text('使用新地址');
    //            $('.onestepcheckout-enterprise div.old-mark').removeClass('old-mark').addClass('selectd')
    //                .find('input[name=billing_address_id]').prop("checked", true);
    //        }
    //    });
    //}(jQuery);

    /**
     * 结算页面的地址选择
     */
    !function($){
        $('.onestepcheckout-enterprise div.address').live('click', function () {

            $(this).addClass('selectd').siblings('.address').removeClass('selectd').removeClass('old-mark');
            $(this).find(':radio').prop('checked', true);
            $(this).siblings('.address').find(':radio').prop('checked', false);
            $('#onestepcheckout-place-order').removeClass('disabled');

            var ids = $(this).find('.name-phone input[name=billing_address_id]').val(),
                phone = $(this).find('.name-phone .phone').text(),
                mail = $(this).find('.address-zip-mail .mail').text();
            $('#customer_address_ids').val(ids);

            //$('span.correct, span.wrong, span.waiting').hide();
            var _this = $(this);
            card_true(_this);

            $('#billing_address_list').slideUp();
            $('.address-use-new').text('使用新地址');

        });

        var addr = $('.onestepcheckout-enterprise div.address'),
            _this = addr.eq(0);
        _this.trigger("click");
        var first = $('.address-book .saved-address .selectd '),
            ids = first.find('.name-phone input[name=billing_address_id]').val(),
            phone = first.find('.name-phone .phone').text(),
            mail = first.find('.address-zip-mail .mail').text();
        $('#customer_address_ids').val(ids);
        if ($('.saved-address .address').length > 0) {
            $('.again_add').remove();
            $('.J_scname').show();
        }
        function card_true(_this) {

            var name = _this.find('.name').text(),
                verify_doc = _this.find('.verify'),
                verify = verify_doc.val(),
                yes_china = verify_doc.attr("is_country_china");
            if (yes_china != "CN") {
                IdValidatorView.confirm_needless();
            } else if (verify == 1) {
                IdValidatorView.confirm_passed(name);
            } else if (verify == 0) {
                IdValidatorView.need_confirm(name);
            }
        }
    }(jQuery);

    /**
     * 结算页的地址修改
     */
    ~function ($) {
        var $ba = $('#billing_address'),
            timer = null,
            addrVal;

        if (!$ba.length) {
            return;
        }

        $ba.on('click', 'a.edit', function (e) {
            addrVal = $(this).parents('div.address').find('.name-phone').find('input').val();

            clearTimeout(timer);
            timer = setTimeout(function () {
                $.ajax({
                    type: 'get',
                    url: '/customer/address/getUserAddressInfo?addressId=' + addrVal,
                    dataType: 'json'
                }).success(function (resJSON) {
                    var address = resJSON.address;

                    if (resJSON.ret != 0) {
                        return;
                    }

                    $('#country').find('option').eq(0).text('中国大陆').val('中国大陆');
                    $('#region_id').find('option').eq(0).text(address.region).val(address.region);
                    $('#city').find('option').eq(0).text(address.city).val(address.city);
                    $('#s_county').find('option').eq(0).text(address.county).val(address.county);

                    $('#street_1').val(address.street);
                    $('#postcode').val(address.postcode);
                    $("#firstname").val(address.firstname);
                    $('#telephone').val(address.telephone);
                    $('#email').val(address.email);
                    $('#primary_shipping').prop('checked', address.isDefault);
                    $('.address-book-add').trigger('click');
                    if(address.isVerify == 1){
                        $("#firstname,#telephone,#email").attr("readonly","readonly");
                    }else{
                        $("#firstname,#telephone,#email").removeAttr("readonly");
                    }
                });
            }, 200);

            $(this).after('<input type="hidden" value="' + addrVal + '" id="J-get-address-id">');

            e.preventDefault();
            e.stopPropagation();
        });
    }(jQuery);

    /**
     * 确认订单验证
     */
    !function($){

        if (jQuery('div.shopping-cart-totals').length != 1) {
            /* Handle place order click event */
            jQuery('#onestepcheckout-place-order').removeClass('disabled').on('click', function (e) {
                var value = jQuery('.J_tit_text').val();
                if (jQuery.trim(value) == '' && jQuery('.tit_radio').eq(1).attr("checked")) {
                    if (sa_enabled) { //神策确认订单埋点
                       indexSensors.onestepcheckout("请填写包装选项寄件人称呼");
                    }
                    jQuery('.adck-tip-a').show();
                    easyDialog.open({
                        container: {
                            header: '提示',
                            content: '<p>请填写包装选项寄件人称呼</p>',
                            yesFn: function () {
                            }
                        }
                    });
                    return;
                } else {
                    jQuery('.adck-tip-a').hide();
                }
                if (jQuery('#onestepcheckout-place-order').hasClass('disabled')) {
                    return;
                }
                //var autonym_bool = jQuery('#autonym_bool').val();
                //if (autonym_bool == 0) {
                //    easyDialog.open({
                //        container: {
                //            header: '提示',
                //            content: '<p>请先进行实名验证</p>',
                //            yesFn: function () {
                //            }
                //        }
                //    });
                //    return;
                //}


                if (!jQuery("input[name='billing_address_id']:checked").length) {
                    if (sa_enabled) { //神策确认订单埋点
                       indexSensors.onestepcheckout("请选择收货地址");
                    }
                    easyDialog.open({
                        container: {
                            header: '提示',
                            content: '<p>请选择收货地址</p>',
                            yesFn: function () {
                            }
                        }
                    });
                    return;
                }

                if (!jQuery('#checkout-payment-method-load').find(':radio:checked').length) {
                    if (sa_enabled) { //神策确认订单埋点
                       indexSensors.onestepcheckout("请选择支付方式");
                    }
                    easyDialog.open({
                        container: {
                            header: '提示',
                            content: '<p>请选择支付方式</p>',
                            yesFn: function () {
                            }
                        }
                    });
                    return;
                }


                /* Disable button to avoid multiple clicks */
                var element = this;

                element.disabled = true;
                var type_cn = jQuery(".saved-address .selectd .verify").attr("is_country_china");
                var sender_name = jQuery('.J_tit_text').val(),
                    package_type = jQuery('.tit_radio:checked').val();
                jQuery.ajax({
                    url: ROOT_URL + 'checkout/cart/check',
                    type: 'get',
                    data: 'type=1&customer_address_id=' + jQuery('#customer_address_ids').val() + '&country_id=' + type_cn + '&package_type=' + package_type + '&sender_name=' + sender_name,
                    dataType: 'json',
                    success: function (data) {
                        if (data.ret == 1) {
                            function hasHtag() {
                                if (typeof jQuery.htagLogOrder === 'function') {
                                    clearTimeout(hasHtag.timer);
                                    jQuery.htagLogOrder(data.htagLogOrder);
                                } else {
                                    hasHtag.timer = setTimeout(hasHtag, 40);
                                }
                            }
                            hasHtag.timer = null;
                            hasHtag();
                            if (sa_enabled) { //神策确认订单埋点
                               indexSensors.onestepcheckout("","200");
                            }
                            $('#onestepcheckout-form').submit();
                        } else if (data.ret == 0) {
                            if (sa_enabled) { //神策确认订单埋点
                               indexSensors.onestepcheckout(data.message);
                            }
                            easyDialog.open({
                                container: {
                                    header: '提示',
                                    content: data.message,
                                    yesFn: function () {
                                    },
                                    noFn: false
                                }
                            });
                            element.disabled = false;
                        }
                    }
                });
            });
        }
    }(jQuery)
});



/***************************************** 确认订单页 end  ****************************/




/*****************************************  首页  ***********************************************/
/**
 * 可拉动商品列表
 */
jQuery(function () {

    /**
     * tab标签切换
     */
    /*!function($){
        var $contain, $tab_list,$product_list;
        $contain = $("#IndexProduct");
        $tab_list = $contain.find(".single-tab");
        $product_list = $contain.find(".list_scroll");
        if (!$contain.length){return}
        $contain.on("click",".single-tab",function(){
            var index;

            //tab切换
            $(this).addClass("current").siblings(".current").removeClass("current");

            //产品列表切换
            index = $tab_list.index(this);
            $contain.find(".IndexProductContain .current").removeClass("current").hide();

            $product_list.eq(index).addClass("current").show();
        });

        //点击显示第一个
        $tab_list.eq(0).trigger("click");
    }(jQuery);*/


    /**
     * 商品拉动
     */
    !function($){
        var slider_ele = jQuery(".list_scroll .list-box");
        if (!slider_ele.length){return}
        slider_ele.each(function () { 
            $this = jQuery(this);
            $this.find(".lazy_product").lazyload({
                effect: "fadeIn"
            })  //触发图片加载
            
       });
    }(jQuery);
    /***鼠标移动在商品***/
    jQuery('.J_hover').hover(function(){
        jQuery(this).addClass('hover_top');
    },function(){
        jQuery('.J_hover').removeClass('hover_top');
    })
    /***鼠标移动在商品2***/
    jQuery('.J_tab').hover(function(){
        var index=jQuery(this).index();
        jQuery('.J_tab').removeClass('on');
        jQuery(this).addClass('on');
        jQuery('.J_IndexProductContain .hlock').hide();
        jQuery('.J_IndexProductContain .hlock').eq(index).show();
    })
    /**
     * 品牌列表拉动
     */
    !function($){
        if (!$(".PopBrandsContain").length){return;}
        var slider = H_slider(".PopBrandsContain",8,1000,121);
        $(".PopBrandsArrow.left").on("click",function(){
            if($(this).hasClass('on')){
            $('.PopBrandsArrow').removeClass('PopBrandsArrow2').removeClass('on');
            $(".PopBrandsArrow.right").addClass('on');
            slider.slide("right",8)
            }
        });
        $(".PopBrandsArrow.right").on("click",function(){

            if($(this).hasClass('on')){
                $('.PopBrandsArrow').addClass('PopBrandsArrow2').removeClass('on');
                $(".PopBrandsArrow.left").addClass('on');
                slider.slide("left",8)
            }
        });
        setInterval(function(){
            // jQuery(".PopBrandsArrow.right").trigger("click");
        },4000)
    }(jQuery);

    /**
     * 轮播图
     */
    jQuery(function() {
        jQuery('#focus').slideFocus();
    });

    /**
     * 顶部公告栏伸缩
     */
    !function($){
        $("#TopNotice").on("click",function(){
            $(this).toggleClass("active");
            $(this).find(".content").slideToggle();
        })
    }(jQuery)
});
/******************************  首页 end *************************************/

/***********************  商品详情页  ***************************/

/**
 * 商品详情页商品信息tab切换
 */
jQuery(".tab_wrap .tab_title .tab_title_item").bind("click", function () {
    var jQuerythis = jQuery(this), index = jQuerythis.index();
    jQuerythis.addClass("current").siblings().removeClass("current");
    jQuerythis.parents(".tab_wrap").children(".tab_content_wrap").children(".tab_content:eq(" + index + ")").show().siblings().hide();
});


/*******************************  商品详情页end **************************/


/******************************  all page  **********************************/
jQuery(function () {
    /**
     * 延迟加载
     */
    !function($){
        var product_list, index_contain, hot_sale, handle_ele,scroll_list,scroll_tab,brand_contain;
        index_contain = jQuery("#IndexProduct");
        product_list = jQuery(".category-products");
        brand_contain = jQuery(".PopBrandsContain");

        //产品列表
        if (product_list.length) {
            product_list.find(".lazy_product").lazyload({
                effect: "fadeIn"
            })
        }

        //列表页加载
        if (index_contain.length){
            scroll_tab = index_contain.find(".IndexProductTab .single-tab");
            scroll_list = index_contain.find(".IndexProductContain .list_scroll");

            scroll_tab.one("click",function(){
                var index;
                index = jQuery(this).index();
                scroll_list.eq(index).find(".lazy_product").each(function(){
                    this.src = this.getAttribute("data-original");
                    jQuery(this).css("opacity","0").animate({"opacity":"1"},300);
                })
            });

            scroll_tab.eq(0).trigger("click");
        }


        //品牌图片
        if (brand_contain.length){
            brand_contain.find(".PopBrandsImg").lazyload({
                effect: "fadeIn"
            });
            brand_contain.find(".PopBrandsImg").lazyload({
                effect: "fadeIn",
                event: "sporty"
            });
            brand_contain.find(".PopBrandsArrow").on("click",function(){
                brand_contain.find(".PopBrandsImg").trigger("sporty");
            });
        }

        //普通图片
        jQuery("img.lazy_common").lazyload({
            effect: "fadeIn"
        });
    }(jQuery);

    /**
     * 三级导航栏
     */
    ~function () {
        var $ = jQuery,
            timer = null,
            timer2 = null,
            $nav = $('#H-nav'),
            $navBg = $('.menu-background');

        //tab切换
        function tab(tab, cont, klass, action) {

            if (!klass) klass = 'current';
            if (!action) action = 'click';

            tab.bind(action, function (e) {
                e.preventDefault();

                var thisIndex = tab.index(this);

                tab.removeClass(klass).eq(thisIndex).addClass(klass);

                cont.removeClass(klass).eq(thisIndex).addClass(klass);
            });
        }

        //导航栏的鼠标交互
        $nav.find('li.nav-top').hover(function () {
            clearTimeout(timer);
            $nav.find('li.nav-top').removeClass('hover');
            $(this).addClass('hover');
            if (!$(this).find('.tab-cont').length) {
                $navBg.css('display', 'block');
                return;
            }
            $navBg.css('display', 'block').addClass('hover');
        }, function () {
            timer = setTimeout(function () {
                $nav.find('li.nav-top').removeClass('hover');
                $navBg.css('display', 'none').removeClass('hover');
            }, 200);
        });

        //初始状态下有些tab需要显示出来
        $nav.find('.nav-top').each(function () {
            var $this = $(this);

            tab(
                $(this).find('.tab-title'),
                $(this).find('.tab-cont'),
                'current',
                'mouseover'
            );

            $(this).find('.nav-top-contain').hover(function () {
                clearTimeout(timer2);
                if (!$(this).find('.tab-cont').length) {
                    $('.menu-background').css('display', 'block');
                    return;
                }
                $('.menu-background').css('display', 'block').addClass('full-height');
            }, function () {
                timer2 = setTimeout(function () {
                    $('.menu-background').css('display', 'none').removeClass('full-height');
                    $this.find('.current').removeClass('current');
                }, 200);
            });
        });
    }();

    /**
     * 回到顶部
     */
    !function(){
        //回到顶部
        jQuery(window).scroll(function () {
            if (jQuery(this).scrollTop() > 100) {
                jQuery('#back-top').fadeIn();
            } else {
                jQuery('#back-top').fadeOut();
            }
        });

        // scroll body to 0px on click
        var back_top = jQuery('#back-top a');
        if (back_top.length) {
            jQuery('#back-top a').click(function () {
                jQuery('body,html').stop(false, false).animate({
                    scrollTop: 0
                }, 800);
                return false;
            });
        }
    }(jQuery);

    /**
     * 搜索框为空判断
     */
    jQuery("#top-search-form").on("submit",function(e){
        var $input = jQuery("#sli_search_1");
        if (!$input.val().trim()){
            $input[0].value = "请输入需要搜索的关键字";
            e.preventDefault();
            $input.one("focus",function(){
                this.value = "";
            })
        }
    });

    /**
     * 获取用户登录信息
     */
    !function($){
        $.ajax({
            url:  '/o_customer/info/getCustomer',
            type: 'get',
            dataType: 'json',
            cache: false,
            success: function (data) {
                if (data.ret == 0) {
                    $('.search_grid .top-links .login-status').html('<a href="' + ROOT_URL + '/customer/account/login/">LOG IN</a>');
                    //购物车页面，把登录显示出来
                    $('#discount-coupon-form').find('.not-logged-in').show();
                    //购物车页面，把优惠券的交互去掉，并添加弹层提示
                    $('body').off('click');
                    $('.drophook').click(function () {
                        easyDialog.open({
                            container: {
                                header: '提示',
                                content: '<p>Sorry! 未登录情况下无法使用优惠码<br />点确定进行登录。</p>',
                                yesFn: function () {
                                    window.location.href = '/customer/account/login/referer/L2NoZWNrb3V0L2NhcnQ,/';
                                },
                                noFn: function () {}
                            }
                        });
                    });
                }
                if (data.ret == 1 && data.customerName) {
                    $('.HeaderWord.welcome').html(data.customerName)
                        .after(' | <a class="logout" href="/customer/account/logout">退出</a>');
                    $(".HeaderWord.login,.HeaderWord.register").hide();
                    $(".HeaderWord.account").show();
                    var $collectBtn = $(".collect-btn");
                    if($collectBtn.length){
                        $collectBtn.attr("data-customer-id",data.customerId);
                        var productId = $collectBtn.attr("data-product-id");
                        var customerId = data.customerId;
                        $.ajax({
                            url : window.ROOT_URL+"o_customer/favourites/check",
                            data: {
                                product_id : productId,
                                customer_id: customerId
                            },
                            dataType:"json",
                            type: "GET",
                            success:function (data) {
                                if(data.des == "succeed"){
                                    $collectBtn.addClass("collected");
                                }
                            }
                        })                        
                    }
                }
                $('#CartNum').html(data.cartItemCount);
            }
        });
    }(jQuery);

    /**
     * 顶部的购物车交互
     */
    (new ShoppingBag('.shop-bag', '.shop-bag b')).init();

    /**
     * 顶部收藏夹数目显示
     */
    ~function ($) {
        $.ajax({
            url: '/o_customer/favourites/getNum',
            type: 'get',
            dataType: 'json'
        }).success(function (resJSON) {
            if (resJSON.ret == 0) {
                $('.favors').find('b').text(Number(resJSON.favourite.num));
            } else {
                $('.favors').find('b').text(0);
            }
        });
    }(jQuery);

    /**
     * 品牌页，处理HTML结构
     */
    ~function ($) {
        if (!$('.classify').length) {
            return;
        }

        var $nav = $('.BrandNav'),
            position = $nav.offset();

        $('.brands-wrap').each(function () {
            var $uls = $(this).find('.uls'),
                allLinks = $uls.find('> li'),
                everyCol = Math.ceil(allLinks.length / 4),
                cols = Math.ceil(allLinks.length / everyCol),
                i = 0, j, len, $temp;

            for (j = 0; j < cols; j++) {
                $temp = $('<ul></ul>');
                len = $uls.find('> li').length;

                for (i = 0; i < Math.min(everyCol, len); i++) {
                    $temp.append($uls.find('> li').eq(0));
                }

                $uls.append($temp);
            }
        });

        //滚动固定
        $(window).scroll(function () {
            if ($(document).scrollTop() >= position.top) {
                $nav.css({
                    'position': 'fixed',
                    'left': '50%',
                    'top': 0,
                    'margin-left': '-595px',
                    'z-index': 10
                });
                $('.classify').css('padding-top', '124px');
            } else {
                $nav.css({
                    'position': 'static',
                    'left': 0,
                    'top': 0,
                    'margin-left': 0
                });
                $('.classify').css('padding-top', 0);
            }
        });

        //点击跳转
        $nav.find('a').click(function () {
            var id = $(this).attr('href'),
                scrollTop;

            if (!$(id).length) {
                return;
            }

            scrollTop = $(id).offset().top;

            if (!$('html, body').is(':animated')) {
                $('html, body').animate({
                    scrollTop: scrollTop - $nav.outerHeight() - 27
                }, 300);
            }

            return false;
        });
    }(jQuery);
});

function setLocation(url) {
    window.location.href = url;
}
//错误信息显示
//jQuery(document).ready(function () {
//    var $ = jQuery;
//
//    if (!$('ul.messages').length) return;
//
//    $('ul.messages .error-msg').find('span').each(function () {
//        if ($.trim($(this).text())) {
//            $('ul.messages').show();
//            return false;
//        }
//    });
//
//    //点击跳转
//});
/********************** all page end  **********************************/

/******************  结账页 ***************/
jQuery(function () {
    if (!jQuery('#shopping-cart').length) {return;}
    /**
     * 点击结账按钮
     */
    !function ($) {
        var $button = jQuery("#AccountButton");
        if ($button.length) {
            $button.on("click", function () {
                var $shopping_cart, $checkbox, $input_list;

                $shopping_cart = jQuery('#shopping-cart');
                $checkbox = $shopping_cart.find('.item-checkbox:checked');

                if (!$checkbox.length) {
                    AccountCartView.msg("请先选购商品再结账");
                    return;
                }

                $input_list = $checkbox.parents(".tr-selected").find(".goods-qty");
                AccountAction($input_list, AccountCartView);
            })
        }
    }(jQuery);

    /**
     * 删除商品
     */
    !function ($) {
        $("#shopping-cart").on("click", ".btn-remove2", function () {
            if (jQuery(self).attr('disabled') !== undefined && jQuery(self).attr('disabled') === "disabled") {
                return;
            }
            var delete_url = this.getAttribute("data-deleteurl");
            easyDialog.open({
                container: {
                    header: '提示',
                    content: '<div class="tip-notice-content"><p>你确定要删除这个商品吗?</p></div>',
                    yesFn: function () {
                        DeleteProduct(AccountCartView, delete_url);
                    },
                    noFn: true
                }
            });
        })
    }(jQuery);

    //购物车页面的全选和全不选
    if (jQuery('#AccountButton').length) {
        var checkAllToggle = new CheckAllToggle(
                '#shopping-cart .col_0 input, .shop-cart-extra .checkAll input',
                '#shopping-cart .supplier :checkbox',
                'tr',
                'tr-selected'
            );

        checkAllToggle.toggleAll = function () {
            var _that = this,
                cart_model = CartModel(AccountCartView);

            this.all.click(function () {
                if ($(this).prop('checked')) {
                    _that.all.prop('checked', true);
                    _that.other.prop('checked', true);
                    _that.other.each(function () {
                        $(this).parents(_that.parents).addClass(_that.klass);
                    });
                } else {
                    _that.all.prop('checked', false);
                    _that.other.prop('checked', false);
                    _that.other.each(function () {
                        $(this).parents(_that.parents).removeClass(_that.klass);
                    });
                }

                cart_model.selectItem();
            });
        };

        checkAllToggle.init();
    }

    //返回购物车页面的时候，检查选中商品的选项
    ~function ($) {
        if (!jQuery('#AccountButton').length) {
            return;
        }

        var timer = null,
            cart_model = CartModel(AccountCartView);

        timer = setInterval(function () {
            var $checkbox = $('#shopping-cart').find(':checkbox'),
                $checkboxChecked = $('#shopping-cart').find(':checkbox:checked');

            if ($checkbox.length !== $checkboxChecked) {
                $checkbox.add('span.checkAll > input').prop('checked', true);
                $('.supplier').find('tr').addClass('tr-selected');
                cart_model.selectItem();
                clearInterval(timer);
            }
        }, 10);
    }(jQuery);

    /**
     * 使用优惠券
     */
    !function ($) {
        var use_xhr;
        if ($('#discount-coupon-form').length) {
            $("#discount-coupon-form").on("click", ".use-code-btn", function (e) {
                var code;
                var c = '€';
                e.preventDefault();
                use_xhr && use_xhr.abort();

                code = $('#coupon_code').val() || "";
                use_xhr = $.ajax({
                    url: "/checkout/cart/couponPost",
                    type: "post",
                    dataType: "json",
                    data: "currency=0&coupon_code=" + code,
                    beforeSend: function () {
                        $("#onestepcheckout-place-order").attr("disabled", "disabled");
                    },
                    success: function (d) {

                        //0
                        if (d.ret == 0 || d.ret == 3) {
                            $('#product_discount_amount .value').html(d.product_discount_amount);
                            $("#shipping_discount_amount .value").html(d.shipping_discount_amount);
                            $('#quote_shipping .value').html(d.ship);
                            $(".all-grandtotal").html(d.grandTotal);
                        } else {
                            $('#product_discount_amount .value').html(d.product_discount_amount);
                            $("#shipping_discount_amount .value").html(d.shipping_discount_amount);
                            $('#quote_shipping .value').html(d.ship);
                            $(".all-grandtotal").html(d.grandTotal);
                            easyDialog.open({
                                container: {
                                    header: '提示',
                                    content: d.msg,
                                    yesFn: function () {
                                    },
                                    noFn: false
                                }
                            });
                        }
                        if(d.shipping_discount_amount <=0){
                           $("#shipping_discount_amount").parents('.cart-details-line').hide();
                        }else{
                            $("#shipping_discount_amount").parents('.cart-details-line').show();
                        }
                        if(d.product_discount_amount <=0){
                            $("#product_discount_amount").hide();
                        }else{
                            $("#product_discount_amount").show();
                        }
                    },
                    error: function () {
                        easyDialog.open({
                            container: {
                                header: '提示',
                                content: "网络异常，请重试",
                                yesFn: function () {
                                },
                                noFn: false
                            }
                        });
                    },
                    complete: function () {
                        $("#onestepcheckout-place-order").removeAttr("disabled");
                    }
                })
            })
        }
    }(jQuery);

        /**
         * 下拉优惠券
         */
        !function($){
            function CouponPull() {
                var that, $,view;
                $ = jQuery;
                that = this;

                view = (function () {
                    var o;
                    o = {};

                    o.loading = function (msg) {
                        var c, $loading;
                        $(".coupon-dropmenu").remove();
                        $loading = $('<div class="coupon-dropmenu"><p class="loading">' + msg + '</p></div>');
                        c = $(".drophook").offset();

                        $loading.appendTo("body")
                            .css({
                                top: c.top + 33,
                                left: c.left - 1,
                                zIndex: 11
                            });
                    };

                    o.show_data = function (d) {
                        var html;
                        html = [];
                        if (d.ret == 0) {
                            html[0] = "<p>您没有可用的优惠券</p>";
                        }else{
                            var i = 1;
                            html[0] = '<a class="cancel"><span>取消选择</span></a>';
                            for (var key in d.data){
                                i++;
                                html[i] = ['<a href="javascript:void(0);" data-code="', d.data[key].code, '"><b class="price">', d.data[key].value, '</b><span class="des">', d.data[key].title, "</span></a>"].join("");
                            }
                        }

                        $(".coupon-dropmenu").html(html.join(""));
                    };

                    o.init = function(msg){
                        var hook = $(".drophook");
                        var m = msg || "选择可使用的优惠券";
                        hook.removeClass("already-used");
                        $(".coupon-dropmenu").remove();
                        hook.html(m);
                    };

                    o.finish = function(msg){
                        var hook = $(".drophook");
                        hook.addClass("already-used");
                        $(".coupon-dropmenu").remove();
                        hook.html(msg);
                    };

                    o.hide = function(){
                        $(".coupon-dropmenu").remove();
                    };
                    return o
                }());

                that.view = view;
                var get_xhr,use_xhr;
                $("body").on("click",".drophook",function(e){
                    get_xhr && get_xhr.abort();
                    e.preventDefault();
                    e.stopPropagation();
                    view.loading("加载中，请稍候……");

                    get_xhr = $.ajax({
                        url: "/customer/account/getCustomerCoupon",
                        type: "post",
                        dataType: "json",
                        success:function(d){
                            if (d.ret == 1 || d.ret == 0){
                                view.show_data(d);
                            }
                        },
                        error:function(){
                            view.hide()
                        }
                    })
                });

                $("body").on("click",".coupon-dropmenu a",function(e){
                    var code,word;
                    var c = '€';
                    e.preventDefault();
                    e.stopPropagation();
                    view.loading("使用中，请稍候……");
                    use_xhr && use_xhr.abort();

                    code = this.getAttribute("data-code")||"";
                    word = $(this).find(".price").text();
                    use_xhr = $.ajax({
                        url: "/checkout/cart/couponPost",
                        type: "post",
                        dataType: "json",
                        data: "currency=0&coupon_code=" + code,
                        beforeSend:function(){
                            $("#onestepcheckout-place-order").attr("disabled","disabled");
                        },
                        success:function(d){

                            //0
                            if (d.ret == 0 || d.ret == 3){
                                if (d.ret == 3){
                                    view.init();
                                }else{
                                    view.finish(word);
                                }
                                $('#quote_shipping .value').html(d.ship);
                                $(".all-grandtotal").html(d.grandTotal);
                                $('#product_discount_amount .value').html(d.product_discount_amount);
                                $("#shipping_discount_amount .value").html(d.shipping_discount_amount);
                                if(d.shipping_discount_amount <=0){
                                   $("#shipping_discount_amount").parents('.cart-details-line').hide();
                                }else{
                                    $("#shipping_discount_amount").parents('.cart-details-line').show();
                                }
                                if(d.product_discount_amount <=0){
                                    $("#product_discount_amount").hide();
                                }else{
                                    $("#product_discount_amount").show();
                                }
                            }else{
                                view.hide();
                                easyDialog.open({
                                    container: {
                                        header: '提示',
                                        content: d.msg,
                                        yesFn: function () {
                                        },
                                        noFn: false
                                    }
                                });
                            }
                        },
                        error:function(){
                            easyDialog.open({
                                container: {
                                    header: '提示',
                                    content: "网络异常，请重试",
                                    yesFn: function () {
                                    },
                                    noFn: false
                                }
                            });
                            view.hide();
                        },
                        complete:function(){
                            $("#onestepcheckout-place-order").removeAttr("disabled");
                        }
                    })
                });

                //点击隐藏下拉栏并取消请求
                $("body").on("click",function(){
                    get_xhr && get_xhr.abort();
                    use_xhr && use_xhr.abort();
                    view.hide();

                    //启用确认订单按钮
                    $("#onestepcheckout-place-order").removeAttr("disabled");
                })
            }
            var coupon = new CouponPull();
        }(jQuery);

    //购物车边栏的滚动固定，以及页面右上角的样式
    ~function ($) {
        if (jQuery('#AccountButton').length) {
            var $cartRight = $('.cart-right'),
                scrollTop = $cartRight.offset().top,
                sidebarHeight = $cartRight.outerHeight() + 68,  //68是多出来的高度的值
                scrollBot = $('.shop-cart-extra').offset().top + 50 - sidebarHeight - 68;  //50是extra的高度，也就是底部的位置，减去68是因为计算是按js高度来算的

            $('.HeaderMiddle').append('<div class="cart-step-1 cart-step clearfix"><span class="step-1">我的购物车</span><span class="step-2">订单提交</span></div>');

            if ($('.cart-left').height() <= sidebarHeight) {
                return;
            }

            $(window).scroll(function () {
                var dhOffset = $(".drophook").offset();

                if ($(document).scrollTop() >= scrollTop) {
                    $cartRight.addClass('fixed-position-top');
                } else {
                    $cartRight.removeClass('fixed-position-top');
                }

                if ($(document).scrollTop() >= scrollBot) {
                    $cartRight.addClass('fixed-position-bot');
                } else {
                    $cartRight.removeClass('fixed-position-bot');
                }

                //滚动的时候，如果优惠券是展开的，那么也跟着滚动
                $('.coupon-dropmenu').appendTo("body")
                    .css({
                        top: dhOffset.top + 33,
                        left: dhOffset.left - 1,
                        zIndex: 11
                    });
            });
        }
    }(jQuery);

    //购物车页面，删除选中的商品
    ~function ($) {
        if (jQuery('#AccountButton').length) {
            $('.delete-checked').click(function (e) {
                e.preventDefault();

                var $items = $('.item-checkbox:checked'),
                    resultArr = [];

                $items.each(function () {
                    resultArr.push($(this).data('item'));
                });

                if (!resultArr.length) {
                    easyDialog.open({
                        container: {
                            header: '提示',
                            content: '并没有任何商品被选中',
                            yesFn: function () {},
                            noFn: false
                        }
                    });
                    return;
                }

                easyDialog.open({
                    container: {
                        header: '提示',
                        content: '您要删除选中的商品吗？',
                        yesFn: function () {
                            $.ajax({
                                url: '/cart/item/deleteSelect',
                                type: 'post',
                                data: {
                                    id: resultArr.join(',')
                                }
                            }).success(function () {
                                window.location.href = window.location.href;
                            });
                        },
                        noFn: function () {}
                    }
                });
            });
        }
    }(jQuery);

    /**
     * 结账页面购物车单项数量检查
     */
    !function ($) {
        var $shoppingCart = $('#shopping-cart'),
            ajax_handle = null;

        //绑定数量检查的函数
        $shoppingCart.find('td.cart-qty .qty').blur(function () {
            var cart_model = CartModel(AccountCartView);

            CheckQtyLimit.call(this, AccountCartView);
            //延迟触发更新购物车
            clearTimeout(ajax_handle);
            ajax_handle = setTimeout(function(){
                $(".drophook.selected").text("选择可使用的优惠券");
                cart_model.updateItem();
            }, 700);
        });

        //加减按钮也要检查商品数量
        $shoppingCart.on('click', '.qty-add', function (e) {
            e.preventDefault();

            var $input = $(this).siblings('.qty'),
                inputVal = Number($input.val()),
                max = Number($input.data('limitedqty'));

            $input.val(Math.min((inputVal + 1), max));
            $input.trigger('blur');
        });

        $shoppingCart.on('click', '.qty-sub', function (e) {
            e.preventDefault();

            var $input = $(this).siblings('.qty'),
                inputVal = Number($input.val());

            $input.val(Math.max((inputVal - 1), 1));
            $input.trigger('blur');
        });
    }(jQuery);


    /**
     * 选取商品以及更改商品数量
     */
    !function ($) {
        var cart_model = CartModel(AccountCartView);

        //加载购物车信息
        cart_model.initInfo();

        //选取商品
        $('.item-checkbox').on("click", function (e) {
            e.stopPropagation();
            cart_model.selectItem();
        });

        //修改数量
        $("#shopping-cart").find(".goods-qty").on("change", function () {
            var r = this.value.match(/^[1-9]\d*$/);
            this.value = r ? r[0] : 1;
            if (!CheckQtyLimit.call(this, AccountCartView)) {
                return false;
            }
            cart_model.updateItem();
        });
    }(jQuery);

});
/******************  结账页 end ***********/



/******************  加入购物车函数 **************************************/
/* 加入购物车模块 */
var isAddingCart = false;
function addCart(postUrl, isConfigurationProduct) {
    if(isAddingCart){
        return false;
    }
    var data = "";
    //捆绑产品传递参数
    var bundleItem = jQuery('.bundle-item');
    //如果是可捆绑产品则需要验证和提交参数,bundle为全局变量
    if (bundleItem.length !== 0) {
        // if(!bundle.validateRequireSelect()){
        //     return;
        // }
        bundleItem.each(function (index) {
            if (jQuery(this).prop('checked')) {
                if (index !== 0 || data != "") {
                    data = data + "&";
                }
                var bundleItemName = jQuery(this).attr('name');
                var bundleItemValue = jQuery(this).val();
                data = data + bundleItemName + "=" + bundleItemValue;
            }
        });
    }
    /* 判断数量 */
    var qtyItem = jQuery("#qty"), val;
    if (qtyItem.length !== 0) {
        val = qtyItem.val().replace(/\s/g, '');

        if (!/^[1-9]\d*$/.test(val)) {
            alert('数量必须是大于0的整数');
            return false;
        }
    } else if (qtyItem.length !== 0) {
        val = qtyItem.val().replace(/\s/g, '');
        if (!/^[1-9]\d*$/.test(val)) {
            easyDialog.open({
                container: {
                    header: '提示',
                    content: '数量必须是大于0的整数',
                    yesFn: function () {
                    }
                }
            });
            return false;
        }
    }
    qtyItem.each(function (index) {
        if (index !== 0 || data != "") {
            data = data + "&";
        }
        data = data + jQuery(this).attr('name') + "=" + jQuery(this).val();
    });
    /*ajax*/
    jQuery.ajax({
        type: 'post',
        url: postUrl,
        dataType: 'json',
        data: data,
        beforeSend:function () {
            isAddingCart = true;
        },
        success: function (data) {
            if (data.ret == 0) {
                easyDialog.open({
                    container: {
                        header: '提示',
                        content: '<div class="tip-notice-content"><p>您必须先登录才能进行操作</p></div>',
                        yesFn: function () {
                        }
                    }
                });
            } else if (data.ret == 1) {
                if(sa_enabled) { //神策加入购物车埋点
                   indexSensors.add_shopping_cart(data.event, data.properties);
                }
                jQuery('#CartNum').text(data.itemCount);
                easyDialog.open({
                    container: {
                        header: '提示',
                        content: '<div class="tip-success-content"><p>商品已成功添加到购物车</p><p>购物车一共有' + data.itemCount + '件商品</p></div>',
                        yesText: '去购物车结算',
                        noText: '继续购物',
                        yesFn: function () {
                            location.href = '/checkout/cart';
                        },
                        noFn: true
                    }
                });
            } else if (data.ret == 2) {
                easyDialog.open({
                    container: {
                        header: '提示',
                        content: '<div class="tip-fail-content"><p>' + data.msg + '</p></div>',
                        yesFn: function () {
                        }
                    }
                });
            }
            !function($){
                $.ajax({
                    url:  '/o_customer/info/getCustomer',
                    type: 'get',
                    dataType: 'json',
                    cache: false,
                    success: function (data) {
                        if (data.ret == 0) {
                            $('.search_grid .top-links .login-status').html('<a href="' + ROOT_URL + '/customer/account/login/">LOG IN</a>');
                        }
                        if (data.ret == 1 && data.customerName) {
                            $('.HeaderWord.welcome').html('Hello, ' + data.customerName);
                            $(".HeaderWord.login,.HeaderWord.register").hide();
                            $(".HeaderWord.account").show();
                        }
                        $('#CartNum').html(data.cartItemCount);
                    }
                });
            }(jQuery);
        },
        error: function (e) {
            easyDialog.open({
                container: {
                    header: '提示',
                    content: '网络错误，加入购物车失败',
                    yesFn: true
                }
            });
        },
        complete:function () {
            isAddingCart = false;
        }
    });
}

/**
 * 购物袋交互用的组件
 * @require jQuery
 * @param {String | HTMLElement} 参数 item，触发交互用的元素
 * @param {String | HTMLElement} 参数 count，显示购物车中商品数量的元素
 */
~function ($) {
    var $wrapper = $('.J-shopping-bag'),
        hoverIconTimer = null,
        hoverLayerTimer = null,
        loadingData = null;

    function ShoppingBag(elem, count) {
        this.elem = $(elem);
        this.count = $(count);
    }

    ShoppingBag.prototype.item = [
        '<li>',
            '<a href="{{productUrl}}" target="_blank">',
                '<span class="thumb"><img src="{{productImage}}" /></span>',
                '<span class="name">{{productName}}</span>',
                '<span class="size">{{productSize}}</span>',
            '</a>',
        '</li>'
    ].join('');

    ShoppingBag.prototype.empty = [
        '<p class="info">您的购物袋是空的</p>',
        '<p class="btn">',
            '<a href="/">立即购物</a>',
        '</p>',
        '<span class="corner"></span>',
        '<a class="close" href="javascript:void(0)" title="关闭">关闭</a>'
    ].join('');

    ShoppingBag.prototype.settle = [
        '<p class="btn">',
            '<a href="/checkout/cart/">去结算</a>',
        '</p>',
        '<p class="ship-info">满89欧元包邮</p>',
        '<span class="corner"></span>',
        '<a class="close" href="javascript:void(0)" title="关闭">关闭</a>'
    ].join('');

    ShoppingBag.prototype.getData = function () {
        var _that = this;

        if (loadingData) {
            loadingData.abort();
        }

        loadingData = $.ajax({
            url: '/checkout/cart/getMiniCart',
            type: 'get',
            dataType: 'json'
        });

        loadingData.success(function (resJSON) {
            if (resJSON.ret != 0) {
                return;
            }

            var num = parseInt(Number(resJSON.cart.num), 10),
                products = resJSON.cart.products,
                productsHTML = '';

            if (products.length) {
                for (var i = 0, len = products.length; i < len; i++) {
                    productsHTML += _that.item.replace('{{productUrl}}', products[i].url)
                        .replace('{{productImage}}', products[i].imgUrl)
                        .replace('{{productName}}', products[i].name)
                        .replace('{{productSize}}', 'x ' + products[i].qty);
                }
                productsHTML = '<ul>' + productsHTML + '</ul>';
                productsHTML += _that.settle;
                $wrapper.html(productsHTML);
            } else {
                $wrapper.html(_that.empty);
            }

            _that.count.text(num);
            $wrapper.find('.close').click(function (e) {
                e.preventDefault();
                $wrapper.hide();
            });
        });
    };

    ShoppingBag.prototype.init = function () {
        var _that = this;

        //_that.getData();
        this.elem.hover(function () {
            clearTimeout(hoverIconTimer);
            $wrapper.show();
            _that.getData();
        }, function () {
            hoverIconTimer = setTimeout(function () {
                $wrapper.hide();
            }, 300);
        });
    };

    if (!$wrapper.length) {
        $('body').append('<div class="J-shopping-bag"><span class="loading"></span><span class="corner"></span></span></div>');
        $wrapper = $('.J-shopping-bag');

        $wrapper.hover(function () {
            clearTimeout(hoverIconTimer);
            clearTimeout(hoverLayerTimer);
            $(this).show();
        }, function () {
            var $this = $(this);
            hoverLayerTimer = setTimeout(function () {
                $this.hide();
            }, 300);
        });
    }

    window.ShoppingBag = ShoppingBag;
}(jQuery);

/**
 * 全选 / 全不选的交互功能
 * @require jQuery
 * @param {String | HTMLElement} 参数 all，全选的 checkbox
 * @param {String | HTMLElement} 参数 other，其他的 checkbox
 * @param {String} 参数 parents，单个 checkbox 的某个父级元素的选择器
 * @param {String} 参数 klass，用来切换的 className
 */
~function ($) {
    function CheckAllToggle(all, other, parents, klass) {
        this.all = $(all);
        this.other = $(other);
        this.parents = parents;
        this.klass = klass;
    }

    CheckAllToggle.prototype.toggleAll = function () {
        var _that = this;

        this.all.click(function () {
            if ($(this).prop('checked')) {
                _that.other.prop('checked', true);
                _that.other.each(function () {
                    $(this).parents(_that.parents).addClass(_that.klass);
                });
            } else {
                _that.other.prop('checked', false);
                _that.other.each(function () {
                    $(this).parents(_that.parents).removeClass(_that.klass);
                });
            }
        });
    };

    CheckAllToggle.prototype.toggleOther = function () {
        var count = this.other.length,
            _that = this;

        this.other.each(function () {
            $(this).click(function () {
                var len = _that.other.filter(':checked').length;

                if (len === count) {
                    _that.all.prop('checked', true);
                } else {
                    _that.all.prop('checked', false);
                }

                if ($(this).prop('checked')) {
                    $(this).parents(_that.parents).addClass(_that.klass);
                } else {
                    $(this).parents(_that.parents).removeClass(_that.klass);
                }
            });
        });
    };

    CheckAllToggle.prototype.init = function () {
        this.toggleAll();
        this.toggleOther();
    };

    window.CheckAllToggle = CheckAllToggle;
}(jQuery);