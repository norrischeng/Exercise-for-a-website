<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!-- saved from url=(0037)http://www.laredoute.cn/checkout/cart -->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="zh" lang="zh">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath%>">
<title>购物车 | LaRedoute中文官网</title>
<meta name="description"
	content="法国电子商务购物网站，于1837年在法国诞生。多年来，品牌始终秉承着”选择多样，品质卓越，价格合理“的商业理念，在全球四大洲120多个国家拥有超过300万顾客，目前是法国最具价值的时尚品牌之一。">
<meta name="keywords"
	content="乐都特_正品低价_法国直邮_法国海淘_时尚男装_时尚女装_童装_家居用品_laredoute_法国时尚_孕妇装,如何重现香榭丽舍大街风情
把法国本土的优雅与自信带到中国？答案是:
www.laredoute.cn">
<meta name="robots" content="INDEX,FOLLOW">
<meta name="baidu-site-verification" content="cJeqxxHgMk">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon"
	href="http://o6lmzxerb.bkt.clouddn.com/skin/frontend/PlumTree/lr_pc/favicon.ico"
	type="image/x-icon">
<meta property="qc:admins" content="362076462264125475456367">
<meta property="wb:webmaster" content="bcc00827e93d2eed">

<link rel="stylesheet" type="text/css" href="css/style.css" media="all">
<script src="js/hm.js"></script>
<script type="text/javascript" async="" src="js/htag.js"></script>
<script async="" src="js/sensorsdata.min.js"></script>
<script type="text/javascript" src="js/jquery-1.7.min.js"></script>
<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="http://o6lmzxerb.bkt.clouddn.com/skin/frontend/PlumTree/lr_pc/css/styles-ie.css?v=20171012" media="all" />
<![endif]-->
<!--[if lt IE 7]>
<script type="text/javascript" src="http://o6lmzxerb.bkt.clouddn.com/js/lib/ds-sleight.js"></script>
<script type="text/javascript" src="http://o6lmzxerb.bkt.clouddn.com/skin/frontend/base/default/js/ie6.js?v=20171012"></script>
<![endif]-->

<script type="text/javascript">
	var $ = jQuery;
</script>

<script type="text/javascript">
	//         
	var BLANK_URL = 'http://o6lmzxerb.bkt.clouddn.com/js/blank.html';
	var BLANK_IMG = 'http://o6lmzxerb.bkt.clouddn.com/js/spacer.gif';
	var BLANK_URL = 'http://o6lmzxerb.bkt.clouddn.com/js/blank.html';
	var BLANK_IMG = 'http://o6lmzxerb.bkt.clouddn.com/js/spacer.gif';
	var SKIN_URL = 'http://o6lmzxerb.bkt.clouddn.com/skin/frontend/PlumTree/lr_pc/';
	var ROOT_URL = 'http://www.laredoute.cn/';
	var INT_FIXED_LENGTH = 2;
	//
</script>
<script type="text/javascript">
	var zampda_enabled = false;
</script>
<meta name="google-site-verification"
	content="RqbjumRZK339TH_WASyy--4SfjRT5Wx-T0W7IQfjPdI">
</head>
<script type="text/javascript">
	var sa_enabled = true;
	/*Sensors Analytics JS SDK*/
	(function(para) {
		var p = para.sdk_url, n = para.name, w = window, d = document, s = 'script', x = null, y = null;
		w['sensorsDataAnalytic201505'] = n;
		w[n] = w[n] || function(a) {
			return function() {
				(w[n]._q = w[n]._q || []).push([ a, arguments ]);
			}
		};
		var ifs = [ 'track', 'quick', 'register', 'registerPage',
				'registerOnce', 'registerSession', 'registerSessionOnce',
				'trackSignup', 'trackAbtest', 'setProfile', 'setOnceProfile',
				'appendProfile', 'incrementProfile', 'deleteProfile',
				'unsetProfile', 'identify', 'login' ];
		for ( var i = 0; i < ifs.length; i++) {
			w[n][ifs[i]] = w[n].call(null, ifs[i]);
		}
		if (!w[n]._t) {
			x = d.createElement(s), y = d.getElementsByTagName(s)[0];
			x.async = 1;
			x.src = p;
			y.parentNode.insertBefore(x, y);
			w[n]._t = 1 * new Date();
			w[n].para = para;
		}
	})
			({
				sdk_url : 'http://o6lmzxerb.bkt.clouddn.com/js/sensorsanalytics/sensorsdata.min.js',
				name : 'da_sensorsdata',
				server_url : 'http://report.azoyagroup.com/?app_id=bmNzhkNTll&sign=ad57ed573a1d5fd95c947dd2ccda779b'
			});

	da_sensorsdata.quick('allTrack');

	~(function() {

		function objectAssign() {
			if (arguments.length > 0) {
				var newObj = {};
				for ( var i = 0; i < arguments.length; i++) {
					if (Object.prototype.toString.call(arguments[i]) !== '[object Object]') {
						console.warn("Parameter must be object");
						return;
					}
					var source = arguments[i];
					for ( var key in source) {
						if (Object.prototype.hasOwnProperty.call(source, key)) {
							newObj[key] = source[key];
						}
					}
				}
				return newObj;
			} else {
				console.warn("Parameter cannot be null");
				return;
			}
		}

		// 公共属性
		var sa_common_properties = {
			"login_user_id" : "412259924@qq.com",
			"website_id" : 26,
			"i_tag_page" : "",
			"i_tag_region" : "",
			"i_tag_hyperlink" : "",
			"w_tag_page" : "",
			"w_tag_region" : "",
			"w_tag_hyperlink" : "",
			"promotion_source" : "",
			"platform_id" : 1,
			"level_1_page_type_id" : "7",
			"level_2_page_type_id" : ""
		}, loginUserId = SagetCookie("SA_CUSTOMER_INFO"), saLoginId = SagetCookie("SA_CUSTOMER_ID"), itag = SagetCookie("_itag")
				|| "", arrayOfitag = itag.split(".", 3), wtag = SagetCookie("_wtag")
				|| "", arrayOfwtag = wtag.split(".", 3), platformId = (function() {
			var isPc = (function() {
				var userAgentInfo = navigator.userAgent;
				Agents = [ "Android", "iPhone", "SymbianOS", "Windows Phone",
						"iPad", "iPod" ], flag = true;
				for ( var v = 0; v < Agents.length; v++) {
					if (userAgentInfo.indexOf(Agents[v]) > 0) {
						flag = false;
						break;
					}
				}
				return flag;
			})();
			var isWx = (function() {
				var ua = window.navigator.userAgent.toLowerCase();
				return ua.match(/MicroMessenger/i) == 'micromessenger'
			})();
			return isPc ? 1 : isWx ? 5 : 2;
		})();

		sa_common_properties = objectAssign(sa_common_properties, {
			$referrer : PUBLIC_ATTRIBUTES.$referrer,
			$referrer_host : PUBLIC_ATTRIBUTES.$referrer_host,
			$url : location.href,
			$url_path : location.pathname,
			$title : document.title,
			i_tag_page : arrayOfitag[0] || "",
			i_tag_region : arrayOfitag[1] || "",
			i_tag_hyperlink : arrayOfitag[2] || "",
			w_tag_page : arrayOfwtag[0] || "",
			w_tag_region : arrayOfwtag[1] || "",
			w_tag_hyperlink : arrayOfwtag[2] || "",
			login_user_id : loginUserId || "",
			platform_id : platformId || ""
		});

		da_sensorsdata.registerPage(sa_common_properties);
		da_sensorsdata.quick('autoTrack', sa_common_properties);
		if (saLoginId) {
			da_sensorsdata.login(saLoginId);
		}
	})()
</script>
<body>
	<div class="wrapper">
		<div class="global-tips">
			<p style="line-height: 32px;">全新升级：直邮运费仅需9.99欧，全场购物满89欧免邮！</p>
		</div>
		<div class="head-container">
			<p id="back-top">
				<a href="http://www.laredoute.cn/checkout/cart#top"><span></span>
				</a>
			</p>
			<div class="main-container col1-layout">
				<div class="main">
					<div class="col-main width_1190">
						<div class="header clearfix ">
							<div class="HeaderTop">
								<div class="HeaderTopContainer width_1190">
									<div class="HeaderTopLeft">
										<span class="HeaderUserInfo textwrap"> Hi~ <span
											class="HeaderWord welcome textwrap">412259924</span> | <a
											class="logout"
											href="http://www.laredoute.cn/customer/account/logout">退出</a>
										</span> <span class="HeaderWord country"> <a
											href="http://www.laredoute.cn/checkout/cart"><img
												src="img/icon-fr.png" width="28" height="14"> </a> <a
											href="http://www.laredoute.cn/checkout/cart"><img
												src="img/icon-usa.png" width="28" height="14"> </a> <a
											href="http://www.laredoute.cn/checkout/cart"><img
												src="img/icon-uk.png" width="28" height="14"> </a> </span>
									</div>
									<div class="HeaderTopRight">
										<span class="customer-service-mail">中文客服邮箱：<b>china@laredoute.com</b>
										</span> <a class="HeaderWord account"
											href="http://www.laredoute.cn/sales/order/history/">我的订单</a>
										<a href="http://www.laredoute.cn/helper/about/"
											class="HearderWord aboutUs" target="_blank">关于我们</a> <a
											href="http://www.laredoute.cn/checkout/cart"
											class="HearderWord helpInfo">帮助中心</a>
									</div>
								</div>
							</div>
							<div class="HeaderMiddle clearfix width_1190" style="clear:both;">
								<div class="left">
									<a href="http://www.laredoute.cn/" class="HeaderBrandLogo">
										<img src="img/header-logo.jpg"> </a>
								</div>
							</div>

							<!-- 首页弹窗 -->

							<!--{AWMOBILE_CART_e1c05eacfa94f8fa0ae38c83e388d984}-->
							<div class="cart">
								<div class="cart-left">
									<div class="page-title">
										<h1 class="clearfix">
											<span>购物车</span>
										</h1>
									</div>

									<div id="shopping-cart" class="cart-table-wrap">
										<!--        <form action="-->
										<!--" method="post">-->
										<!--            <fieldset>-->
										<table class="data-table cart-table">
											<tbody>
												<tr class="cart-thead-tr">
													<td class="col_0"><input type="checkbox"
														class="check checks" checked="checked" />全选</td>
													<td class="col_1">产品图片</td>
													<td class="col_2"><span class="nobr">产品名</span>
													</td>
													<td class="col_6" rowspan="1">数量</td>
													<td class="col_7 a-center subtotal" colspan="1">商品小计</td>
													<td class="col_8">操作</td>
												</tr>
											</tbody>
										</table>

										<!--                不同国家分为不同table-->
										<div class="country-part FR selected">
											<table id="1078" class="supplier">

												<tbody>
													<c:forEach items="${cartList}" var="map">
														<tr id="143803" class="tr-selected">
															<td class="col_checkbox"><input data-item="${map.productId }"
																type="checkbox" class="check"
																<c:if test="${map.checked eq 1 }">checked=checked</c:if>>
															</td>
															<td class="product-thumbnail col_1"><a
																href="http://www.laredoute.cn/1300083.html/"
																target="_blank" title="SOFT GREY ${map.productName }"
																class="product-image"><img
																	src="img/350006087_2_CO_1_3233084.jpg" width="75"
																	height="75" alt="${map.productName }">
															</a>
															</td>
															<td class="col_2">
																<div class="product-name">
																	<a target="_blank"
																		href="http://www.laredoute.cn/1300083.html/">${map.productName
																		}</a>
																</div>
																<div class="size-color">
																	<span class="color">颜色： ${map.colorType }</span> <span
																		class="size">尺码： ${map.sizeName } </span>
																</div>
															</td>

															<td class="a-center col_5 unit-price"
																style="display:none"><span class="cart-price">

																	${map.productPrice } </span>
															</td>
															<td class="col_6 a-center cart-qty">
																<div class="qty-ctrl clearfix dib-wrap">

																	<!--        默认最大购买额度是5个-->
																	<a href="javascript:void(0)" class="qty-sub"></a>
																	 <input	value="${map.productQuantity}" size="4" title="数量"
																		class="dib input-text qty goods-qty" maxlength="12"
																		data-itemid="143803" data-limitedqty="100"
																		data-limitedstorage="10"> 
																<a		href="javascript:void(0)" class="qty-add"></a>
																</div>
																<p class="errorTip"></p></td>
															<td class="col_7 subtotal"><span class="cart-price">
																	${map.productPrice } </span>
															</td>

															<td class="col_8 a-center"><a href="javascript:;"
																data-deleteurl="${map.productId}"
																title="删除项目" class="btn-remove btn-remove2"
																>删除</a>
															</td>

															<scrippt> </scrippt>

														</tr>
													</c:forEach>


												</tbody>
											</table>
										</div>
										<!--            </fieldset>-->
										<!--        </form>-->
									</div>

									<div class="shop-cart-extra clearfix">
										<span class="extra-infos"> <span>每单运费仅需9.99欧
												，全场购满89欧免邮！</span> <a href="http://www.laredoute.cn/"
											style="color:#ff0000;">双节回馈返场 直邮运费仅需9.99欧 全场购满89欧免邮 立刻选购</a>

										</span>
										<style>
.extra-infos span {
	display: none;
}

.reduct-condition a {
	display: none;
}
</style>
										<span class="checkAll"><input type="checkbox"
											id="getAll" checked="true">全选 
										</span> <a class="delete-checked" href="javascript:void(0)">删除选中的商品</a>
									</div>
								</div>

								<!-- end of cart-left -->

								<div class="cart-right">
									<h3 class="side-title">
										<span>金额结算</span>
									</h3>
									<p class="reduct-condition">
										<span>每单运费仅需9.99欧 ，全场购满89欧免邮！</span> <a
											href="http://www.laredoute.cn/" style="color:#ff0000;">双节回馈返场
											直邮运费仅需9.99欧 全场购满89欧免邮 立刻选购</a>

										<style>
.extra-infos span {
	display: none;
}

.reduct-condition a {
	display: none;
}
</style>
									</p>

									<div class="messages"></div>
									<div class="ready-to-pay clearfix">
										<div class="all-price">
											<div class="price-details">
												<div id="quote_subtotal" class="clearfix cart-details-line">
													<span class="label">商品总价：</span> <span
														class="price summary" data-item-price=""><span
														class="value">${totalPrice}</span>€</span>
												</div>
												<div id="product_discount_amount"
													class="clearfix cart-details-line" style="display: none;">
													<span class="label">商品折扣：</span> <span
														class="price summary" data-item-price="">-<span
														class="value">0.00</span>€</span>
												</div>
												<input type="hidden" id="quote" value="0">
													<div class="clearfix cart-details-line">
														<span class="label">总重量(g)：</span> <span class="summary"
															id="total_weight">${totalWeight}</span>
													</div>
													<div class="clearfix cart-details-line">
														<span class="label">运费总计：</span> <span class="summary"
															id="quote_shipping"> <span class="price"
															data-item-price=""><span class="value">9.99</span>€</span>
														</span>
													</div>
													<div class="clearfix cart-details-line" style="">
														<span class="label">运费折扣：</span> <span class="summary"
															id="shipping_discount_amount" data-item-price="">-<span
															class="value">9.99</span>€</span>
													</div>
											</div>
											<div class="price-total">
												<p class="clearfix">
													<span class="label">应付总额：</span> <span
														class="summary main-total"><span
														class="all-grandtotal">${finalPrice }</span>€</span>
												</p>
											</div>
										</div>

										<!-- 优惠券-->
										<div class="order-summary-accordian">
											<h3 class="voucher-header side-title">
												<span>使用优惠码</span>
												<!--        <span class="voucher-toggle toggle-content"></span>-->
											</h3>
											<div class="order-summary-accordian-content-voucher">
												<div class="order-summary-options-voucher-codes">
													<div id="vcholder">
														<form id="discount-coupon-form"
															action="javascript:void(0)" method="post">
															<div class="promocode">
																<!-- <input type="hidden" name="remove" id="remove-coupone" value="1"/> -->
																<div class="hand-code">
																	<div id="coupon_code_label"></div>
																	<input type="text" id="coupon_code" name="coupon_code"
																		class="text-input" autocomplete="off" value=""
																		placeholder="请在此输入您的优惠码"> <input
																		class="use-code-btn brown button" type="button"
																		value="使用">
																</div>
																<div class="selet-code">
																	<span class="tlt">优惠券：</span> <span
																		class="drophook selected">选择可使用的优惠券</span> <span
																		class="codeinput"> <input type="hidden"
																		name="remove" id="remove-coupone" value=""> <span
																			id="coupon_code_label2"></span>
																	</span>
																	<div class="not-logged-in">
																		<p>
																			你还未登录，点确定进行登录。 <a
																				href="http://www.laredoute.cn/customer/account/login/referer/L2NoZWNrb3V0L2NhcnQ,/">确定</a>
																		</p>
																	</div>
																</div>
															</div>
														</form>
														<p class="vcholder_text"></p>
													</div>
												</div>
											</div>
										</div>
										<div class="checkout-types-button">
											<ul class="checkout-types">
												<li>

													<button id="AccountButton" type="button" title="进行结账"
														class="OrangeButton btn-proceed-checkout btn-checkout">
														进行结账</button>
												</li>
											</ul>
										</div>
									</div>
									<!--    <div class="cart-tip">-->
									<!--        -->
									<!--    </div>-->

									<div id="historyData">
										<input type="hidden" id="isHistoryPage" value="false">
											<input type="hidden" id="itemsData" value=""> <input
												type="hidden" id="currency" value="€">
									</div>

								</div>
								<!-- end of cart-right -->
							</div>
							<!-- end of cart -->
							<div class="cart-foot">

								<div class="everyone-watching" id="everyone-watching">

									<div class="pd-section-header">
										<div class="section-title">
											<h1 class="section-maintitle">大家都在看</h1>
											<h2 class="section-subtitle">People See Also</h2>
										</div>
									</div>

									<ul class="pl-grid clearfix">
										<li><a target="_blank"
											href="http://www.laredoute.cn/1525263.html/"> <img
												class="lazy_product pl-image"
												data-original="http://o6lmzxerb.bkt.clouddn.com/media/catalog/product/1/1/11_7.png?imageMogr2/thumbnail/252x252/extent/252x252/background/d2hpdGU="
												src="img/bitmap.png">
										</a>
											<div class="pl-description">
												<a href="http://www.laredoute.cn/1525263.html/">R
													edition搭扣翻盖蛇纹包</a> <span class="current-price"> €49.99 </span>
											</div>
										</li>
									</ul>
								</div>

							</div>
							<!--/{AWMOBILE_CART_e1c05eacfa94f8fa0ae38c83e388d984}-->
						</div>
					</div>
				</div>

				<!-- js/area.js -->
				<!-- js/jquery.lazyload.min.js -->
				<!-- js/common.js -->
				<!-- js/innerPlugin.js -->
				<!-- js/scripts.js -->
				<!-- js/source-cookie.js -->
				<!-- js/jquery.cookie.js -->

				<style>
#qrcodeWeixin {
	display: none;
}
</style>
				<script>
				
					var check = $(".check");
					var checks = $(".checks");
					$(check).each(function() {
						$(this).click(function() {
							if ($(this).hasClass("checks")) {
								for ( var i = 0; i < check.length; i++) {
									check[i].checked = this.checked;
								}
							}
							if (!this.checked) {
								$(checks).attr("checked", false);

							}
							var flag = true;
							if (!$(this).hasClass("checks")) {
								for ( var i = 1; i < check.length; i++) {
									if (!check[i].checked) {
										flag = false;
									}

								}
								if (flag) {
									$(checks).attr("checked", true);
								}

							}
							var a=$(checks).prop("checked");
								$("#getAll").prop("checked",a)
							getMoney();
						}

						)
						
					})
					$("#getAll").click(function(){
						for(var i=0;check.length;i++){
							check[i].checked=$("#getAll")[0].checked;
						
						}
						getMoney();
					})
					function getMoney() {
						var num = 0;
						var price = 0;
						var totalPrice = 0;
						var weight = 0;
						var yunPrice = 0;
								$.ajax({
									url : "cart/selectCartAjax",
									success : function(data) {
										var data = JSON.parse(data);
										for ( var i = 0; i < data.length; i++) {
											if ($(".supplier tr").eq(i).find(
													"input").eq(0).attr(
													"checked")) {
												num = $(".supplier tr").eq(i)
														.find("input").eq(1)
														.val();
											
												price = parseFloat(data[i].productPrice);
												totalPrice = parseFloat(totalPrice
														+ num * price);
												weight = weight
														+ data[i].weight;
											}
										}
										totalPrice=totalPrice.toFixed(2);
										yunPrice = totalPrice - 8.8;
										yunPrice=yunPrice.toFixed(2);
										weight=weight.toFixed(2);
										if(yunPrice>0){
										$("#quote_subtotal").find("span").eq(2)
												.html(totalPrice);
										$("#total_weight").html(weight);
										$(".all-grandtotal").html(yunPrice);
										}else{
											$("#quote_subtotal").find("span").eq(2)
											.html(0);
											$("#total_weight").html(0);
													$(".all-grandtotal").html(0);
									
										}
									}

								});

					}
					  
				</script>
				<div class="js-container" style="display: none">
					<script type="text/javascript" src="js/area.js"></script>
					<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
					<script type="text/javascript" src="js/main-common.js"></script>
					<script type="text/javascript" src="js/common.js"></script>
					<script type="text/javascript" src="js/innerPlugin.js"></script>
					<script type="text/javascript" src="js/Menu.js"></script>
					<script type="text/javascript" src="js/source-cookie.js-"></script>
					<script type="text/javascript" src="js/jquery.cookie.js"></script>
					<script type="text/javascript" src="js/index.js"></script>
					<script type="text/javascript" src="js/QtyChange.js"></script>
					<script type="text/javascript"
						src="js/jquery.mCustomScrollbar.concat.min.js"></script>
					<script type="text/javascript" src="js/product_list.js"></script>
					<script type="text/javascript" src="js/sensorsAnalytics.js"></script>
				</div>
			</div>
		</div>
	</div>

	<div class="J-shopping-bag">
		<span class="loading"></span><span class="corner"></span>
	</div>
</body>

</html>