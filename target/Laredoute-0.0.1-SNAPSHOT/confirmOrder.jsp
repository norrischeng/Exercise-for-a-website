<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>确认订单 | LaRedoute中文官网</title>
	<meta name="description" content="法国电子商务购物网站，于1837年在法国诞生。多年来，品牌始终秉承着”选择多样，品质卓越，价格合理“的商业理念，在全球四大洲120多个国家拥有超过300万顾客，目前是法国最具价值的时尚品牌之一。">
	<meta name="keywords" content="乐都特_正品低价_法国直邮_法国海淘_时尚男装_时尚女装_童装_家居用品_laredoute_法国时尚_孕妇装,如何重现香榭丽舍大街风情
把法国本土的优雅与自信带到中国？答案是:
www.laredoute.cn">
		<meta name="robots" content="INDEX,FOLLOW">
		<meta name="baidu-site-verification" content="cJeqxxHgMk">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<link rel="shortcut icon" href="http://o6lmzxerb.bkt.clouddn.com/skin/frontend/PlumTree/lr_pc/favicon.ico" type="image/x-icon">
		<meta property="qc:admins" content="362076462264125475456367">
		<meta property="wb:webmaster" content="bcc00827e93d2eed">

		<link rel="stylesheet" type="text/css" href="css/style.css" media="all">
		
		<style>
					#qrcodeWeixin {
						display: none;
					}
				</style>
		
		<script type="text/javascript"  src="js/adv"></script>
		<script type="text/javascript"  src="js/adv(1)"></script>
		<script type="text/javascript"  src="js/adv(2)"></script>
		<script type="text/javascript"  src="js/presadv"></script>
		<script  src="js/a.js"></script>
		<script src="js/hm.js"></script>
		<script type="text/javascript"  src="js/htag.js"></script>
		<script  src="js/sensorsdata.min.js"></script>
		<script type="text/javascript" src="js/jquery-1.7.min.js"></script>
		<script type="text/javascript" src="js/prototype.js"></script>

		<script type="text/javascript">
			var $ = jQuery;
		</script>

		<script type="text/javascript">
			//<![CDATA[
			var BLANK_URL = 'http://o6lmzxerb.bkt.clouddn.com/js/blank.html';
			var BLANK_IMG = 'http://o6lmzxerb.bkt.clouddn.com/js/spacer.gif';
			var BLANK_URL = 'http://o6lmzxerb.bkt.clouddn.com/js/blank.html';
			var BLANK_IMG = 'http://o6lmzxerb.bkt.clouddn.com/js/spacer.gif';
			var SKIN_URL = 'http://o6lmzxerb.bkt.clouddn.com/skin/frontend/PlumTree/lr_pc/';
			var ROOT_URL = 'http://www.laredoute.cn/';
			var INT_FIXED_LENGTH = 2;
			//]]>
		</script>

		<script type="text/javascript">
			//<![CDATA[
			optionalZipCountries = ["FR"];
			//]]>
		</script>
		<script type="text/javascript">
			window.SagetCookie = function(name) {
				var reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)"),
					arr = document.cookie.match(reg);
				return arr ? unescape(arr[2]) : null;
			};

			window.PUBLIC_ATTRIBUTES = {};

			PUBLIC_ATTRIBUTES.platformId = (function() {
				var isPc = (function() {
					var userAgentInfo = navigator.userAgent;
					Agents = ["Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod"], flag = true;
					for(var v = 0; v < Agents.length; v++) { if(userAgentInfo.indexOf(Agents[v]) > 0) { flag = false; break; } }
					return flag;
				})();
				var isWx = (function() { var ua = window.navigator.userAgent.toLowerCase(); return ua.match(/MicroMessenger/i) == 'micromessenger'; })();
				return isPc ? 1 : isWx ? 5 : 2;
			})();

			PUBLIC_ATTRIBUTES.getReferrerHost = (function() {
				function _t() { return new RegExp(/(.*?)\.?([^\.]*?)\.?(com|net|org|biz|ws|in|me|co\.uk|co|org\.uk|ltd\.uk|plc\.uk|me\.uk|edu|mil|br\.com|cn\.com|eu\.com|hu\.com|no\.com|qc\.com|sa\.com|se\.com|se\.net|us\.com|uy\.com|ac|co\.ac|gv\.ac|or\.ac|ac\.ac|af|am|as|at|ac\.at|co\.at|gv\.at|or\.at|asn\.au|com\.au|edu\.au|org\.au|net\.au|id\.au|be|ac\.be|adm\.br|adv\.br|am\.br|arq\.br|art\.br|bio\.br|cng\.br|cnt\.br|com\.br|ecn\.br|eng\.br|esp\.br|etc\.br|eti\.br|fm\.br|fot\.br|fst\.br|g12\.br|gov\.br|ind\.br|inf\.br|jor\.br|lel\.br|med\.br|mil\.br|net\.br|nom\.br|ntr\.br|odo\.br|org\.br|ppg\.br|pro\.br|psc\.br|psi\.br|rec\.br|slg\.br|tmp\.br|tur\.br|tv\.br|vet\.br|zlg\.br|br|ab\.ca|bc\.ca|mb\.ca|nb\.ca|nf\.ca|ns\.ca|nt\.ca|on\.ca|pe\.ca|qc\.ca|sk\.ca|yk\.ca|ca|cc|ac\.cn|com\.cn|edu\.cn|gov\.cn|org\.cn|bj\.cn|sh\.cn|tj\.cn|cq\.cn|he\.cn|nm\.cn|ln\.cn|jl\.cn|hl\.cn|js\.cn|zj\.cn|ah\.cn|gd\.cn|gx\.cn|hi\.cn|sc\.cn|gz\.cn|yn\.cn|xz\.cn|sn\.cn|gs\.cn|qh\.cn|nx\.cn|xj\.cn|tw\.cn|hk\.cn|mo\.cn|cn|cx|cz|de|dk|fo|com\.ec|tm\.fr|com\.fr|asso\.fr|presse\.fr|fr|gf|gs|co\.il|net\.il|ac\.il|k12\.il|gov\.il|muni\.il|ac\.in|co\.in|org\.in|ernet\.in|gov\.in|net\.in|res\.in|is|it|ac\.jp|co\.jp|go\.jp|or\.jp|ne\.jp|ac\.kr|co\.kr|go\.kr|ne\.kr|nm\.kr|or\.kr|li|lt|lu|asso\.mc|tm\.mc|com\.mm|org\.mm|net\.mm|edu\.mm|gov\.mm|ms|nl|no|nu|pl|ro|org\.ro|store\.ro|tm\.ro|firm\.ro|www\.ro|arts\.ro|rec\.ro|info\.ro|nom\.ro|nt\.ro|se|si|com\.sg|org\.sg|net\.sg|gov\.sg|sk|st|tf|ac\.th|co\.th|go\.th|mi\.th|net\.th|or\.th|tm|to|com\.tr|edu\.tr|gov\.tr|k12\.tr|net\.tr|org\.tr|com\.tw|org\.tw|net\.tw|ac\.uk|uk\.com|uk\.net|gb\.com|gb\.net|vg|sh|kz|ch|info|ua|gov|name|pro|ie|hk|com\.hk|org\.hk|net\.hk|edu\.hk|us|tk|cd|by|ad|lv|eu\.lv|bz|es|jp|cl|ag|mobi|eu|co\.nz|org\.nz|net\.nz|maori\.nz|iwi\.nz|io|la|md|sc|sg|vc|tw|travel|my|se|tv|pt|com\.pt|edu\.pt|asia|fi|com\.ve|net\.ve|fi|org\.ve|web\.ve|info\.ve|co\.ve|tel|im|gr|ru|net\.ru|org\.ru|hr|com\.hr|ly|xyz)$/); }

				function _d(s) { var result = ''; try { result = decodeURIComponent(s.replace(/\+/g, ' ')); } catch(e) { result = s.replace(/\+/g, ' '); }; return result; }

				function _i(arg, str) {
					var sptr = arg.charAt(0),
						split = str.split(sptr);
					if(sptr === arg) { return split; } arg = parseInt(arg.substring(1), 10);
					return split[arg < 0 ? split.length + arg : arg - 1];
				}

				function _f(arg, str) {
					var sptr = arg.charAt(0),
						split = str.split('&'),
						field = [],
						params = {},
						tmp = [],
						arg2 = arg.substring(1);
					for(var i = 0, ii = split.length; i < ii; i++) {
						field = split[i].match(/(.*?)=(.*)/);
						if(!field) { field = [split[i], split[i], '']; }
						if(field[1].replace(/\s/g, '') !== '') {
							field[2] = _d(field[2] || '');
							if(arg2 === field[1]) { return field[2]; } tmp = field[1].match(/(.*)\[([0-9]+)\]/);
							if(tmp) {
								params[tmp[1]] = params[tmp[1]] || [];
								params[tmp[1]][tmp[2]] = field[2];
							} else { params[field[1]] = field[2];}
						}
					}
					if(sptr === arg) { return params; }
					return params[arg2];
				}
				return function(arg, url) {
					var _l = {},
						tmp, tmp2;
					if(arg === 'tld?') { return _t(); } url = url || window.location.toString();
					if(!arg) { return url; } arg = arg.toString();
					if(tmp = url.match(/^mailto:([^\/].+)/)) {
						_l.protocol = 'mailto';
						_l.email = tmp[1];
					} else {
						if(tmp = url.match(/(.*?)\/#\!(.*)/)) { url = tmp[1] + tmp[2]; }
						if(tmp = url.match(/(.*?)#(.*)/)) {
							_l.hash = tmp[2];
							url = tmp[1];
						}
						if(_l.hash && arg.match(/^#/)) { return _f(arg, _l.hash); }
						if(tmp = url.match(/(.*?)\?(.*)/)) {
							_l.query = tmp[2];
							url = tmp[1];
						}
						if(_l.query && arg.match(/^\?/)) { return _f(arg, _l.query); }
						if(tmp = url.match(/(.*?)\:?\/\/(.*)/)) {
							_l.protocol = tmp[1].toLowerCase();
							url = tmp[2];
						}
						if(tmp = url.match(/(.*?)(\/.*)/)) {
							_l.path = tmp[2];
							url = tmp[1];
						}
						_l.path = (_l.path || '').replace(/^([^\/])/, '/$1').replace(/\/$/, '');
						if(arg.match(/^[\-0-9]+$/)) { arg = arg.replace(/^([^\/])/, '/$1'); }
						if(arg.match(/^\//)) { return _i(arg, _l.path.substring(1)); } tmp = _i('/-1', _l.path.substring(1));
						if(tmp && (tmp = tmp.match(/(.*?)\.(.*)/))) {
							_l.file = tmp[0];
							_l.filename = tmp[1];
							_l.fileext = tmp[2];
						}
						if(tmp = url.match(/(.*)\:([0-9]+)$/)) {
							_l.port = tmp[2];
							url = tmp[1];
						}
						if(tmp = url.match(/(.*?)@(.*)/)) {
							_l.auth = tmp[1];
							url = tmp[2];
						}
						if(_l.auth) {
							tmp = _l.auth.match(/(.*)\:(.*)/);
							_l.user = tmp ? tmp[1] : _l.auth;
							_l.pass = tmp ? tmp[2] : undefined;
						}
						_l.hostname = url.toLowerCase();
						if(arg.charAt(0) === '.') { return _i(arg, _l.hostname); }
						if(_t()) {
							tmp = _l.hostname.match(_t());
							if(tmp) {
								_l.tld = tmp[3];
								_l.domain = tmp[2] ? tmp[2] + '.' + tmp[3] : undefined;
								_l.sub = tmp[1] || undefined;
							}
						}
						_l.port = _l.port || (_l.protocol === 'https' ? '443' : '80');
						_l.protocol = _l.protocol || (_l.port === '443' ? 'https' : 'http');
					}
					if(arg in _l) { return _l[arg] ;}
					if(arg === '{}') { return _l ;}
					return undefined;
				};
			})();

			PUBLIC_ATTRIBUTES.$referrer = (function() {
				var referrer = document.referrer;
				if(referrer.indexOf("https://www.baidu.com/") === 0) {
					referrer = referrer.split('?')[0];
				}
				return(typeof referrer === 'string' ? referrer : '');
			}());

			PUBLIC_ATTRIBUTES.$referrer_host = (function() {
				var p = PUBLIC_ATTRIBUTES;
				return p.$referrer ? p.getReferrerHost('hostname', p.$referrer) : p.$referrer;
			}());
		</script>
		<script type="text/javascript">
			var sa_enabled = true;
			/*Sensors Analytics JS SDK*/
			(function(para) {
				var p = para.sdk_url,
					n = para.name,
					w = window,
					d = document,
					s = 'script',
					x = null,
					y = null;
				w['sensorsDataAnalytic201505'] = n;
				w[n] = w[n] || function(a) {
					return function() {
						(w[n]._q = w[n]._q || []).push([a, arguments]);
					};
				};
				var ifs = ['track', 'quick', 'register', 'registerPage', 'registerOnce', 'registerSession', 'registerSessionOnce', 'trackSignup', 'trackAbtest', 'setProfile', 'setOnceProfile', 'appendProfile', 'incrementProfile', 'deleteProfile', 'unsetProfile', 'identify', 'login'];
				for(var i = 0; i < ifs.length; i++) {
					w[n][ifs[i]] = w[n].call(null, ifs[i]);
				}
				if(!w[n]._t) {
					x = d.createElement(s), y = d.getElementsByTagName(s)[0];
					x.async = 1;
					x.src = p;
					y.parentNode.insertBefore(x, y);
					w[n]._t = 1 * new Date();
					w[n].para = para;
				}
			})({
				sdk_url: 'http://o6lmzxerb.bkt.clouddn.com/js/sensorsanalytics/sensorsdata.min.js',
				name: 'da_sensorsdata',
				server_url: 'http://report.azoyagroup.com/?app_id=bmNzhkNTll&sign=ad57ed573a1d5fd95c947dd2ccda779b'
			});

			da_sensorsdata.quick('allTrack');

			~(function() {

				function objectAssign() {
					if(arguments.length > 0) {
						var newObj = {};
						for(var i = 0; i < arguments.length; i++) {
							if(Object.prototype.toString.call(arguments[i]) !== '[object Object]') {
								console.warn("Parameter must be object");
								return;
							}
							var source = arguments[i];
							for(var key in source) {
								if(Object.prototype.hasOwnProperty.call(source, key)) {
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
				var sa_common_properties = { "login_user_id": "83EB47CF2D20A24521530C8AC603850A@openid.cst", "website_id": 26, "i_tag_page": "", "i_tag_region": "", "i_tag_hyperlink": "", "w_tag_page": "", "w_tag_region": "", "w_tag_hyperlink": "", "promotion_source": "", "platform_id": 1, "level_1_page_type_id": "8", "level_2_page_type_id": "" },
					loginUserId = SagetCookie("SA_CUSTOMER_INFO"),
					saLoginId = SagetCookie("SA_CUSTOMER_ID"),
					itag = SagetCookie("_itag") || "",
					arrayOfitag = itag.split(".", 3),
					wtag = SagetCookie("_wtag") || "",
					arrayOfwtag = wtag.split(".", 3),
					platformId = (function() {
						var isPc = (function() {
							var userAgentInfo = navigator.userAgent;
							Agents = ["Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod"], flag = true;
							for(var v = 0; v < Agents.length; v++) { if(userAgentInfo.indexOf(Agents[v]) > 0) { flag = false; break; } }
							return flag;
						})();
						var isWx = (function() { var ua = window.navigator.userAgent.toLowerCase(); return ua.match(/MicroMessenger/i) == 'micromessenger'; })();
						return isPc ? 1 : isWx ? 5 : 2;
					})();

				sa_common_properties = objectAssign(sa_common_properties, {
					$referrer: PUBLIC_ATTRIBUTES.$referrer,
					$referrer_host: PUBLIC_ATTRIBUTES.$referrer_host,
					$url: location.href,
					$url_path: location.pathname,
					$title: document.title,
					i_tag_page: arrayOfitag[0] || "",
					i_tag_region: arrayOfitag[1] || "",
					i_tag_hyperlink: arrayOfitag[2] || "",
					w_tag_page: arrayOfwtag[0] || "",
					w_tag_region: arrayOfwtag[1] || "",
					w_tag_hyperlink: arrayOfwtag[2] || "",
					login_user_id: loginUserId || "",
					platform_id: platformId || ""
				});

				da_sensorsdata.registerPage(sa_common_properties);
				da_sensorsdata.quick('autoTrack', sa_common_properties);
				if(saLoginId) { da_sensorsdata.login(saLoginId); }
			})();
		</script>
		<script type="text/javascript">
			var zampda_enabled = false;
		</script>
		<meta name="google-site-verification" content="RqbjumRZK339TH_WASyy--4SfjRT5Wx-T0W7IQfjPdI">
		</head>

		<body>
			<div class="wrapper">
				<div class="global-tips">
					<p style="line-height: 32px;">全新升级：直邮运费仅需9.99欧，全场购物满89欧免邮！</p>
				</div>
				<div class="head-container">
					<p id="back-top" style="display: none;">
						<a href="http://www.laredoute.cn/onestepcheckout/#top"><span></span></a>
					</p>
					<div class="main-container col1-layout">
						<div class="main">
							<div class="col-main width_1190">
								<div class="header clearfix ">
									<div class="HeaderTop">
										<div class="HeaderTopContainer width_1190">
											<div class="HeaderTopLeft">
												<span class="HeaderUserInfo textwrap">
                    Hi~
                    <span class="HeaderWord welcome textwrap" id="userId">2</span> |
												<a class="logout" href="http://www.laredoute.cn/customer/account/logout">退出</a>
												</span>
												<span class="HeaderWord country">
                    <a href="http://www.laredoute.cn/onestepcheckout/"><img src="img/icon-fr.png" width="28" height="14"></a>
                    <a href="http://www.laredoute.cn/onestepcheckout/"><img src="img/icon-usa.png" width="28" height="14"></a>
                    <a href="http://www.laredoute.cn/onestepcheckout/"><img src="img/icon-uk.png" width="28" height="14"></a>
                </span>
											</div>
											<div class="HeaderTopRight">
												<span class="customer-service-mail">中文客服邮箱：<b>china@laredoute.com</b></span>
												<a class="HeaderWord account" href="http://www.laredoute.cn/sales/order/history/">我的订单</a>
												<a href="http://www.laredoute.cn/helper/about/" class="HearderWord aboutUs" target="_blank">关于我们</a>
												<a href="http://www.laredoute.cn/onestepcheckout/" class="HearderWord helpInfo">帮助中心</a>
											</div>
										</div>
									</div>
									<div class="HeaderMiddle clearfix width_1190" style="clear:both;">
										<div class="left">
											<a href="http://www.laredoute.cn/" class="HeaderBrandLogo">
												<img src="img/header-logo.jpg">
											</a>
										</div>
										<div class="cart-step-2 cart-step clearfix"><span class="step-1">我的购物车</span><span class="step-2">订单提交</span></div>
									</div>

									<!-- 首页弹窗 -->

									<form id="onestepcheckout-form" method="post" action="/confirmOrder/showAddress">
										<input type="hidden" value="0" id="autonym_bool">
										<input type="hidden" value="8559" id="customer_address_ids">
										<input type="hidden" value="" id="J_phone_s">
										<input type="hidden" value="" id="J_mail_s">
										<fieldset class="group-select" style="margin: 0;">
											<div class="onestepcheckout-threecolumns checkoutcontainer onestepcheckout-skin-        onestepcheckout-enterprise">
												<div class="onestepcheckout-column-left">
													<h3 class="onestepcheckout-numbers onestepcheckout-numbers-1 clearfix">
                        <span>收货地址</span>
                    </h3>

													<div id="billing_address">
														<ul>
															<li class="address-book">
																<div class="saved-address clearfix">
																	<div class="address  first selectd" style="display:block">
																		<div class="name-phone clearfix">
																			<input style="display:none;" value="8559" id="addrId_8559" type="radio" name="billing_address_id" onchange="billing.newAddress(!this.value)">
																			<span class="phone right">18578275958</span>
																			<span class="name" id="msg">${list }</span>
																			
																			<script type="text/javascript">
																				$(function(){
																				var userId = $("#userId").val();
																					$("#userId").click(function(){
																						$.ajax({
																							url:"confirmOrder/showAddress",
																							data:"userId",
																							success:function(data){
																								$("msg").append("sss");
																							}																				
																						})
																					
																					});
																				
																				});
																			
																			</script>
																			
																			<a href="confirmOrder/showAddress">显示数据</a>
																		</div>
																		<div class="address-zip-mail">
																			<p class="address">广东省深圳市宝安区西乡街道劳动村二队一巷</p>
																			<p class="zip">518000</p>
																			<p class="mail">835646562@qq.com</p>
																			<input type="hidden" class="verify" is_country_china="CN" value="0">
																			<input type="hidden" class="exceedOrderTimes" value="N">
																		</div>
																		<div class="func-zone clearfix">
																			<a href="javascript:void(0)" class="right delete" title="删除地址" onclick="return deleteAddress;">删除</a>
																			<a href="http://cecs.com/customer/address/form/id/503/" class="left edit" title="编辑地址">编辑</a>
																		</div>
																	</div>
																	<a class="address-book-add" href="javascript:void(0)">
																		<span></span>新增收货地址
																	</a>
																</div>
															</li>
															<li>
																<input type="hidden" name="billing[use_for_shipping]" id="billing:use_for_shipping_yes" value="1">
															</li>
														</ul>
														<input id="add_newAddress" type="radio" name="billing_address_id" style="display: none">
													</div>
													<a href="javascript:void(0)" class="unfold_add J_unfold_add"><span class="J_address_text">更多地址</span><span class="unfold_add_top unfold_add_bottom"></span></a>
												</div>

											</div>
											<div class="onestepcheckout-column-middle" style="display: none">
												<h3 class="onestepcheckout-numbers onestepcheckout-numbers-2 clearfix">
                        <span>配送方式</span>
                    </h3>
												<div class="onestepcheckout-shipping-method" id="shipping_method">
													<div class="onestepcheckout-shipping-method-block">
														<dl class="shipment-methods">
															<dd>国际运费</dd>
															<dt style="margin-bottom: 5px;">

                                           <input name="shipping_method" type="radio" value="tablerate_bestway" id="s_method_tablerate_bestway" checked="checked /&gt;
                        &lt;label for=" s_method_tablerate_bestway"=""><!--<b>国际运费:</b>-->                         <strong>
                                                
                        €9.99                                                </strong>
                        
                               <!--? break; ?-->
                </dt>
														</dl>
													</div>
												</div>
											</div>

											<div class="onestepcheckout-column-middle">
												<h3 class="onestepcheckout-numbers onestepcheckout-numbers-3 clearfix">
                    <span>支付方式</span>
                </h3>

												<div class="payment-methods">

													<script src="js/adv.js"></script>
													<script type="text/javascript">
														//<![CDATA[
														//]]>
													</script>
													<dl id="checkout-payment-method-load" class="">
														<dt class="payment_type
        " style="height: auto;margin-right: 20px;">
															<input id="p_method_wechat" value="wechat" type="radio" name="payment[method]" title="wechat" class="radio">
															<label for="p_method_wechat">
                                    <img src="img/wxpay.png" style="height:38px;" align="middle">
                            </label>
															</dt>
															<dt class="payment_type
        " style="height: auto;margin-right: 20px;">
																<input id="p_method_alipay_payment" value="alipay_payment" type="radio" name="payment[method]" title="支付宝" class="radio">
																<label for="p_method_alipay_payment">
                                    <img src="img/alipay.png" style="height:38px;" align="middle">
                            </label>
																</dt>
																<dt class="payment_type
        " style="height: auto;margin-right: 20px;">
																	<input id="p_method_vtpayment_payment" value="vtpayment_payment" type="radio" name="payment[method]" title="银联在线" class="radio">
																	<label for="p_method_vtpayment_payment">
                                    <img src="img/Unionpay.jpg" style="height:38px;" align="middle">
                            </label>
																	</dt>
																	<dt class="show_all_payment">查看更多支付方式&nbsp;&nbsp;&gt;&gt;</dt>
													</dl>
													<div style="clear:both; margin-left:54px; padding:12px 0; text-align:left; font-size:14px; color:#999;">
														<a target="_blank" href="http://www.laredoute.cn/protocol" style="color:#999">
															<div>本人同意并接受由LaRedoute官方合作伙伴Azoya International(Hong Kong)Limited提供的相关服务</div>
															<!-- <div>La Redoute 指定Azoya International (Hong Kong) Limited 作为人民币跨境支付代收款方(<a target="_blank" href="/protocol" style="color:#999">服务条款</a>)</div> -->
															<div style="text-align: center;width: 635px;">遵守本网站的注册协议、退货退款政策及隐私政策</div>
														</a>
													</div>
												</div>
												<script type="text/javascript">
													jQuery(function() {
														jQuery('.show_all_payment').click(function(e) {
															var btn = jQuery('.pay_fold'),
																active = btn.find('.pay_hidden.active'),
																str = '';
															if(active.length < 1) {
																btn.find('.payment_type').addClass('active');
																str = '<<&nbsp;&nbsp;收起更多支付方式';
															} else {
																active.removeClass('active');
																str = '查看更多支付方式&nbsp;&nbsp;>>';
															}
															jQuery('.show_all_payment').html(str);
														});
													})
												</script>
											</div>

											<div class="onestepcheckout-column-right">

												<h3 class="onestepcheckout-numbers onestepcheckout-numbers-4 clearfix">
                    <span>订单清单</span>
                    <a style="float:right;" href="http://www.laredoute.cn/checkout/cart">返回购物车 &gt;</a>
                </h3>

												<div class="onestepcheckout-summary confirm-product-list" id="summary">

													<table class="onestepcheckout-summary">
														<tbody>
															<tr>
																<th class="col_1">&nbsp;</th>
																<th class="col_2">商品名</th>
																<th class="col_3">数量</th>
																<th class="col_4">总价</th>
															</tr>

															<tr>
																<td class="col_1">
																	<img src="img/350006087_2_CO_1_3233084.jpg">
																</td>
																<td class="col_2">
																	SOFT GREY 尖头平底鞋
																	<div style="font-size:12px;font-weight:bold;color:#999;">
																		<span>颜色：</span>
																		<span style="margin-right:12px;">
                              波尔多红色                            </span>
																		<span>尺码：</span>
																		<span>
                             36                           </span>
																	</div>
																</td>
																<td class="col_3">
																	1 </td>
																<td class="col_4">
																	€49.99 </td>
															</tr>

															<tr>
																<td colspan="4" height="20">&nbsp;</td>
															</tr>
														</tbody>
													</table>

													<div class="onestepcheckout-totals-div clearing">
														<div class="right computed-price">
															<p><span class="label">商品总价：</span><strong>€49.99</strong></p>
															<p><span class="label">运费总计：</span><strong id="H-ship">€9.99</strong></p>
															<p><span class="label">运费折扣：</span><strong id="discount" style="color: #ed137d;">-€9.99</strong></p>
														</div>

														<div class="user-should-pay clearfix">
															<div class="should-pay right">
																<p class="fee">应付总额：<strong>€49.99</strong></p>
															</div>
														</div>

													</div>

												</div>

												<div class="onestepcheckout-place-order clearfix">
													<button class="button" id="onestepcheckout-place-order" type="button" value="">确认订单</button>
												</div>

											</div>
										</fieldset>
									</form>
									<form action="javascript:void(0)" id="billing_address_list" style="display:none">
										<input id="formkey" name="form_key" type="hidden" value="eJpK8u95W2McPycJ">
										<input type="hidden" name="success_url" value="">
										<input type="hidden" name="error_url" value="">
										<div class="add-address">
											<h6 class="title">
                <strong>新增地址：</strong> (<em>*</em>均为必填)
            </h6>
											<div class="form-line">
												<label for="country"><em>*</em>选择地区：</label>
												<div class="col_2 customer-location">
													<input type="hidden" value="CN" id="country1" name="country_id">
													<p>
														<select id="country" name="nation_NoUse" required="required" pattern="[^\u56fd\u5bb6\u3001\u5730\u57df]">
															<option value="国家、地域">国家、地域</option>
															<option value="中国大陆">中国大陆</option>
														</select>
														<select id="region_id" name="region" class="validate-select" title="州/省" required="required" pattern="[^\u7701\u4efd]">
															<option value="省份">省份</option>
														</select>
														<select id="city" name="city" class="validate-select" title="城市" required="required" pattern="[^\u5730\u7ea7\u5e02]">
															<option value="地级市">地级市</option>
														</select>
														<select id="s_county" name="county" required="required" pattern="[^\u5e02\u3001\u53bf\u7ea7\u5e02]">
															<option value="市、县级市">市、县级市</option>
														</select>
														<span class="adck-tip">收货城市选择不正确</span>
													</p>
												</div>
											</div>
											<div class="form-line">
												<label for="street_1"><em>*</em>地址：</label>
												<div class="col_2">
													<p>
														<input type="text" name="street[]" class="input-text required-entry" value="" placeholder="街道门牌号信息" title="街道地址" id="street_1" required="required">
														<span class="adck-tip">地址不能为空</span>
													</p>
												</div>
											</div>
											<div class="form-line">
												<label for="postcode"><em>*</em>邮政编码：</label>
												<div class="col_2">
													<p>
														<input type="text" name="postcode" id="postcode" placeholder="请填写所在地的邮编" value="" title="邮政编码" class="input-text validate-zip-international required-entry" pattern="^\d{6}$" required="required">
														<span class="adck-tip">邮政编码填写不正确</span>
													</p>
												</div>
											</div>
											<div class="form-line">
												<label for="firstname"><em>*</em>收货人姓名：</label>
												<div class="col_2 customer-name clearfix">
													<div class="customer-name clearfix">
														<input type="hidden" id="lastname" name="lastname" value=" ">
														<p>
															<input id="firstname" name="firstname" type="text" placeholder="清关需要，请务必填写真实姓名" value="" class="input-text" pattern="^[\u4e00-\u9fa5]+$" required="required">
															<span class="adck-tip">姓名不能为空，而且需为中文</span>
														</p>
													</div>
												</div>
											</div>
											<div class="form-line">
												<label for="telephone"><em>*</em>电话：</label>
												<div class="col_2">
													<p>
														<input type="mobile" name="telephone" value="" title="电话" class="input-text required-entry" id="telephone" placeholder="请输入您的常用联系号码" required="required">
														<span class="adck-tip">手机号码填写不正确</span>
													</p>
												</div>
											</div>
											<div class="form-line">
												<label for="email"><em>*</em>邮箱：</label>
												<div class="col_2">
													<p>
														<input value="" name="email" id="email" type="email" class="input-text" placeholder="为方便您及时了解订单状态信息，请填写常用邮箱" required="required">
														<span class="adck-tip">邮箱填写不正确</span>
													</p>
												</div>
											</div>
											<div class="form-line">
												<div class="col_2 input-checkbox">
													<input type="checkbox" id="primary_shipping" name="default_shipping" value="1" title="设为默认" class="checkbox"> 设为默认 </div>
											</div>
											<div class="form-line submit-btns">
												<p>
													<input id="AjaxSaveAddress" type="submit" class="sav-address" title="保存地址" value="保存地址">
													<a href="javascript:void(0)" class="cancel-add-address">取消</a>
												</p>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div class="FootContain">
							<div class="FootTop">
								<div class="inner width_1190">
									<ul class="clearfix">
										<li class="item_1">
											<b>全球89欧元包邮</b>
										</li>
										<li class="item_2">
											<b>汇聚法国时尚新品</b>
										</li>
										<li class="item_3">
											<b>全球同价法国直供</b>
										</li>
										<li class="item_4">
											<b>100%安全支付</b>
										</li>
									</ul>
								</div>
							</div>
							<div class="FootMiddle">
								<div class="inner clearfix width_1190">
									<div class="FootMiddleWord">
										<strong class="FootMiddleTitle">新手指南</strong>
										<a href="http://www.laredoute.cn/helper/register/" target="_blank" class="item">如何注册</a>
										<a href="http://www.laredoute.cn/helper/purchase/" target="_blank" class="item">购物流程</a>
										<a href="http://www.laredoute.cn/helper/size/" target="_blank" class="item">尺码说明</a>
										<a href="http://www.laredoute.cn/helper/find-password/" target="_blank" class="item">密码找回</a>
									</div>
									<div class="FootMiddleWord">
										<strong class="FootMiddleTitle">订单及售后</strong>
										<a href="http://www.laredoute.cn/helper/track/" target="_blank" class="item">订单追踪</a>
										<a href="http://www.laredoute.cn/helper/return-policy/" target="_blank" class="item">退换货政策</a>
										<a href="http://www.laredoute.cn/helper/return-process/" target="_blank" class="item">退换货流程</a>
										<a href="http://www.laredoute.cn/helper/complaint/" target="_blank" class="item">投诉</a>

									</div>
									<div class="FootMiddleWord">
										<strong class="FootMiddleTitle">关于我们</strong>
										<a href="http://www.laredoute.cn/helper/about/" target="_blank" class="item">品牌故事</a>
										<a href="http://www.laredoute.cn/helper/contact/" target="_blank" class="item">联系我们</a>
										<a href="http://www.laredoute.cn/helper/privacy-policy/" target="_blank" class="item">隐私条款</a>
										<a href="http://www.laredoute.cn/helper/registration-provision/" target="_blank" class="item">注册条款</a>
									</div>
									<div class="FootMiddleWord user-interact">
										<strong class="FootMiddleTitle">现在注册，可立即获得25欧新人大礼包!</strong>
										<a href="http://www.laredoute.cn/customer/account/create/" target="_blank" class="btn">立即注册</a>
									</div>
									<div class="FootMiddleWord">
										<strong class="FootMiddleTitle">关注我们</strong>
										<p class="clearfix">
											<a class="weixin" href="javascript:void(0)" target="_blank">
												<img src="img/QR-code-weixin.jpg" alt="" width="82" height="82">
											</a>
											<a class="weibo" href="javascript:void(0)" target="_blank">
												<img src="img/QR-code-weibo.png" alt="" width="82" height="82">
											</a>
											<a class="facebook" href="https://www.facebook.com/laredoute" target="_blank"></a>
											<a class="instagram" href="https://www.instagram.com/laredoute/" target="_blank"></a>
										</p>
										<p>china@laredoute.com</p>
									</div>
									<div class="FootMiddleWord">
										<strong class="FootMiddleTitle">支付方式</strong>
										<p class="alipay"><img src="img/foot-alipay.jpg" alt=""></p>
										<p class="unionpay"><img src="img/foot-unionpay.png" alt=""></p>
									</div>
									<div class="FootDes width_1190">
										<span class="FootEndWord">*Coût d’une communication internationale.</span>
										<p>LA REDOUTE : Conseil, vente en ligne, code promo, livraison à domicile... profitez des services et du SAV La Redoute pour vos achats sur Internet. Des produits de grandes marques, des petits prix, des nouveautés, on trouve tout dans le catalogue de La Redoute. Plusieurs modes de paiements sécurisés sont acceptés dont la carte de crédit et le paiement par Paypal.</p>
									</div>
								</div>
							</div>
							<!--footer end-->
							<div class="FootEnd clearfix">
								<div class="inner width_1190">
									<div class="country">
										<span>INTERNATIONAL</span>
										<ul>

										</ul>
									</div>
									<div class="copyright">© laredoute.com</div>
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

						<script type="text/javascript">
							var G_haq = G_haq || [];
							G_haq.push(['_setAccount', 'laredoute.cn']);
							(function() {
								var ha = document.createElement('script');
								ha.type = 'text/javascript';
								ha.async = true;
								ha.src = ('https:' == document.location.protocol ? 'https://htag' : 'http://htag') + '.haituncun.com/js/htag.js';
								var s = document.getElementsByTagName('script')[0];
								s.parentNode.insertBefore(ha, s);
							})();
						</script>
						<script>
							var _hmt = _hmt || [];
							(function() {
								var hm = document.createElement("script");
								hm.src = "//hm.baidu.com/hm.js?18fc76cc330acbd7b73f47ca2a57fdf1";
								var s = document.getElementsByTagName("script")[0];
								s.parentNode.insertBefore(hm, s);
							})();
						</script>

						<script type="text/javascript">
							var _py = _py || [];
							_py.push(['a', 'nKh..BaCDZVC-fvz2mDil2_NpQP']);
							_py.push(['domain', 'stats.ipinyou.com']);
							_py.push(['e', '']); -
							function(d) {
								var s = d.createElement('script'),
									e = d.body.getElementsByTagName('script')[0];
								e.parentNode.insertBefore(s, e),
									f = 'https:' == location.protocol;
								s.src = (f ? 'https' : 'http') + '://' + (f ? 'fm.ipinyou.com' : 'fm.p0y.cn') + '/j/adv.js';
							}(document);
						</script>
						<noscript>&lt;img src="//stats.ipinyou.com/adv.gif?a=nKh..BaCDZVC-fvz2mDil2_NpQP&amp;e=" style="display:none;"/&gt;</noscript>

						<script type="text/javascript">
							jQuery(document).ready(function() {
								try {
									var cookie_name = "assoc"; //rakuten
									var now = +new Date(),
										rakuten = Mage.Cookies.getSourceByKey("siteID"),
										src = Mage.Cookies.getSourceByKey("src");
									//ɾ���ϵ�cookie��ֹ�ظ�����
									Mage.Cookies.expires = (new Date(now - 1000));
									Mage.Cookies.set("rakuten", "");
									//phpԭʼcookie
									var cookie = 'a:6:{s:7:"user_id";N;s:9:"user_name";N;s:10:"track_code";s:0:"";s:10:"source_url";s:7:"rakuten";s:11:"usersafekey";s:0:"";s:17:"invitation_source";s:0:"";}';
									//��rakuten��ֵ���뵽���е�track_codeֵ��
									var track_len = rakuten.length;
									var track_code = rakuten;
									var replace_str = 's:10:"track_code";s:0:"";'; //track_code ���к�Ĵ���
									cookie = cookie.replace(replace_str, 's:10:"track_code";s:' + track_len + ':"' + track_code + '";');

									//�����µ�cookie
									var expireTime = '';
									if(rakuten && src == "rakuten") {
										Mage.Cookies.expires = (new Date(now + Number(expireTime) * 1000));
										Mage.Cookies.set(cookie_name, cookie);
									};
								} catch(err) {}

							});
						</script>

						<script type="text/javascript">
							function sensorsdataGetCookie(name) {
								var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
								if(arr = document.cookie.match(reg)) { return unescape(arr[2]); } else { return null; };
							}
							var sa_properties = { "website_id": 26, "i_tag_page": "", "i_tag_region": "", "i_tag_hyperlink": "", "w_tag_page": "", "w_tag_region": "", "w_tag_hyperlink": "", "promotion_source": "", "platform_id": 1, "level_1_page_type_id": "8", "level_2_page_type_id": "", "product_qty": 1, "item_count": 1, "currency_code": "EUR", "subtotal": 49.99, "subtotal_cny": 388.6273, "tax_amount": 0, "tax_amount_cny": 0, "shipping_amount": 9.99, "shipping_amount_cny": 77.6633, "discount_amount": 9.99, "discount_amount_cny": 77.6633, "grand_total": 49.99, "grand_total_cny": 388.6273, "coupon_id_list": ["468"] };
							var loginUserId = sensorsdataGetCookie("SA_CUSTOMER_INFO");
							sa_properties.login_user_id = loginUserId ? loginUserId : "";
							da_sensorsdata.track("submit_order", sa_properties);
						</script>
						<script type="text/javascript">
							da_sensorsdata.track("submit_order_item", { "login_user_id": "83EB47CF2D20A24521530C8AC603850A@openid.cst", "website_id": 26, "i_tag_page": "", "i_tag_region": "", "i_tag_hyperlink": "", "w_tag_page": "", "w_tag_region": "", "w_tag_hyperlink": "", "promotion_source": "", "platform_id": 1, "level_1_page_type_id": "8", "level_2_page_type_id": "", "sku": "3613957938349", "barcode": "", "product_name": "SOFT GREY \u5c16\u5934\u5e73\u5e95\u978b", "store_id": "", "currency_code": "EUR", "product_price": 49.99, "product_price_cny": 388.6273, "product_type": "simple", "level_1_operation_category_id": "26-7456", "level_1_operation_category_name": "\u5973\u58eb", "level_2_operation_category_id": "26-7459", "level_2_operation_category_name": "\u5927\u5c3a\u7801&\u7279\u6b8a\u5c3a\u7801", "level_3_operation_category_id": "26-7487", "level_3_operation_category_name": "\u5973\u978b", "level_4_operation_category_id": "", "level_4_operation_category_name": "", "level_5_operation_category_id": "", "level_5_operation_category_name": "", "level_6_operation_category_id": "", "level_6_operation_category_name": "", "level_1_base_category_id": "", "level_2_base_category_id": "", "level_3_base_category_id": "", "level_4_base_category_id": "", "product_qty": 1 });
						</script>
					</div>
				</div>
				
				<div class="js-container" style="display: none">
					<script type="text/javascript" src="js/area.js"></script>
					<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
					<script type="text/javascript" src="js/main-common.js"></script>
					<script type="text/javascript" src="js/common.js"></script>
					<script type="text/javascript" src="js/innerPlugin.js"></script>
					<script type="text/javascript" src="js/ZhouMing.js"></script>
					<script type="text/javascript" src="js/source-cookie.js-"></script>
					<script type="text/javascript" src="js/jquery.cookie.js"></script>
					<script type="text/javascript" src="js/index.js"></script>
					<script type="text/javascript" src="js/QtyChange.js"></script>
					<script type="text/javascript" src="js/jquery.mCustomScrollbar.concat.min.js"></script>
					<script type="text/javascript" src="js/sensorsAnalytics.js"></script>
					<script type="text/javascript" src="js/prototype.js"></script>
				</div>
			</div>
			<div class="J-shopping-bag"><span class="loading"></span><span class="corner"></span></div>
		</body>

</html>
