/**
 * 通用模块
 */

//字符串格式化函数
function H_format(t, d) {
	var s, k, reg;
	s = t;
	for(k in d) {
		reg = new RegExp(("{{\\s*" + k + "\\s*}}"), "g");
		s = s.replace(reg, d[k]);
	}
	return s;
}

//表单验证模块
var CECSValidate = function($) {
	var r, o;
	r = {
		isMail: /\w+((-w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+/,
		hasCN: /[\u4E00-\u9FA5]/,
		hasBlank: /\s/,
		isPhone: /^0?(13|14|15|16|17|18|19)[0-9]{9}$/,
		isPostCode: /^(\d{3}|\d{5}|\d{6})$/,
		hasSixCode: /^.{6,}$/,
		isOnlyCn: /^[\u4e00-\u9fa5]+$/
	};
	o = {};

	o.password = function(v) {
		var rs;
		if(r.hasBlank.test(v) || v.length < 6 || !v.trim()) {
			rs = {
				isPass: false,
				msg: "密码最少为6位，不能含有空格"
			};
		} else {
			rs = {
				isPass: true,
				msg: ""
			};
		}
		return rs;
	};

	o.email = function(v) {
		var rs;
		if(r.hasCN.test(v) || r.hasBlank.test(v) || !r.isMail.test(v) || !v.trim()) {
			rs = {
				isPass: false,
				msg: "邮箱格式错误，不能含有中文、空格或特殊字符"
			};
		} else {
			rs = {
				isPass: true,
				msg: ""
			};
		}
		return rs;
	};

	o.nickname = function(v) {
		var rs;
		rs = {
			isPass: true,
			msg: ""
		};
		return rs;
	};

	o.address = function(v) {
		var rs;
		if(!v.trim()) {
			rs = {
				isPass: false,
				msg: "地址不能为空"
			};
		} else {
			rs = {
				isPass: true,
				msg: ""
			};
		}
		return rs
	};

	o.postcode = function(v) {
		var rs;
		if(!v.trim() || !r.isPostCode.test(v)) {
			rs = {
				isPass: false,
				msg: "邮政编码填写不正确"
			};
		} else {
			rs = {
				isPass: true,
				msg: ""
			};
		}
		return rs;
	};

	o.phone = function(v) {
		var rs;
		if(!v.trim() || !r.isPhone.test(v)) {
			rs = {
				isPass: false,
				msg: "手机号码填写不正确"
			};
		} else {
			rs = {
				isPass: true,
				msg: ""
			};
		}
		return rs
	};

	o.name = function(v) {
		var rs;
		if(!v.trim()) {
			rs = {
				isPass: false,
				msg: "姓名不能为空"
			};
		} else {
			rs = {
				isPass: true,
				msg: ""
			};
		}
		return rs
	};

	o.cn_name = function(v) {
		var rs;
		if(!v.trim() || !r.isOnlyCn.test(v)) {
			rs = {
				isPass: false,
				msg: "中国大陆地区姓名请填写中文"
			};
		} else {
			rs = {
				isPass: true,
				msg: ""
			};
		}
		return rs
	};
	return o;
}(jQuery);

/****************************************** 登录注册 *******************************/
//登录
function PageLoginConfirm(view_model, data) {
	/**
	 * data格式：{password: $ele,email:$ele},$ele为包含表单input的jquery对象
	 * 依赖：CECSValidate、视图层view_model
	 */
	var $email, $pw, pw_r, e_r, isPass;
	$email = data.email;
	$pw = data.password;
	isPass = true;

	//验证
	pw_r = CECSValidate.password($pw.val());
	e_r = CECSValidate.email($email.val());

	var arr = [{
			r: e_r,
			e: $email
		},
		{
			r: pw_r,
			e: $pw
		}
	];
	for(var i = 0; i < arr.length; i++) {
		var result, $ele;
		result = arr[i].r;
		$ele = arr[i].e;
		if(!result.isPass) {
			//提示错误
			view_model.show_error($ele, result.msg);
			isPass = false;
		} else {
			view_model.hide_error($ele);
		}
	}
	return isPass;
}

//注册
function PageRegisterConfirm(view_model, data) {
	var $email, $pw, $name, $cpw, pw_r, e_r, cpw_r, n_r, isPass;
	$email = data.email;
	$pw = data.password;
	$cpw = data.confirm_password;
	$name = data.nick_name;
	isPass = true;

	//验证
	pw_r = CECSValidate.password($pw.val());
	e_r = CECSValidate.email($email.val());
	n_r = CECSValidate.nickname($name.val());

	if($cpw.val() == $pw.val()) {
		cpw_r = {
			isPass: true,
			msg: ""
		}
	} else {
		cpw_r = {
			isPass: false,
			msg: "两次输入的密码不一致"
		}
	}

	var arr = [{
			r: pw_r,
			e: $pw
		},
		{
			r: e_r,
			e: $email
		},
		{
			r: n_r,
			e: $name
		},
		{
			r: cpw_r,
			e: $cpw
		}
	];
	for(var i = 0; i < arr.length; i++) {
		var $ele, result;
		result = arr[i].r;
		$ele = arr[i].e;

		if(!result.isPass) {
			view_model.show_error($ele, result.msg);
			isPass = false;
		} else {
			view_model.hide_error($ele);
		}
	}
	return isPass;
}

/****************************************** 登录注册 end ********************************/

/****************************************** 地址 ********************************/
function AddressConfirm(view_model, data) {
	/**
	 * 地址验证
	 */
	var i, j;
	var c = CECSValidate;
	var $name = data.name,
		$country = data.country,
		$region = data.region,
		$city = data.city,
		$email = data.email,
		$phone = data.phone,
		$postcode = data.postcode,
		$street = data.street,
		$s_county = data.s_county;

	//指定每个input要调用的验证函数
	var arr = [{
			$e: $name,
			f: Name
		},
		{
			$e: $country,
			f: Area
		},
		{
			$e: $region,
			f: Area
		},
		{
			$e: $city,
			f: Area
		},
		{
			$e: $s_county,
			f: Area
		},
		{
			$e: $email,
			f: c.email
		},
		{
			$e: $phone,
			f: c.phone
		},
		{
			$e: $postcode,
			f: c.postcode
		},
		{
			$e: $street,
			f: c.address
		}
	];

	//地区验证函数
	function Area(v) {
		if(["省份", "地级市", "市、县级市", "国家、地域"].indexOf(v) != -1) {
			return {
				isPass: false,
				msg: "收货城市不能为空"
			}
		} else {
			return {
				isPass: true,
				msg: ""
			}
		}
	}

	//姓名验证函数若为大陆，则用中文名验证
	function Name(v) {
		if($country.val() == "中国大陆") {
			return c.cn_name(v);
		} else {
			return c.name(v);
		}
	}

	//绑定focus和blur事件
	for(i = 0; i < arr.length; i++) {

		arr[i].$e.on("blur", {
			fun: arr[i].f
		}, function(e) {
			var $this = jQuery(this);
			var rs = e.data.fun($this.val());
			if(!rs.isPass) {
				view_model.show_error($this, rs.msg);
			} else {
				view_model.hide_error(jQuery(this));
			}
		});
	}
	return {
		check: function() {
			var isPass = true;
			for(j = 0; j < arr.length; j++) {
				//调用相应函数验证表单值
				var result = arr[j].f(arr[j].$e.val());

				//ui展示
				if(result.isPass) {
					view_model.hide_error(arr[j].$e);
				} else {
					view_model.show_error(arr[j].$e, result.msg);
					isPass = false;
				}
			}

			//若通过验证，则将验证数据返回
			if(isPass) {
				var type_cn, verify_id, area_option;
				var data = {};
				for(var k = 0; k < arr.length; k++) {
					data[arr[k].$e.attr("name")] = arr[k].$e.val()
				}

				//表单数据处理
				area_option = {
					"香港": "HK",
					"澳门": "MO",
					"台湾": "TW"
				};
				if(data["nation_NoUse"] == "中国大陆") {
					type_cn = "CN";
					verify_id = 0;
				} else {
					type_cn = area_option[data["region"]];
					verify_id = 1;
				}
				data["country_id"] = type_cn;
				data["verify"] = verify_id;
				data["lastname"] = ".";
				return data;
			}
			return isPass;
		}
	};
}

/****************************************** 地址 end  ************************************/

/************************************  修改用户信息  *********************************/
function EditInfoConfirm(view_model, data) {
	var new_rs, cur_rs, isPass, $new, $confirm, $current;
	$new = data["new_pw"];
	$confirm = data["confirm_pw"];
	$current = data["current_pw"]
	isPass = true;

	//获取验证结果
	new_rs = CECSValidate.password($new.val());
	cur_rs = CECSValidate.password($current.val());

	if(!cur_rs.isPass) {
		view_model.show_error($current, cur_rs.msg);
		isPass = false
	}

	if(!new_rs.isPass) {
		view_model.show_error($new, new_rs.msg);
		isPass = false
	}

	if($confirm.val() != $new.val()) {
		view_model.show_error($confirm, "请确保密码匹配");
		isPass = false
	}
	return isPass;
}

/*********************************** 修改用户信息 end  ******************************************/

/********************************* 购物车   ******************************************/

function GetLimitResult(value, buy_limit, storage) {
	/**
	 * buy_limit:限购; storage:数量；
	 */
	var v, b, s, r;
	v = parseInt(value);
	b = parseInt(buy_limit);
	s = parseInt(storage);

	if(s == 0) {
		return {
			isPass: false,
			msg: "产品暂时缺货"
		}
	}

	if(b <= s) {
		if(v <= b) {
			r = {
				isPass: true,
				msg: ""
			};
		} else {
			r = {
				isPass: false,
				msg: ["该产品限购", b, "件，请调整数量"].join("")
			};

		}
	} else {
		if(v <= s) {
			r = {
				isPass: true,
				msg: ""
			};
		} else {
			r = {
				isPass: false,
				msg: ["该产品库存还有", s, "件，请调整数量"].join("")
			};
		}
	}
	return r;
}

function CheckQtyLimit(view_model) {
	var v, buy_limit, storage, rs;
	v = this.value;
	buy_limit = parseInt(this.getAttribute("data-limitedqty"));
	storage = this.getAttribute("data-limitedstorage");

	//获取检查结果与提示信息
	rs = GetLimitResult(v, buy_limit, storage);
	if(!rs.isPass) {
		view_model.show_error(this, rs.msg);
		return false;
	} else {
		view_model.hide_error(this);
		return true;
	}
}

function AccountAction($ele, view_model) {
	var isPass = true;
	$ele.each(function() {
		if(!CheckQtyLimit.call(this, AccountCartView)) {
			isPass = false;
		}
	});
	if(!isPass) {
		AccountCartView.msg('您购买的数量出现问题，请修改数量后再进行结账！');
		return false;
	}
	jQuery.ajax({
		url: '/checkout/cart/check',
		type: 'get',
		dataType: 'json',
		beforeSend: view_model.beforeSend,
		success: function(data) {
			if(data.ret == 1) {
				window.location = '/onestepcheckout/';
			} else if(data.ret == 0) {
				view_model.msg(data.message);
				view_model.complete();

			} else {
				view_model.complete();
			}
		}
	});
}

function qtySubOrPlus(input, type, view_model, $ele) {
	/**
	 * 购物数量加减按钮
	 * type为true则加，为false则减
	 */
	var r, v, buylimit, storage, max, msg;
	r = input.value.match(/^[1-9]\d*$/);
	v = parseInt(r ? r[0] : 1);
	buylimit = parseInt(input.getAttribute("data-limitedqty"));
	storage = parseInt(input.getAttribute("data-limitedstorage"));
	max = Math.min(buylimit, storage);
	view_model.hide_error($ele);

	if(storage == 0) {
		view_model.show_error($ele, "该商品暂时缺货");
		return
	}

	if(type) {
		if(v < max) {
			v = v + 1
		}
	} else {
		v -= 1;
		if(v < 1) {
			v = 1;
		}
	}
	if(v >= max) {
		msg = max == buylimit ? ("该产品限购" + max + "件") : ("该产品库存还有" + max + "件");
		view_model.show_error($ele, msg);
	}
	input.value = v;
}

function CouponPost(view_model, $couponCode) {
	var couponCode = $couponCode.val().trim();
	if(!couponCode) {
		view_model.msg("请输入优惠码");
		return
	}
	if(!jQuery('#checkout-payment-method-load').find(':radio:checked').length) {
		view_model.msg('请先择支付方式,再使用优惠券!');
		return;
	}
	jQuery.ajax({
		type: 'post',
		url: "/checkout/cart/couponPost/",
		dataType: 'json',
		data: 'coupon_code=' + couponCode,
		success: function(data) {
			var d;
			if(data.ret == 1) {
				view_model.msg(data.msg);
			} else {
				d = {
					total: data.grandTotal,
					ship: data.ship,
					discount: data.discount
				};
				view_model.init_pay_info(d)
			}
		},
		beforeSend: view_model.beforeSend,
		complete: view_model.complete
	});
}

function DeleteProduct(view_model, url) {
	jQuery.ajax({
		url: url,
		type: 'get',
		dataType: 'json',
		success: function(data) {
			if(data.ret == 1) {
				view_model.msg("删除成功");
				window.location.reload();
			} else if(data.ret == 0) {
				view_model.msg(data.message);
			}
		}
	});
	return false;
}

function CartModel(view_model) {
	var updateXhr, updateIndex, o, selectXhr;
	updateIndex = 0; //用于判断请求序列
	updateXhr = null; //用于判断是否已经发送更改商品数量的请求
	selectXhr = null; //用于判断是否已经发送选择商品的请求

	o = {};

	o.dataDeal = function(data) {
		var id;
		for(key in data.baseInfo) {
			id = key;
		}
		return {
			ship: data.shippingValue,
			discount: data.discount,
			shipping_discount_amount: data.shipping_discount_amount,
			product_discount_amount: data.product_discount_amount,
			subtotal: data.subtotalValue,
			//subtotal: data.baseInfo[id].ItemSubtotal,
			grandtotal: data.grandTotal,
			weight: data.baseInfo[id].WeightTotal,
			rmb: data.rmb
		};
	};

	/**
	 * 更新单个商品数量
	 */
	o.updateItem = function() {
		//如果已经有要发送的请求，则取消
		if(updateXhr !== null) {
			updateXhr.abort();
		}
		var itemsJson, itemsData, time;

		itemsJson = view_model.getAllItemJsonData();
		itemsData = view_model.getItemsData();
		time = new Date().getTime();

		updateXhr = jQuery.ajax({
			type: 'post',
			url: "/cart/item/qtychange",
			dataType: 'json',
			async: true,
			context: ++updateIndex,
			data: 'Data=' + itemsJson + '&timestamp=' + time,
			success: function(result) {
				var view_data;
				if(updateIndex > this) {
					return;
				}

				view_data = o.dataDeal(result.Data);
				if(result.Data.ret === 1) {
					view_model.complete();
					view_model.initInfo(view_data);

					for(var id in result.Data.itemPriceArray) {
						var weight = result.Data.itemPriceArray[id]["itemWeight"];
						result.Data.itemPriceArray[id]["itemWeight"] = Number(weight).toFixed(0);
					}
					//更新购物车表单
					view_model.updateTableInfo(itemsData, result.Data.itemPriceArray);
				} else {
					var msg = '<div class="tip-success-content"><p>' + result.Data.msg + '</p></div>';
					view_model.msg(msg);
				}
			},
			beforeSend: view_model.beforeSend,
			error: view_model.complete
		});
	};

	/**
	 * 选择商品
	 */
	o.selectItem = function() {

		if(selectXhr !== null) {
			selectXhr.abort();
		}
		var data, time;

		data = view_model.getAllItemJsonData();
		time = new Date().getTime();

		selectXhr = jQuery.ajax({
			type: 'post',
			url: SELECT_ITEM_URL,
			dataType: 'json',
			context: ++updateIndex,
			data: 'Data=' + data + '&timestamp=' + time,
			success: function(result) {
				var view_data;

				if(updateIndex > this || result.Data.ret === 3) {
					return;
				}

				view_data = o.dataDeal(result.Data);
				if(result.Data.ret === 1) {
					view_model.initInfo(view_data);
				} else {
					var msg = '<div class="tip-notice-content"><p>' + result.Data.msg + "</p></div>";
					view_model.msg(msg);
					view_model.initInfo(view_data)
				}
				view_model.complete();
			},
			beforeSend: view_model.beforeSend,
			error: view_model.complete
		});
	};

	o.initInfo = function() {
		jQuery.ajax({
			type: 'post',
			url: '/cart/item/getInfo',
			dataType: 'json',
			data: 'ShippingMethod=tablerate',
			success: function(data) {
				if(data.ret === 1) {
					var view_data = o.dataDeal(data);
					view_model.initInfo(view_data);
				}
			},
			error: function(error) {}
		});
	};

	return o;
}
/************************** 购物车 end  **********************************/

/*************************  身份验证  *****************************/

var IdValidator = (function($) {
	function getIdCardInfo(a) {
		var b = {
			isTrue: !1,
			year: null,
			month: null,
			day: null,
			isMale: !1,
			isFemale: !1
		};
		if(!a || 15 != a.length && 18 != a.length) return b.isTrue = !1, b;
		if(15 == a.length) {
			var c = a.substring(6, 8),
				d = a.substring(8, 10),
				e = a.substring(10, 12),
				f = a.substring(14, 15),
				g = new Date(c, parseFloat(d) - 1, parseFloat(e));
			return g.getYear() != parseFloat(c) || g.getMonth() != parseFloat(d) - 1 || g.getDate() != parseFloat(e) ? b.isTrue = !1 : (b.isTrue = !0, b.year = g.getFullYear(), b.month = g.getMonth() + 1, b.day = g.getDate(), f % 2 == 0 ? (b.isFemale = !0, b.isMale = !1) : (b.isFemale = !1, b.isMale = !0)), b
		}
		if(18 == a.length) {
			var c = a.substring(6, 10),
				d = a.substring(10, 12),
				e = a.substring(12, 14),
				f = a.substring(14, 17),
				g = new Date(c, parseFloat(d) - 1, parseFloat(e));
			if(g.getFullYear() != parseFloat(c) || g.getMonth() != parseFloat(d) - 1 || g.getDate() != parseFloat(e)) return b.isTrue = !1, b;
			var h = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1],
				i = [1, 0, 10, 9, 8, 7, 6, 5, 4, 3, 2],
				j = 0,
				k = a.split("");
			"x" == k[17].toLowerCase() && (k[17] = 10);
			for(var l = 0; 17 > l; l++) j += h[l] * k[l];
			var l = j % 11;
			return k[17] != i[l] ? b.isTrue = !1 : (b.isTrue = !0, b.year = g.getFullYear(), b.month = g.getMonth() + 1, b.day = g.getDate(), f % 2 == 0 ? (b.isFemale = !0, b.isMale = !1) : (b.isFemale = !1, b.isMale = !0), b)
		}
		return b
	};

	var confirm, isRequesting;
	isRequesting = false;
	confirm = function(view_model, data) {
		var r, id, add_id, name, mail, phone, $valid_add;

		if(isRequesting) {
			return;
		}
		view_model.confirming();
		var timer = setTimeout(function() {
			clearTimeout(timer);
			id = data.id_no;
			add_id = data.customer_address_id;
			name = data.id_name;
			mail = data.mail;
			phone = data.phone;
			$valid_add = $('.address.selectd'); //防止验证过程中用户选取其他地址

			r = getIdCardInfo(id);
			if(!r.isTrue) {
				view_model.confirm_fail("请输入正确的身份证号码");
			} else {
				$.ajax({
					type: 'post',
					url: '/authenticate/check/ajaxIdCheck',
					dataType: 'json',
					data: {
						"identity": id,
						"addressid": add_id
					},
					beforeSend: function() {
						isRequesting = true;
					},
					success: function(data) {
						if(data.ret - 0 === 0) {
							$valid_add.trigger("click").find('input.verify').val(1);
							view_model.confirm_passed(name);
						} else {
							view_model.confirm_fail(data.msg);
						}
					},
					complete: function() {
						isRequesting = false;
					},
					error: function() {
						view_model.confirm_fail("网络错误");
					}
				});
			}
		}, 500);
	};
	return confirm
}(jQuery));

/************************** 身份验证 end  **********************************/

/*===============================================================================================================================*/