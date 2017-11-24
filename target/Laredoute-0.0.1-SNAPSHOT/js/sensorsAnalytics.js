//神策埋点
if (typeof da_sensorsdata !== 'undefined')
    (function(sa) {
        var sa_common_properties_json = '',
            search_product = '';
        indexSensors = {
            init: function() {
                var _self = this,
                    url = window.location.pathname,
                    reg = /[/]$/gi,
                    str = url.replace(reg, "");
                switch (str) {
                    case '/customer/account/create':
                        _self.register(); //注册反馈
                        break;
                    default:
                        break;
                }
                if (url.indexOf('/customer/account/login') !== -1) {
                    _self.login(); //登录反馈
                }
                _self.close_page(); //关闭页面
                _self.recommend_to_product(); //推荐列表进商详
                _self.search_result_to_product(); //搜索列表进商详
            },
            //关闭页面
            close_page: function() {
                var saStartTime = new Date();
                window.onunload = function() {
                    var end = new Date();
                    var s = (end.getTime() - saStartTime.getTime()) / 1000;
                    var data = jQuery.extend(sa_common_properties_json, { page_stay_time: s, url: window.location.href });
                    sa.track('close_page', data);
                };
            },
            //注册反馈
            register: function(type, error_msg_arr, error_message_id) {
                this.error_message.apply(this, ["signup_feedback", type, error_msg_arr, error_message_id])
            },
            //登录反馈
            login: function(type, error_msg_arr, error_message_id) {
                this.error_message.apply(this, ["login_feedback", type, error_msg_arr, error_message_id])
            },
            //加入购物车
            add_shopping_cart: function(event, properties) { //加入购物车 
                if (event && properties) {
                    var data = jQuery.extend(sa_common_properties_json, JSON.parse(properties));
                    sa.track(event, data);
                }
            },
            //加入收藏夹
            add_favorite: function(properties) {
                if (properties) {
                    var data = jQuery.extend(sa_common_properties_json, JSON.parse(properties));
                    sa.track('add_favorite', data);
                }
            },
            //确认订单反馈
            onestepcheckout: function(error_msg, error_message_id) {
                var error_msg = error_msg || '';
                var error_message_id = error_message_id || '';
                if (error_msg === '' && error_message_id === '') return false;
                var data = jQuery.extend(sa_common_properties_json, { error_msg: error_msg, error_message_id: error_message_id });
                sa.track('confirm_order', data);
            },
            //搜索反馈
            search: function(params, resJson) {
                var search_id = typeof(resJson.request_id) !== "undefined" ? resJson.request_id : false,
                    search_type_id = '1',
                    keyword = typeof(params.kw) !== "undefined" ? decodeURI(params.kw) : false,
                    result_sku_list = [],
                    result_barcode_list = [],
                    page_number = typeof(params.page) !== "undefined" ? Number(params.page) : false,
                    result_page_size = typeof(params.pageSize) !== "undefined" ? Number(params.pageSize) : false;
                //排序值兼容
                search_sort = typeof(params.sort) !== "undefined" && params.sort !== "" ? params.sort : (typeof(params.search_sort) !== "undefined" ? params.search_sort : false);
                if (search_sort !== false && Number(search_sort) !== NaN) {
                    search_sort = this.search_sort_Filter(search_sort);
                }
                //数据兼容
                resJson.data = typeof(resJson.results) === "undefined" ? resJson.data : resJson.results;
                if (resJson.data.length > 0) {
                    jQuery.each(resJson.data, function(index, func) {
                        result_sku_list.push(func.sku_full || func.merchant_sku);
                    });
                }
                if (search_id === false || keyword === false || page_number === false || result_page_size === false || search_sort === false || !result_sku_list.length) return false;
                var product = search_product = { search_id: search_id, search_type_id: search_type_id, keyword: keyword, search_sort: search_sort, result_sku_list: result_sku_list, result_barcode_list: result_barcode_list, page_number: page_number, result_page_size: result_page_size };
                var data = jQuery.extend(sa_common_properties_json, product);
                sa.track('search', data);
            },
            //搜索结果进商详
            search_result_to_product: function() {
                var _self = this;
                jQuery('body').on('click', '[data-type="search-sensor"] a', function() {
                    var product = _self.to_product.call(_self, jQuery(this).parents('[data-type="search-sensor"]'));
                    if (product) {
                        var data = jQuery.extend(sa_common_properties_json, product, search_product);
                        sa.track('search_result_to_product', data);
                    }
                })
            },
            //推荐列表进商详
            recommend_to_product: function() {
                var _self = this;
                jQuery('body').on('click', '[data-type="sensor"] a', function() {
                    var product = _self.to_product.call(this, jQuery(this).parents('[data-type="sensor"]'));
                    if (product) {
                        var data = jQuery.extend(sa_common_properties_json, product);
                        sa.track('recommend_to_product', data);
                    }
                })
            },
            /*以下是处理数据的方法*/
            error_message: function(event, type, error_msg_arr, error_message_id) {
                var error_msg_arr = error_msg_arr || this.get_error_message.call(this, type);
                var error_message_id = error_message_id || '';
                var leg = error_msg_arr.length;
                if (!leg) return false;
                for (var i = 0; i < leg; i++) {
                    var data = jQuery.extend(sa_common_properties_json, { error_msg: error_msg_arr[i], error_message_id: error_message_id });
                    sa.track(event, data);
                }
            },
            get_error_message: function(type) {
                var error_msg = jQuery('.messages .error-msg'),
                    union_msg = jQuery('.union-login-tip');
                var msg = type == "union" ? union_msg : error_msg;
                if (!msg.length) return [];
                var error_msg_arr = [];
                msg.each(function(index, item) {
                    if (item.innerText) {
                        error_msg_arr.push(item.innerText);
                    }
                })
                return error_msg_arr;
            },
            search_sort_Filter: function(sort) {
                switch (Number(sort)) {
                    case 0:
                        sort = "0";
                        break;
                    case 3:
                        sort = "p_a";
                        break;
                    case 4:
                        sort = "p_d";
                        break;
                    case 5:
                        sort = "ot_a";
                        break;
                    case 6:
                        sort = "ot_d";
                        break;
                    case 7:
                        sort = "sv_d";
                        break;
                    case 8:
                        sort = "s_d";
                        break;
                }
                return sort;
            },
            to_product: function(sensor) {
                var recommend_type_id = sensor.attr('data-recommend-type-id'),
                    sku = sensor.attr('data-sku'),
                    barcode = '',
                    display_position_number = Number(sensor.attr('data-display-position-number')),
                    display_position_row = Number(sensor.attr('data-display-position-row')),
                    display_position_column = Number(sensor.attr('data-display-position-column'));
                if (recommend_type_id) {
                    switch (recommend_type_id.toUpperCase()) {
                        case 'HOME':
                            recommend_type_id = "1";
                            break;
                        case 'RELATED':
                            recommend_type_id = "2";
                            break;
                        case 'CART':
                            recommend_type_id = "3";
                            break;
                        case 'CATEGORY':
                            recommend_type_id = "4";
                            break;
                        case 'SEARCH':
                            recommend_type_id = "5";
                            break;
                        case 'DEPARTMENT':
                            recommend_type_id = "6";
                            break;
                        case 'ALSO_BOUGHT':
                            recommend_type_id = "7";
                            break;
                        case 'PERSONAL':
                            recommend_type_id = "8";
                            break;
                        case 'POPULAR':
                            recommend_type_id = "9";
                            break;
                    }
                }
                var product = { recommend_type_id: recommend_type_id, sku: sku, barcode: barcode, display_position_number: display_position_number, display_position_row: display_position_row, display_position_column: display_position_column };
                return product;
            }
        }
        indexSensors.init();
    }(da_sensorsdata))
