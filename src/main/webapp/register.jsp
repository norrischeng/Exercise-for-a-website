<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE>

<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>建立新客户帐户 | LaRedoute中文官网</title>
		<style>
			#qrcodeWeixin {
				display: none;
			}
			
			.HeaderMiddle,
			.nav-container {
				text-align:center;
				/* display: none; */
			}
		</style>
		<link rel="stylesheet" type="text/css" href="css/style.css" media="all">
		<link rel="stylesheet" type="text/css" href="css/avatar.css" media="all">
		<script type="text/javascript" src="js/htag.js"></script>
		<script src="js/hm.js"></script>
		<script src="js/sensorsdata.min.js"></script>
		<script type="text/javascript" src="js/jquery-1.7.min.js"></script>
		<script type="text/javascript" src="js/plugins.js"></script>
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
		</script>
		<script type="text/javascript">
			optionalZipCountries = ["FR"];
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
				function _t() { return new RegExp(/(.*?)\.?([^\.]*?)\.?(com|net|org|biz|ws|in|me|co\.uk|co|org\.uk|ltd\.uk|plc\.uk|me\.uk|edu|mil|br\.com|cn\.com|eu\.com|hu\.com|no\.com|qc\.com|sa\.com|se\.com|se\.net|us\.com|uy\.com|ac|co\.ac|gv\.ac|or\.ac|ac\.ac|af|am|as|at|ac\.at|co\.at|gv\.at|or\.at|asn\.au|com\.au|edu\.au|org\.au|net\.au|id\.au|be|ac\.be|adm\.br|adv\.br|am\.br|arq\.br|art\.br|bio\.br|cng\.br|cnt\.br|com\.br|ecn\.br|eng\.br|esp\.br|etc\.br|eti\.br|fm\.br|fot\.br|fst\.br|g12\.br|gov\.br|ind\.br|inf\.br|jor\.br|lel\.br|med\.br|mil\.br|net\.br|nom\.br|ntr\.br|odo\.br|org\.br|ppg\.br|pro\.br|psc\.br|psi\.br|rec\.br|slg\.br|tmp\.br|tur\.br|tv\.br|vet\.br|zlg\.br|br|ab\.ca|bc\.ca|mb\.ca|nb\.ca|nf\.ca|ns\.ca|nt\.ca|on\.ca|pe\.ca|qc\.ca|sk\.ca|yk\.ca|ca|cc|ac\.cn|com\.cn|edu\.cn|gov\.cn|org\.cn|bj\.cn|sh\.cn|tj\.cn|cq\.cn|he\.cn|nm\.cn|ln\.cn|jl\.cn|hl\.cn|js\.cn|zj\.cn|ah\.cn|gd\.cn|gx\.cn|hi\.cn|sc\.cn|gz\.cn|yn\.cn|xz\.cn|sn\.cn|gs\.cn|qh\.cn|nx\.cn|xj\.cn|tw\.cn|hk\.cn|mo\.cn|cn|cx|cz|de|dk|fo|com\.ec|tm\.fr|com\.fr|asso\.fr|presse\.fr|fr|gf|gs|co\.il|net\.il|ac\.il|k12\.il|gov\.il|muni\.il|ac\.in|co\.in|org\.in|ernet\.in|gov\.in|net\.in|res\.in|is|it|ac\.jp|co\.jp|go\.jp|or\.jp|ne\.jp|ac\.kr|co\.kr|go\.kr|ne\.kr|nm\.kr|or\.kr|li|lt|lu|asso\.mc|tm\.mc|com\.mm|org\.mm|net\.mm|edu\.mm|gov\.mm|ms|nl|no|nu|pl|ro|org\.ro|store\.ro|tm\.ro|firm\.ro|www\.ro|arts\.ro|rec\.ro|info\.ro|nom\.ro|nt\.ro|se|si|com\.sg|org\.sg|net\.sg|gov\.sg|sk|st|tf|ac\.th|co\.th|go\.th|mi\.th|net\.th|or\.th|tm|to|com\.tr|edu\.tr|gov\.tr|k12\.tr|net\.tr|org\.tr|com\.tw|org\.tw|net\.tw|ac\.uk|uk\.com|uk\.net|gb\.com|gb\.net|vg|sh|kz|ch|info|ua|gov|name|pro|ie|hk|com\.hk|org\.hk|net\.hk|edu\.hk|us|tk|cd|by|ad|lv|eu\.lv|bz|es|jp|cl|ag|mobi|eu|co\.nz|org\.nz|net\.nz|maori\.nz|iwi\.nz|io|la|md|sc|sg|vc|tw|travel|my|se|tv|pt|com\.pt|edu\.pt|asia|fi|com\.ve|net\.ve|fi|org\.ve|web\.ve|info\.ve|co\.ve|tel|im|gr|ru|net\.ru|org\.ru|hr|com\.hr|ly|xyz)$/) ;}

				function _d(s) { var result = ''; try { result = decodeURIComponent(s.replace(/\+/g, ' ')) ;} catch(e) { result = s.replace(/\+/g, ' ') ;}; return result ;}

				function _i(arg, str) {
					var sptr = arg.charAt(0),
						split = str.split(sptr);
					if(sptr === arg) { return split ;} arg = parseInt(arg.substring(1), 10);
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
						if(!field) { field = [split[i], split[i], ''] ;}
						if(field[1].replace(/\s/g, '') !== '') {
							field[2] = _d(field[2] || '');
							if(arg2 === field[1]) { return field[2]; } tmp = field[1].match(/(.*)\[([0-9]+)\]/);
							if(tmp) {
								params[tmp[1]] = params[tmp[1]] || [];
								params[tmp[1]][tmp[2]] = field[2];
							} else { params[field[1]] = field[2] ;}
						}
					}
					if(sptr === arg) { return params ;}
					return params[arg2];
				}
				return function(arg, url) {
					var _l = {},
						tmp, tmp2;
					if(arg === 'tld?') { return _t() ;} url = url || window.location.toString();
					if(!arg) { return url;} arg = arg.toString();
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
						if(_l.query && arg.match(/^\?/)) { return _f(arg, _l.query) ;}
						if(tmp = url.match(/(.*?)\:?\/\/(.*)/)) {
							_l.protocol = tmp[1].toLowerCase();
							url = tmp[2];
						}
						if(tmp = url.match(/(.*?)(\/.*)/)) {
							_l.path = tmp[2];
							url = tmp[1];
						}
						_l.path = (_l.path || '').replace(/^([^\/])/, '/$1').replace(/\/$/, '');
						if(arg.match(/^[\-0-9]+$/)) { arg = arg.replace(/^([^\/])/, '/$1');}
						if(arg.match(/^\//)) { return _i(arg, _l.path.substring(1)) ;} tmp = _i('/-1', _l.path.substring(1));
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
					if(arg in _l) { return _l[arg]; }
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
				var sa_common_properties = { "login_user_id": "", "website_id": 26, "i_tag_page": "", "i_tag_region": "", "i_tag_hyperlink": "", "w_tag_page": "", "w_tag_region": "", "w_tag_hyperlink": "", "promotion_source": "", "platform_id": 1, "level_1_page_type_id": "6", "level_2_page_type_id": "" },
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
				<p id="back-top">
					<a href="http://www.laredoute.cn/customer/account/create#top"><span></span></a>
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
                    <span class="HeaderWord welcome textwrap">
                        [<a href="login.jsp">请登录</a>]
                        [<a href="register.jsp">免费注册</a>]
                    </span>
											</span>
											<span class="HeaderWord country">
                    <a href="http://www.laredoute.cn/customer/account/create"><img src="img/icon-fr.png" width="28" height="14"></a>
                    <a href="http://www.laredoute.cn/customer/account/create"><img src="img/icon-usa.png" width="28" height="14"></a>
                    <a href="http://www.laredoute.cn/customer/account/create"><img src="img/icon-uk.png" width="28" height="14"></a>
                </span>
										</div>
										<div class="HeaderTopRight">
											<span class="customer-service-mail">中文客服邮箱：<b>china@laredoute.com</b></span>
											<a class="HeaderWord account" href="http://www.laredoute.cn/sales/order/history/">我的订单</a>
											<a href="http://www.laredoute.cn/helper/about/" class="HearderWord aboutUs" target="_blank">关于我们</a>
											<a href="http://www.laredoute.cn/customer/account/create" class="HearderWord helpInfo">帮助中心</a>
										</div>
									</div>
								</div>
								<div class="HeaderMiddle clearfix width_1190" style="clear:both;padding-top:100px">
									<div class="center">
										<a href="http://www.laredoute.cn/" class="HeaderBrandLogo">
											<img src="img/header-logo.jpg">
										</a>
									</div>
								</div>

								<!-- 首页弹窗 -->

								<div class="account-create">
									<div class="page-title register" style="display:none;">
										<h1>
            <a href="http://www.laredoute.cn/">La Redoute</a>
        </h1>
									</div>
									<form action="Users/register" method="post" id="form-validate">
										<div class="col2-set">
											<h2><b>注册</b> La Redoute</h2>
											<div class="fieldset">
												<input type="hidden" name="success_url" value="">
												<input type="hidden" name="error_url" value="">
												<input type="hidden" name="form_key" value="yM0RvuNRgfcRGQtE">
												<ul class="form-list">

													<li style="display: none">
														<!--                    -->
														<div style="display: none;" class="customer-name">
															<div class="field name-firstname">
																<label style="font-weight: normal; display: none;" for="firstname" class="required"><em></em>昵称</label>
																<div class="input-box">
																	<input type="text" id="firstname" name="firstname" value="" title="昵称" maxlength="255" class="input-text">
																	<div class="validation-advice"></div>
																</div>
															</div>
															<div style="display:none">
																<label for="lastname" class="required" style="display: none;"><em></em>姓氏</label>
																<div class="input-box">
																	<input type="text" id="lastname" name="lastname" value=" " title="姓氏" maxlength="255" class="input-text">
																</div>
															</div>
														</div>
													</li>
													<li>
														<label for="EmailAddress" class="required"><em></em>请输入您的电子邮箱</label>
														<div class="input-box">
															<input type="email" name="email" id="EmailAddress" value="" title="编辑电子邮件地址" class="input-text" required="required">
															<div class="validation-advice" id="msg"></div>
															<font color="red" ></font>
														</div>
													</li>

												</ul>
											</div>

											<div class="fieldset">
												<ul class="form-list">
													<li class="fields">
														<div class="field">
															<label for="RPassword" class="required"><em></em>请输入您的密码</label>
															<input type="password" name="password" id="RPassword" title="密码" class="input-text" required="required" pattern="^.{6,20}$">
															<div class="validation-advice">密码应该为6~20位非空字符</div>
														</div>
													</li>
													<li class="fields">
														<div class="field">
															<label for="RConfirmPW" class="required"><em></em>请再次输入您的密码</label>
															<input type="password" name="confirmationPassword" title="确认密码" id="RConfirmPW" class="input-text" required="required" pattern="^.{6,20}$">
															<div class="validation-advice">两次密码不一致</div>
														</div>
													</li>
												</ul>
											</div>

											<div class="fieldset">
												<div class="field reg-agree">
													<input type="checkbox" name="agreement" checked="checked" required="required"> 是的，我已经阅读和同意
													<a href="http://www.laredoute.cn/protocol" target="_blank">《网站条款》</a>。
													<div class="validation-advice">您必须同意网站条款</div>
												</div>
											</div>

											<div class="buttons-set">
												<button id="PageRegister" type="button" title="提交" class="OrangeButton">注册</button>
												<a href="login.jsp" class="back-link"><i class="WhiteArrow backup"></i>返回登录</a>
											</div>
										</div>
									</form>
								</div>
								<div class="FootContain-mini">
									<div class="miniFoot">
										<p class="links">
											<a href="http://www.laredoute.cn/" target="_blank">主页</a>
											<span>|</span>
											<a href="http://www.laredoute.cn/helper/about/" target="_blank">关于我们</a>
											<span>|</span>
											<a href="http://www.laredoute.cn/customer/account/create" target="_blank">帮助</a>
											<span>|</span>
											<a href="http://www.laredoute.cn/helper/contact/" target="_blank">联系我们</a>
											<span>|</span>
											<a href="http://www.laredoute.cn/customer/account/create" target="_blank">服务条款</a>
											<span>|</span>
											<a href="http://www.laredoute.cn/customer/account/create" target="_blank">物流FAQ</a>
										</p>
										<p class="copyright">© La Redoute</p>
									</div>
								</div>
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<script type="text/javascript">
	//邮箱验证
 	$("#EmailAddress").blur(function(){
		var EmailAddress = $("#EmailAddress").val();
		var format = /^(?:[a-z0-9]+[_\-+.]+)*[a-z0-9]+@(?:([a-z0-9]+-?)*[a-z0-9]+.)+([a-z]{2,})+$/;
		if(format.test(EmailAddress)){
			$.ajax({
				url:"Users/verify?email="+EmailAddress,
				success:function(data){
				//console.log("--->"+$("#msg").text(data["msg"])+"1");
				$("#msg").text(data["msg"]);
				$("#msg").show(); 
				$("#PageRegister").click(function(){
					if(data["msg"]==("邮箱可以使用")){ 
						$("#form-validate").submit();
						alert("注册成功");
					}else{
						alert("此邮箱已被注册");
						location.href="register.jsp";
					}; 
				});
			}
		});
		}else{
			$("#msg").text("邮箱格式不正确");
		}
	}); 
	
	$("#EmailAddress").focus(function(){
		$("#msg").empty();
	});
	
	
	


/*  	$("#EmailAddress").blur(function(){
		var EmailAddress = $("#EmailAddress").val();
		$.post({
			url:"Users/verify",
			data:{"email":EmailAddress },
			success:function(data){
				var result=JSON.parse(data);  
				$("#msg").empty();
				if(result!=null){
					alert("用户名已存在");
					location.href="register.jsp";
				}else{
					$("#msg").append("此邮箱号可以使用");
				}
			}
		});
	});  */

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
								<script type="text/javascript" src="js/jquery.cookie.js"></script>
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

							</div>
						</div>
					</div>

					<script type="text/javascript">
						jQuery(document).ready(function() {
							try {
								var cookie_name = "assoc"; //rakuten
								var now = +new Date(),
									rakuten = Mage.Cookies.getSourceByKey("siteID"),
									src = Mage.Cookies.getSourceByKey("src");

								Mage.Cookies.expires = (new Date(now - 1000));
								Mage.Cookies.set("rakuten", "");

								var cookie = 'a:6:{s:7:"user_id";N;s:9:"user_name";N;s:10:"track_code";s:0:"";s:10:"source_url";s:7:"rakuten";s:11:"usersafekey";s:0:"";s:17:"invitation_source";s:0:"";}';

								var track_len = rakuten.length;
								var track_code = rakuten;
								var replace_str = 's:10:"track_code";s:0:"";';
								cookie = cookie.replace(replace_str, 's:10:"track_code";s:' + track_len + ':"' + track_code + '";');

								var expireTime = '';
								if(rakuten && src == "rakuten") {
									Mage.Cookies.expires = (new Date(now + Number(expireTime) * 1000));
									Mage.Cookies.set(cookie_name, cookie);
								}
							} catch(err) {}

						});
					</script>

					<script>
						function pyRegisterCvt() {
							var timestamp = new Date().getTime() + Math.random();
							var _orderno = timestamp.toString();
							var w = window,
								d = document,
								e = encodeURIComponent;
							var b = location.href,
								c = d.referrer,
								f, g = d.cookie,
								h = g.match(/(^|;)\s*ipycookie=([^;]*)/),
								i = g.match(/(^|;)\s*ipysession=([^;]*)/);
							if(w.parent != w) {
								f = b;
								b = c;
								c = f;
							};
							u = '//stats.ipinyou.com/cvt?a=' + e('nKh.j3h.2-XFcDRO2hmIxRV_PHZ790') + '&c=' + e(h ? h[2] : '') + '&s=' + e(i ? i[2].match(/jump\%3D(\d+)/)[1] : '') + '&u=' + e(b) + '&r=' + e(c) + '&rd=' + (new Date()).getTime() + '&OrderNo=' + e(_orderno) + '&e=';
							(new Image()).src = u;
						}
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
				<script type="text/javascript" src="js/index.js"></script>
				<script type="text/javascript" src="js/QtyChange.js"></script>
				<script type="text/javascript" src="js/jquery.mCustomScrollbar.concat.min.js"></script>
				<script type="text/javascript" src="js/product_list.js"></script>
				<script type="text/javascript" src="js/sensorsAnalytics.js"></script>
			</div>
		</div>
		<div class="J-shopping-bag"><span class="loading"></span><span class="corner"></span></div>
	</body>

</html>