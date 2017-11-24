<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

	<head>
	<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>我的帐户 | LaRedoute中文官网</title>
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
		<script type="text/javascript" async="" src="js/adv?a=nKh..BaCDZVC-fvz2mDil2_NpQP&amp;u=http%3A%2F%2Fwww.laredoute.cn%2Fcustomer%2Faccount%2Findex%2F&amp;r=http%3A%2F%2Fwww.laredoute.cn%2Fcustomer%2Faccount%2Fedit%2Fchangepass%2F1%2F&amp;rd=1508295710983&amp;v=2&amp;e=sr%3D1600x900%26sc%3D24-bit%26vp%3D1583x697%26ps%3D1583x1641%26fv%3D25.0%2520r0%26ec%3DUTF-8%26je%3Dfalse%26lg%3Dzh-cn%26vb%3D1%26vbt%3D20010%26sp%3D3%26ev%3Dste"></script>
		<script type="text/javascript" async="" src="js/adv?a=nKh..BaCDZVC-fvz2mDil2_NpQP&amp;u=http%3A%2F%2Fwww.laredoute.cn%2Fcustomer%2Faccount%2Findex%2F&amp;r=http%3A%2F%2Fwww.laredoute.cn%2Fcustomer%2Faccount%2Fedit%2Fchangepass%2F1%2F&amp;rd=1508295691052&amp;v=2&amp;e=sr%3D1600x900%26sc%3D24-bit%26vp%3D1583x697%26ps%3D1583x1641%26fv%3D25.0%2520r0%26ec%3DUTF-8%26je%3Dfalse%26lg%3Dzh-cn%26vb%3D1%26vbt%3D79%26sp%3D0%26ev%3Dvg"></script>
		<script type="text/javascript" async="" src="js/presadv?a=nKh..BaCDZVC-fvz2mDil2_NpQP&amp;cb=py.cb"></script>
		<script async="" src="js/a.js"></script>
		<script src="js/hm.js?18fc76cc330acbd7b73f47ca2a57fdf1"></script>
		<script type="text/javascript" async="" src="js/htag.js"></script>
		<script async="" src="js/sensorsdata.min.js"></script>
		<script type="text/javascript" src="js/jquery-1.7.min.js?v=20171012"></script>
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

		<!--[if lt IE 8]>
<div style=' clear: both; text-align:center; position: relative;'>
 <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." /></a>
</div>
<![endif]-->

		<!--<script type="text/javascript">-->
		<!--//<![CDATA[-->
		<!--Mage.Cookies.path     = '-->
		<!--';-->
		<!--Mage.Cookies.domain   = '-->
		<!--';-->
		<!--//]]>-->
		<!--</script>-->

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
			}

			window.PUBLIC_ATTRIBUTES = {};

			PUBLIC_ATTRIBUTES.platformId = (function() {
				var isPc = (function() {
					var userAgentInfo = navigator.userAgent;
					Agents = ["Android", "iPhone", "SymbianOS", "Windows Phone", "iPad", "iPod"], flag = true;
					for(var v = 0; v < Agents.length; v++) {
						if(userAgentInfo.indexOf(Agents[v]) > 0) {
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

			PUBLIC_ATTRIBUTES.getReferrerHost = (function() {
				function _t() {
					return new RegExp(/(.*?)\.?([^\.]*?)\.?(com|net|org|biz|ws|in|me|co\.uk|co|org\.uk|ltd\.uk|plc\.uk|me\.uk|edu|mil|br\.com|cn\.com|eu\.com|hu\.com|no\.com|qc\.com|sa\.com|se\.com|se\.net|us\.com|uy\.com|ac|co\.ac|gv\.ac|or\.ac|ac\.ac|af|am|as|at|ac\.at|co\.at|gv\.at|or\.at|asn\.au|com\.au|edu\.au|org\.au|net\.au|id\.au|be|ac\.be|adm\.br|adv\.br|am\.br|arq\.br|art\.br|bio\.br|cng\.br|cnt\.br|com\.br|ecn\.br|eng\.br|esp\.br|etc\.br|eti\.br|fm\.br|fot\.br|fst\.br|g12\.br|gov\.br|ind\.br|inf\.br|jor\.br|lel\.br|med\.br|mil\.br|net\.br|nom\.br|ntr\.br|odo\.br|org\.br|ppg\.br|pro\.br|psc\.br|psi\.br|rec\.br|slg\.br|tmp\.br|tur\.br|tv\.br|vet\.br|zlg\.br|br|ab\.ca|bc\.ca|mb\.ca|nb\.ca|nf\.ca|ns\.ca|nt\.ca|on\.ca|pe\.ca|qc\.ca|sk\.ca|yk\.ca|ca|cc|ac\.cn|com\.cn|edu\.cn|gov\.cn|org\.cn|bj\.cn|sh\.cn|tj\.cn|cq\.cn|he\.cn|nm\.cn|ln\.cn|jl\.cn|hl\.cn|js\.cn|zj\.cn|ah\.cn|gd\.cn|gx\.cn|hi\.cn|sc\.cn|gz\.cn|yn\.cn|xz\.cn|sn\.cn|gs\.cn|qh\.cn|nx\.cn|xj\.cn|tw\.cn|hk\.cn|mo\.cn|cn|cx|cz|de|dk|fo|com\.ec|tm\.fr|com\.fr|asso\.fr|presse\.fr|fr|gf|gs|co\.il|net\.il|ac\.il|k12\.il|gov\.il|muni\.il|ac\.in|co\.in|org\.in|ernet\.in|gov\.in|net\.in|res\.in|is|it|ac\.jp|co\.jp|go\.jp|or\.jp|ne\.jp|ac\.kr|co\.kr|go\.kr|ne\.kr|nm\.kr|or\.kr|li|lt|lu|asso\.mc|tm\.mc|com\.mm|org\.mm|net\.mm|edu\.mm|gov\.mm|ms|nl|no|nu|pl|ro|org\.ro|store\.ro|tm\.ro|firm\.ro|www\.ro|arts\.ro|rec\.ro|info\.ro|nom\.ro|nt\.ro|se|si|com\.sg|org\.sg|net\.sg|gov\.sg|sk|st|tf|ac\.th|co\.th|go\.th|mi\.th|net\.th|or\.th|tm|to|com\.tr|edu\.tr|gov\.tr|k12\.tr|net\.tr|org\.tr|com\.tw|org\.tw|net\.tw|ac\.uk|uk\.com|uk\.net|gb\.com|gb\.net|vg|sh|kz|ch|info|ua|gov|name|pro|ie|hk|com\.hk|org\.hk|net\.hk|edu\.hk|us|tk|cd|by|ad|lv|eu\.lv|bz|es|jp|cl|ag|mobi|eu|co\.nz|org\.nz|net\.nz|maori\.nz|iwi\.nz|io|la|md|sc|sg|vc|tw|travel|my|se|tv|pt|com\.pt|edu\.pt|asia|fi|com\.ve|net\.ve|fi|org\.ve|web\.ve|info\.ve|co\.ve|tel|im|gr|ru|net\.ru|org\.ru|hr|com\.hr|ly|xyz)$/)
				}

				function _d(s) {
					var result = '';
					try {
						result = decodeURIComponent(s.replace(/\+/g, ' '))
					} catch(e) {
						result = s.replace(/\+/g, ' ')
					};
					return result
				}

				function _i(arg, str) {
					var sptr = arg.charAt(0),
						split = str.split(sptr);
					if(sptr === arg) {
						return split
					}
					arg = parseInt(arg.substring(1), 10);
					return split[arg < 0 ? split.length + arg : arg - 1]
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
						if(!field) {
							field = [split[i], split[i], '']
						}
						if(field[1].replace(/\s/g, '') !== '') {
							field[2] = _d(field[2] || '');
							if(arg2 === field[1]) {
								return field[2]
							}
							tmp = field[1].match(/(.*)\[([0-9]+)\]/);
							if(tmp) {
								params[tmp[1]] = params[tmp[1]] || [];
								params[tmp[1]][tmp[2]] = field[2]
							} else {
								params[field[1]] = field[2]
							}
						}
					}
					if(sptr === arg) {
						return params
					}
					return params[arg2]
				}
				return function(arg, url) {
					var _l = {},
						tmp, tmp2;
					if(arg === 'tld?') {
						return _t()
					}
					url = url || window.location.toString();
					if(!arg) {
						return url
					}
					arg = arg.toString();
					if(tmp = url.match(/^mailto:([^\/].+)/)) {
						_l.protocol = 'mailto';
						_l.email = tmp[1]
					} else {
						if(tmp = url.match(/(.*?)\/#\!(.*)/)) {
							url = tmp[1] + tmp[2]
						}
						if(tmp = url.match(/(.*?)#(.*)/)) {
							_l.hash = tmp[2];
							url = tmp[1]
						}
						if(_l.hash && arg.match(/^#/)) {
							return _f(arg, _l.hash)
						}
						if(tmp = url.match(/(.*?)\?(.*)/)) {
							_l.query = tmp[2];
							url = tmp[1]
						}
						if(_l.query && arg.match(/^\?/)) {
							return _f(arg, _l.query)
						}
						if(tmp = url.match(/(.*?)\:?\/\/(.*)/)) {
							_l.protocol = tmp[1].toLowerCase();
							url = tmp[2]
						}
						if(tmp = url.match(/(.*?)(\/.*)/)) {
							_l.path = tmp[2];
							url = tmp[1]
						}
						_l.path = (_l.path || '').replace(/^([^\/])/, '/$1').replace(/\/$/, '');
						if(arg.match(/^[\-0-9]+$/)) {
							arg = arg.replace(/^([^\/])/, '/$1')
						}
						if(arg.match(/^\//)) {
							return _i(arg, _l.path.substring(1))
						}
						tmp = _i('/-1', _l.path.substring(1));
						if(tmp && (tmp = tmp.match(/(.*?)\.(.*)/))) {
							_l.file = tmp[0];
							_l.filename = tmp[1];
							_l.fileext = tmp[2]
						}
						if(tmp = url.match(/(.*)\:([0-9]+)$/)) {
							_l.port = tmp[2];
							url = tmp[1]
						}
						if(tmp = url.match(/(.*?)@(.*)/)) {
							_l.auth = tmp[1];
							url = tmp[2]
						}
						if(_l.auth) {
							tmp = _l.auth.match(/(.*)\:(.*)/);
							_l.user = tmp ? tmp[1] : _l.auth;
							_l.pass = tmp ? tmp[2] : undefined
						}
						_l.hostname = url.toLowerCase();
						if(arg.charAt(0) === '.') {
							return _i(arg, _l.hostname)
						}
						if(_t()) {
							tmp = _l.hostname.match(_t());
							if(tmp) {
								_l.tld = tmp[3];
								_l.domain = tmp[2] ? tmp[2] + '.' + tmp[3] : undefined;
								_l.sub = tmp[1] || undefined
							}
						}
						_l.port = _l.port || (_l.protocol === 'https' ? '443' : '80');
						_l.protocol = _l.protocol || (_l.port === '443' ? 'https' : 'http')
					}
					if(arg in _l) {
						return _l[arg]
					}
					if(arg === '{}') {
						return _l
					}
					return undefined
				}
			})();

			PUBLIC_ATTRIBUTES.$referrer = (function() {
				var referrer = document.referrer;
				if(referrer.indexOf("https://www.baidu.com/") === 0) {
					referrer = referrer.split('?')[0];
				}
				return(typeof referrer === 'string' ? referrer : '');
			}())

			PUBLIC_ATTRIBUTES.$referrer_host = (function() {
				var p = PUBLIC_ATTRIBUTES;
				return p.$referrer ? p.getReferrerHost('hostname', p.$referrer) : p.$referrer;
			}())
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
					}
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
				sdk_url: 'js/sensorsdata.min.js',
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
				var sa_common_properties = {
						"login_user_id": "727085496@qq.com",
						"website_id": 26,
						"i_tag_page": "",
						"i_tag_region": "",
						"i_tag_hyperlink": "",
						"w_tag_page": "",
						"w_tag_region": "",
						"w_tag_hyperlink": "",
						"promotion_source": "",
						"platform_id": 1,
						"level_1_page_type_id": "10",
						"level_2_page_type_id": "2"
					},
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
							for(var v = 0; v < Agents.length; v++) {
								if(userAgentInfo.indexOf(Agents[v]) > 0) {
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
				if(saLoginId) {
					da_sensorsdata.login(saLoginId);
				}
			})()
		</script>
		<script type="text/javascript">
			var zampda_enabled = false;
		</script>
		<meta name="google-site-verification" content="RqbjumRZK339TH_WASyy--4SfjRT5Wx-T0W7IQfjPdI">
	</head>

	<body>
		<div class="wrapper">
			<c:import var="daoList" url="category/selectAll" ></c:import>
	${daoList}

					<!-- 首页弹窗 -->

					<div class="main-container col2-left-layout">
						<div class="main">
							<div class="breadcrumbs">
								<ul class="clearfix">
									<li>
										<span class="icon-left"></span>
										<a href="http://www.laredoute.cn/" class="home-link" title="前往主页">主页</a>
									</li>
									<br />
									<li class="account">
										<a href="http://www.laredoute.cn/customer/account/" title="我的帐户">个人中心</a>
										<span>&gt;&nbsp;</span>
									</li>
									<li class="address.book">
										<strong class="breadcrumbs-last">账户信息</strong>
									</li>
								</ul>
							</div>
							<div class="col-main">
								<div class="my-account">
									<style>
										.back-link {
											display: none;
										}
										
										.col2-left-layout .main {
											overflow: initial;
										}
									</style>
									
									<div class="page-title">
										<h1>我的订单<span class="static">(0)</span></h1>
									</div>
									<c:choose>
									<c:when test="${list[0]==null }">
									<p class="emptyInfo">您没有下订单。</p>
									</c:when>
									<c:otherwise>
									<div class="order-head">
									<table>
										<tbody>
											<tr>
												<td class="item-infos"><span>商品信息</span>
												</td>
												<td class="item-amount">数量</td>
												<td class="item-price">单价</td>
												<td class="item-freight">订单总额</td>
												<td class="item-total-price">操作</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="order-item col2-set">
									<i class="top-corner"></i>
									<table class="order-table">
										<tbody>
											<tr>
												<td colspan="7" class="order-summary"><span
													class="order-status right">已取消 </span> <span
													class="order-number">订单 # ：L1710200009</span> <span
													class="exchange-time">交易时间：2017-10-20 上午11:34:18</span></td>
											</tr>
											<tr>
											<c:forEach items="${list }" var="map">
												<td class="item-image"><img
													src="http://o6lmzxerb.bkt.clouddn.com/media/catalog/product/3/6/3614850016257/945a480a35f5ac78e54f84409b678217.jpg?imageMogr2/thumbnail/58x58/extent/58x58/background/d2hpdGU="
													alt="" width="58" height="58"></td>
												<td class="item-name"><a target="_blank"
													href="http://www.laredoute.cn/1539557.html/">Ruffled
														${map.productName } <br>
												</a>
													<div style="font-size:12px;font-weight:bold;color:#999;">
														<span>颜色：</span> <span style="margin-right:12px;">
															${map.colorDescribe } </span> <span>尺码：</span> <span> ${map.sizeName } </span>
													</div></td>
												<td class="item-amount">× ${map.quantity }</td>

												<td class="item-price">€${map.productPrict }</td>
												</c:forEach>
												<td class="item-freight" rowspan="2">商品总价: €${sum }<br>
													商品折扣：<span class="discount">-€0.00</span><br>
													运费总计：€9.99<br> <strong class="item-total-price">订单总额:€68.98</strong>
												</td>
												<td class="item-order-status order-item" rowspan="2"><a
													class="item-order-detail order_detail"
													href="http://www.laredoute.cn/sales/order/view/order_id/9424">订单详情</a>

												</td>

											</tr>
										</tbody>
									</table>

								</div>
								<div class="pager clearfix"></div>
										</c:otherwise>
									</c:choose>
									<div class="buttons-set">
										<p class="back-link">
											<a href="http://www.laredoute.cn/checkout/cart/"><small>« </small>返回</a>
										</p>
									</div>
								</div>
							</div>
							<div class="col-left sidebar mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" data-height="630" data-autohidescrollbar="true" style="height: 630px;">
								<div id="mCSB_1" class="mCustomScrollBox mCS-dark mCSB_vertical mCSB_inside" style="max-height: 630px;" tabindex="0">
									<div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
										<div id="mCSB_1" class="mCustomScrollBox mCS-dark mCSB_vertical mCSB_inside" style="max-height: 630px;" tabindex="0">
											<div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
												<div class="block block-account">
													<div class="block-title">
														<strong>个人中心</strong>
													</div>
													<div class="block-content">
														<ul>
															<li class="current"><strong>我的订单</strong></li>
															<li>
																<a href="userInfo.jsp">个人信息</a>
															</li>
															<li>
																<a href="./address/selectAddress?userId=${sessionScope.userInfo.userId }">收货地址</a>
															</li>
															<li>
																<a href="shouCang.jsp">我的收藏</a>
															</li>
															<li>
																<a href="youHui.jsp">我的优惠券</a>
															</li>
															<li>
																<a href="http://www.laredoute.cn/customer/account/logout">退出登入</a>
															</li>
														</ul>
													</div>
												</div>

												<div class="erweima_uni" style="font-size:0;margin-top:18px; padding-bottom: 60px;">
													<img src="img/azoyaclub-LR-center.jpg" class="mCS_img_loaded">
												</div>

												<!--{COMPARELIST_SIDEBAR_6cd8ff9829453432c0170e10aed4d67b}-->
												<!--/{COMPARELIST_SIDEBAR_6cd8ff9829453432c0170e10aed4d67b}-->
												<!--{RECENTLYCOMPARED_SIDEBAR_38773b8de7311ddf6644679450a8782c}-->
												<!--/{RECENTLYCOMPARED_SIDEBAR_38773b8de7311ddf6644679450a8782c}-->
												<!--{WISHLIST_f5843a48639dfb28da3f32abeade344d}-->
												<!--/{WISHLIST_f5843a48639dfb28da3f32abeade344d}-->
												<!--{POLL_f3e104feec37e1f66df36a1b4021e0a7}-->
												<!--/{POLL_f3e104feec37e1f66df36a1b4021e0a7}-->
											</div>
											<div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-dark mCSB_scrollTools_vertical" style="display: none;">
												<div class="mCSB_draggerContainer" style="">
													<div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 0px; height: 0px; top: 0px;" oncontextmenu="return false;">
														<div class="mCSB_dragger_bar" style="line-height: 0px;"></div>
													</div>
													<div class="mCSB_draggerRail"></div>
												</div>
											</div>
										</div>
									</div>
									<div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-dark mCSB_scrollTools_vertical">
										<div class="mCSB_draggerContainer">
											<div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;" oncontextmenu="return false;">
												<div class="mCSB_dragger_bar"></div>
											</div>
											<div class="mCSB_draggerRail"></div>
										</div>
									</div>
								</div>
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
					<!-- js/HeZhan.js -->
					<!-- js/source-cookie.js -->
					<!-- js/jquery.cookie.js -->

					<script src="js/adv.js"></script>
					<script src="js/adv.js"></script>
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
							hm.src = "js/hm.js?18fc76cc330acbd7b73f47ca2a57fdf1";
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
							s.src = (f ? 'https' : 'http') + '://' + (f ? 'fm.ipinyou.com' : 'fm.p0y.cn') + 'js/adv.js';
						}(document);
					</script>
					<noscript>&amp;lt;img src="//stats.ipinyou.com/adv.gif?a=nKh..BaCDZVC-fvz2mDil2_NpQP&amp;amp;e=" style="display:none;"/&amp;gt;</noscript>

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
								}
							} catch(err) {}

						});
					</script>

					<script type="text/javascript">
						function sensorsdataGetCookie(name) {
							var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
							if(arr = document.cookie.match(reg)) {
								return unescape(arr[2]);
							} else {
								return null;
							}
						}
						var sa_properties = {
							"website_id": 26,
							"i_tag_page": "",
							"i_tag_region": "",
							"i_tag_hyperlink": "",
							"w_tag_page": "",
							"w_tag_region": "",
							"w_tag_hyperlink": "",
							"promotion_source": "",
							"platform_id": 1,
							"level_1_page_type_id": "10",
							"level_2_page_type_id": "1",
							"total_orders": 0,
							"total_pending": 0,
							"total_canceled": 0,
							"total_paid": 0,
							"total_shipments": 0
						};
						var loginUserId = sensorsdataGetCookie("SA_CUSTOMER_INFO");
						sa_properties.login_user_id = loginUserId ? loginUserId : "";
						da_sensorsdata.track("view_order_list", sa_properties);
					</script>
				</div>
				<div id="back-top" class="back-top">
					<style>
						.FootContain {
							clear: both;
						}
						
						.inquire-left-odd,
						.inquire-left-dnf {
							font-size: 12px;
						}
					</style>

					<div class="QR-code">
						<i class="icon icon-weibo"></i>
						<img class="QR-code-img" src="img/QR-code-weibo.png">
					</div>
					<div class="QR-code">
						<i class="icon icon-weixin"></i>
						<img class="QR-code-img" src="img/QR-code-weixin.jpg">
					</div>
					<a href="http://www.laredoute.cn/sales/order/history/#top" class="top"><span class="top-text">TOP</span></a>
				</div>
			</div>
		</div>
		<style>
			#qrcodeWeixin {
				display: none;
			}
		</style>
		<div class="js-container" style="display: none">
			<script type="text/javascript" src="js/area.js"></script>
			<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
			<script type="text/javascript" src="js/main-common.js"></script>
			<script type="text/javascript" src="js/common.js"></script>
			<script type="text/javascript" src="js/innerPlugin.js"></script>
			<script type="text/javascript" src="js/HeZhan.js"></script>
			<script type="text/javascript" src="js/source-cookie.js"></script>
			<script type="text/javascript" src="js/jquery.cookie.js"></script>
			<script type="text/javascript" src="js/index.js"></script>
			<script type="text/javascript" src="js/QtyChange.js"></script>
			<script type="text/javascript" src="js/jquery.mCustomScrollbar.concat.min.js"></script>
			<script type="text/javascript" src="js/product_list.js"></script>
			<script type="text/javascript" src="js/sensorsAnalytics.js"></script>
			<script type="text/javascript" src="js/logistics.js"></script>
		</div>
		<div class="J-shopping-bag"><span class="loading"></span><span class="corner"></span></div>
		<div class="J-shopping-bag"><span class="loading"></span><span class="corner"></span></div>

	</body>

</html>