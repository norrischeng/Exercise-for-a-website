<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="css/style.css" media="all">
<link rel="stylesheet" type="text/css" href="css/index.css" media="all">
</script>
<script src="js/a.js"></script>
<script src="js/hm.js"></script>
<script type="text/javascript" src="js/htag.js"></script>
<script src="js/sensorsdata.min.js"></script>
<script type="text/javascript" src="js/jquery-1.7.min.js"></script>
</head>

<body>

	<div class="global-tips">
		<p style="line-height: 32px;">全新升级：直邮运费仅需9.99欧，全场购物满89欧免邮！</p>
	</div>
	<div class="head-container">
		<div id="back-top" class="back-top">
			<style>
.FootContain {
	clear: both;
}

.inquire-left-odd,.inquire-left-dnf {
	font-size: 12px;
}
</style>
			<div class="QR-code">
				<i class="icon icon-weibo"></i> <img class="QR-code-img"
					src="img/QR-code-weibo.png">
			</div>
			<div class="QR-code">
				<i class="icon icon-weixin"></i> <img class="QR-code-img"
					src="img/QR-code-weixin.jpg">
			</div>
			<a href="http://www.laredoute.cn/#top" class="top"><span
				class="top-text">TOP</span> </a>
		</div>
		<div class="header clearfix ">
			<div class="HeaderTop ">
				<div class="HeaderTopContainer width_1190">
					<div class="HeaderTopLeft">
						<c:if test="${empty sessionScope.userInfo}">
						<span class="HeaderUserInfo textwrap"> <span>Hi~</span>
						<span class="HeaderWord welcome textwrap">[<a
								href="login.jsp">欢迎登录</a>]
								[<a href="register.jsp">免费注册</a>]</span>
						</span>
						</c:if>
						<c:if test="${sessionScope.userInfo.mailbox !=null}">
						<span class="HeaderUserInfo textwrap"><span>Hi~</span>
						<span class="HeaderWord welcome textwrap">[<a
								href="login.jsp">${sessionScope.userInfo.userId}</a>]
								[<a href="register.jsp">退出</a>]</span>
						</span>
						</c:if>
						<span class="HeaderWord country"> <a
							href="http://www.laredoute.fr/?omniturecode=CORcnHeaderGEO"
							target="_blank"><img src="img/icon-fr.png" width="28"
								height="14"> </a> <a
							href="http://www.laredoute.com/?omniturecode=CORcnUSHeaderGEO"
							target="_blank"><img src="img/icon-usa.png" width="28"
								height="14"> </a> <a
							href="http://www.laredoute.com/?omniturecode=CORcnUKHeaderGEO"
							target="_blank"><img src="img/icon-uk.png" width="28"
								height="14"> </a> </span>
					</div>
					<div class="HeaderTopRight">
						<span class="customer-service-mail">中文客服邮箱：<b>china@laredoute.com</b>
						</span> <a class="HeaderWord account"
							href="pOrder/shopping?userId=${sessionScope.userInfo.userId}">我的订单</a> <a
							href="http://www.laredoute.cn/helper/about/"
							class="HearderWord aboutUs" target="_blank">关于我们</a> <a
							href="http://www.laredoute.cn/helper/center/"
							class="HearderWord helpInfo">帮助中心</a>
					</div>
				</div>
			</div>
			<div class="HeaderMiddle clearfix width_1190" style="clear:both;">
				<div class="left">
					<a href="MainPage.jsp" class="HeaderBrandLogo"> <img
						src="img/header-logo.jpg"> </a>
				</div>
				<div class="right">
					<div class="search_grid search_grid_additional">
						<div class="search_box">
							<form id="top-search-form"
								action="http://www.laredoute.cn/catalogsearch/result"
								method="get">
								<div class="form-search">
									<input id="sli_search_1" class="input-text cleardefault"
										name="q" type="text" value="" autocomplete="off">
									<div class="button">
										<button class="button  search" title="Search"></button>
									</div>
								</div>
							</form>
							<div class="hot-search">
								<span>大家都在看：</span> <a href="http://www.laredoute.cn/"
									class="hot-search-link">法国直邮季</a> <a
									href="http://www.laredoute.cn/catalogsearch/result?p=3&amp;q=wool"
									class="hot-search-link">羊毛衫</a>

							</div>
						</div>
					</div>
					<div class="top-user-links clearfix">
						<a class="shop-bag" href="cart/selectCart?userId=${sessionScope.userInfo.userId}">
							<b id="CartNum">0</b> <span></span>购物袋 </a> <a class="favors"
							href="http://www.laredoute.cn/o_customer/favourites/info/"> <b>0</b>
							<span></span>我的收藏夹 </a> <a class="user-center"
							href="userInfo.jsp"> <span></span>个人中心
						</a>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="nav-container">
			<div class="menu-background" style="display: none;"></div>
			<ul id="H-nav" class="CenterContain H-nav">
				<!--一级分类循环 -->
				<c:forEach items="${firstList}" var="map1" varStatus="map11">
					<li class="nav-top"><a class="nav-top-title"
						href="Search/findPage?categoryId=${map1.categoryId}"> <span>${map1.categoryName}</span>
					</a>
						<div class="nav-top-contain">
							<!-- second categories start -->
							<div class="tab-title-contain">
								<c:forEach items="${secondList}" var="map2">
									<c:if test="${map2.parentId==map11.index+1}">
										<a href="Search/findPage?categoryId=${map2.categoryId}&parentId=${map1.categoryId}"
											class="tab-title">${map2.categoryName}</a>
									</c:if>
									<!-- second categories end -->
								</c:forEach>
							</div>
							<!-- third categories start -->

							<c:forEach items="${secondList}" var="map2" varStatus="map22">
								<c:if test="${map2.parentId==map11.index+1}">
									<div class="tab-cont clearfix" category2="7461">
										<!--second category top menu block -->
										<div class="best-seller">
											<ul>
												<li><a
													href="http://www.laredoute.cn/woman/woman1.html/?dir=desc&amp;order=sales_volumes">凑单专区</a>
												</li>
											</ul>
										</div>
										<c:set var="i" value="1"></c:set>
										<ul class="second">
											<c:set var="flag" value="true"></c:set>
											<c:forEach items="${thirdList}" var="map3" varStatus="map33">
												<c:if test="${map3.parentId==map22.index+6}">
													<c:if test="${flag}">
														<li class="level-3"><a
															href="Search/findPage?categoryId=${map3.categoryId}&parentId=${map2.categoryId}">${map3.categoryName
																}</a></li>
														<c:set var="i" value="${i+1}"></c:set>
													</c:if>
													<c:if test="${i>10 }">
														<c:set var="flag" value="false" />
													</c:if>

												</c:if>

											</c:forEach>
										</ul>
										<c:if test="${i>10 }">
										<ul class="second">
											<c:set var="j" value="1"></c:set>
											<c:forEach items="${thirdList}" var="map3">

												<c:if test="${map3.parentId==map22.index+6}">
													<c:set var="j" value="${j+1}"></c:set>
													<c:if test="${j>10&&j<=20}">
														<li class="level-3"><a
															href="Search/findPage?categoryId=${map3.categoryId}&parentId=${map2.categoryId}">${map3.categoryName
																}</a></li>
													</c:if>
												</c:if>
											</c:forEach>
										</ul>
								</c:if>
									<c:if test="${j>20 }">
										<ul class="second">
											<c:set var="k" value="1"></c:set>
											<c:forEach items="${thirdList}" var="map3">

												<c:if test="${map3.parentId==map22.index+6}">
													<c:set var="k" value="${k+1 }"></c:set>
													<c:if test="${k>20}">
														<li class="level-3"><a
															href="Search/findPage?categoryId=${map1.categoryId}&parentId=${map2.categoryId}">${map3.categoryName
																}</a></li>
													</c:if>
												</c:if>
											</c:forEach>
										</ul>
									</c:if>
										<div class="cate-desc">
											<!-- category description-->
											<div class="discount-info">
												<a
													href="http://www.laredoute.cn/woman/clothing/dresses.html/"
													class="first"> <img src="img/1_101.jpg" alt=""> </a>
												<a
													href="http://www.laredoute.cn/woman/shoesaccessories/accessories.html/">
													<img src="img/11_10.jpg" alt=""> </a>
											</div>

											<div class="summary">
												<ul>
													<li><a
														href="http://www.laredoute.cn/acoe/carvenpourlaredoute.html"
														target="_blank">Carven pour laredoute </a>
													</li>
													<li><a href="http://www.laredoute.cn/acoe/dim.html"
														target="_blank">Dim</a>
													</li>
													<li><a href="http://www.laredoute.cn/acoe/esprit.html"
														target="_blank">Esprit</a>
													</li>
													<li><a
														href="http://www.laredoute.cn/acoe/pepejeans.html"
														target="_blank">Pepe Jeans</a>
													</li>
													<li><a
														href="http://www.laredoute.cn/acoe/ressentiel.html"
														target="_blank">R essentiel</a>
													</li>
													<li><a
														href="http://www.laredoute.cn/acoe/softgrey.html"
														target="_blank">Soft Grey</a>
													</li>
													<li><a
														href="http://www.laredoute.cn/acoe/seeusoon.html"
														target="_blank">See u soon</a>
													</li>
													<li><a
														href="http://www.laredoute.cn/acoe/lauraclement.html"
														target="_blank">Laure Clement</a>
													</li>
													<li><a
														href="http://www.laredoute.cn/acoe/lespetitsprix.html"
														target="_blank">Les Petits Prix</a>
													</li>
												</ul>
												<a href="http://www.laredoute.cn/all-brands" target="_blank"><strong>All
														Brands</strong> </a>
											</div>
										</div>
									</div>
								</c:if>
							</c:forEach>

						</div>
					</li>

				</c:forEach>

			</ul>
		</div>
		<div class="js-container" style="display: none">
			<script type="text/javascript" src="js/area.js"></script>
			<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
			<script type="text/javascript" src="js/main-common.js"></script>
			<script type="text/javascript" src="js/common.js"></script>
			<script type="text/javascript" src="js/innerPlugin.js"></script>
			<script type="text/javascript" src="js/Menu.js"></script>
			<script type="text/javascript" src="js/jquery.cookie.js"></script>
			<script type="text/javascript" src="js/index.js"></script>
			<script type="text/javascript" src="js/QtyChange.js"></script>
			<script type="text/javascript"
				src="js/jquery.mCustomScrollbar.concat.min.js"></script>
			<script type="text/javascript" src="js/product_list.js"></script>
			<script type="text/javascript" src="js/sensorsAnalytics.js"></script>
		</div>
		<style>
#qrcodeWeixin {
	display: none;
}
</style>
</body>

</html>

