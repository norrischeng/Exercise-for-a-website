<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>LaRedoute中文官网</title>

<link rel="stylesheet" type="text/css" href="css/style.css" media="all">
<link rel="stylesheet" type="text/css" href="css/product_list.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="css/jquery.mCustomScrollbar.min.css" media="all">
<script src="js/hm.js"></script>
<script type="text/javascript" async="async" src="img/htag.js"></script>
<script async="async" src="js/sensorsdata.min.js"></script>
<script type="text/javascript" src="js/jquery-1.7.min.js"></script>

<script type="text/javascript">
	var $ = jQuery;
</script>

<meta name="google-site-verification"
	content="RqbjumRZK339TH_WASyy--4SfjRT5Wx-T0W7IQfjPdI">
</head>

<body>
	<c:if test="${list == null }">
		<script>
			location.href = "Search/findPage";
		</script>
	</c:if>
	<div class="wrapper">
		<div class="wrapper">
		<c:import var="daoList" url="category/selectAll" ></c:import>
	${daoList}
				<!-- 首页弹窗 -->

				<div class="main-container col2-left-layout">
					<div class="main">
						<div class="breadcrumbs">
							<ul class="clearfix">
								<li><span class="icon-left"></span> <a
									href="http://www.laredoute.cn/" class="home-link" title="前往主页">主页</a>
								</li>
								<li class="category7261"><a
									href="http://www.laredoute.cn/man.html/" title="">男士</a> <span>&gt;&nbsp;</span>
								</li>
								<li class="category7262"><a
									href="http://www.laredoute.cn/man/manclothing.html/" title="">男装</a>
									<span>&gt;&nbsp;</span>
								</li>
								<li class="category7317"><strong class="breadcrumbs-last">T恤&amp;圆领衫</strong>
								</li>
							</ul>
						</div>
						<div class="col-main">
							<!-- 列表广告图 -->

							<div class="category-products">
								<div class="pl-header">
									<div class="pl-total">
										<strong class="pl-category">T恤&amp;圆领衫</strong> <strong
											class="pl-qty"><span>共<em>${count }</em>件</span> </strong>
									</div>
									<div class="pl-sort">
										<!--  -->
										<span data-key=""></span> <span onclick=""
											class="pl-sort-type "> <span>推荐</span> </span>

										<!--  -->
										<!--  -->
										<span data-key=""></span> <span onclick=""
											class="pl-sort-type "> <span>价格</span> </span>

										<!--  -->
										<!--  -->
										<span data-key=""></span> <span onclick=""
											class="pl-sort-type "> <span>最新上架</span> </span>

										<!--  -->
										<!--  -->
										<span data-key=""></span> <span class="pl-sort-type selected ">
											<span>最佳销量</span> </span>

										<!--  -->
										<a class="pl-sort-checkbox "
											href="http://www.laredoute.cn/man/manclothing/tshirts.html/?id=7317&amp;is_in_stock=1">
											<i class="checkbox"></i> <span>仅显示有货</span> </a>
									</div>
								</div>

								<div class="pages toolbar-single">
									<ol>

										<li class="current"><span>1</span></li>
										<li><a
											href="http://www.laredoute.cn/man/manclothing/tshirts.html/?p=2">2</a>
										</li>
										<li><a
											href="http://www.laredoute.cn/man/manclothing/tshirts.html/?p=3">3</a>
										</li>
										<li><a
											href="http://www.laredoute.cn/man/manclothing/tshirts.html/?p=4">4</a>
										</li>
										<li><a
											href="http://www.laredoute.cn/man/manclothing/tshirts.html/?p=5">5</a>
										</li>

										<li><a
											href="http://www.laredoute.cn/man/manclothing/tshirts.html/?p=2">下一页</a>
										</li>
										<li><a class="last"
											href="http://www.laredoute.cn/man/manclothing/tshirts.html/?p=12"
											title="尾页"></a>
										</li>

									</ol>

								</div>

								<!-- catalog layer -->
								<div class="pl-filter fixed-filter" id="pl-filter"
									style="display: block;">
									<div class="pl-filter-dropdown" id="static-dropdown">
										<div class="docenter">
											<strong class="fixed-cat">T恤&amp;圆领衫</strong>
											<div class="dropdown-group clearfix">
												<div class="dropdown">
													<div class="dropdown-head">
														<span class="dropdown-type">尺码</span> <i
															class="dropdown-icon"></i>
													</div>
													<div class="dropdown-content ">

														<div
															class="dropdown-selection mCustomScrollbar _mCS_1 mCS_no_scrollbar"
															data-height="150" style="height: 150px;">
															<div id="mCSB_1"
																class="mCustomScrollBox mCS-dark mCSB_vertical mCSB_inside"
																style="max-height: 150px;" tabindex="0">
																<div id="mCSB_1_container"
																	class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
																	style="position: relative; top: 0px; left: 0px;"
																	dir="ltr">
																	<ul
																		class="dropdown-selection-details dropdown-size clearfix">
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7670"
																			title="3XL">3XL</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7798"
																			title="4XL">4XL</a>
																		</li>
																		<li data-productcount="2"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7164"
																			title="L                                                               ">L
																		</a>
																		</li>
																		<li data-productcount="2"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7672"
																			title="L">L</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7163"
																			title="M                                                               ">M
																		</a>
																		</li>
																		<li data-productcount="2"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7675"
																			title="M">M</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7162"
																			title="S                                                               ">S
																		</a>
																		</li>
																		<li data-productcount="2"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7671"
																			title="S">S</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8587"
																			title="US 16/18 | FR 46/48">US 16/18 | FR 46/48</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8486"
																			title="US 20/22 | FR 50/52">US 20/22 | FR 50/52</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8487"
																			title="US 24/26 | FR 54/56">US 24/26 | FR 54/56</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8488"
																			title="US 28/30 | FR 58/60">US 28/30 | FR 58/60</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8489"
																			title="US 32/34 | FR 62/64">US 32/34 | FR 62/64</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8490"
																			title="US 36/38 | FR 66/68">US 36/38 | FR 66/68</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8491"
																			title="US 40/42 | FR 70/72">US 40/42 | FR 70/72</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8492"
																			title="US 44/46 | FR 74/76">US 44/46 | FR 74/76</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8495"
																			title="US 48/50 | FR 78/80">US 48/50 | FR 78/80</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8493"
																			title="US 52/54 | FR 82/84">US 52/54 | FR 82/84</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8494"
																			title="US 56/58  FR 86/88">US 56/58 FR 86/88</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8496"
																			title="US 60/62 | FR 90/92">US 60/62 | FR 90/92</a>
																		</li>
																		<li data-productcount="3"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=8497"
																			title="US 64/66 | FR 94/96">US 64/66 | FR 94/96</a>
																		</li>
																		<li data-productcount="2"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7165"
																			title="XL                                                              ">XL
																		</a>
																		</li>
																		<li data-productcount="2"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7673"
																			title="XL">XL</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7819"
																			title="XS">XS</a>
																		</li>
																		<li data-productcount="1"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7166"
																			title="XXL                                                             ">XXL
																		</a>
																		</li>
																		<li data-productcount="2"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?size=7674"
																			title="XXL">XXL</a>
																		</li>
																	</ul>
																</div>
																<div id="mCSB_1_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_1_scrollbar mCS-dark mCSB_scrollTools_vertical"
																	style="display: none;">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; top: 0px;"
																			oncontextmenu="return false;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>

													</div>
												</div>
												<div class="dropdown">
													<div class="dropdown-head">
														<span class="dropdown-type">品牌</span> <i
															class="dropdown-icon"></i>
													</div>
													<div class="dropdown-content " style="display: none;">
														<div
															class="dropdown-selection mCustomScrollbar _mCS_2 mCS_no_scrollbar"
															data-height="150" style="height: 150px;">
															<div id="mCSB_2"
																class="mCustomScrollBox mCS-dark mCSB_vertical mCSB_inside"
																style="max-height: 150px;" tabindex="0">
																<div id="mCSB_2_container"
																	class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
																	style="position: relative; top: 0px; left: 0px;"
																	dir="ltr">
																	<ul
																		class="dropdown-selection-details dropdown-brand dropdown-hascheckbox">
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=5704"
																			title="CASTALUNA FOR MEN">CASTALUNA FOR MEN</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=9343"
																			title="CELIO">CELIO</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=9306"
																			title="DC SHOES">DC SHOES</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=6411"
																			title="ELEVEN PARIS">ELEVEN PARIS</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=6404"
																			title="ESPRIT">ESPRIT</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=9047"
																			title="GEOGRAPHICAL NORWAY">GEOGRAPHICAL NORWAY</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=5438"
																			title="JACK &amp; JONES">JACK &amp; JONES</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=6382"
																			title="KAPORAL">KAPORAL</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=9785"
																			title="La Redoute Collections">La Redoute
																				Collections</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=5338"
																			title="LES PETITS PRIX">LES PETITS PRIX</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=6205"
																			title="LEVI&#39;S">LEVI'S</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=6952"
																			title="MINIMUM">MINIMUM</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=9725"
																			title="NAPAPIJRI">NAPAPIJRI</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=6927"
																			title="ONLY &amp; SONS">ONLY &amp; SONS</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=6895"
																			title="OXBOW">OXBOW</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=5429"
																			title="PEPE JEANS">PEPE JEANS</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=5434"
																			title="PUMA">PUMA</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=7082"
																			title="QUIKSILVER">QUIKSILVER</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=5740"
																			title="R edition">R edition</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=4976"
																			title="R essentiel">R essentiel</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=5370"
																			title="SCHOTT">SCHOTT</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=9470"
																			title="SCHOTT NYC">SCHOTT NYC</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=6424"
																			title="SELECTED HOMME">SELECTED HOMME</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=5405"
																			title="SOFT GREY">SOFT GREY</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=5306"
																			title="TAILLISSIME">TAILLISSIME</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=5440"
																			title="TOM TAILOR">TOM TAILOR</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?lbrand=9349"
																			title="VANS">VANS</a>
																		</li>
																	</ul>
																</div>
																<div id="mCSB_2_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_2_scrollbar mCS-dark mCSB_scrollTools_vertical"
																	style="display: none;">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_2_dragger_vertical" class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; top: 0px; display: block; height: 21px; max-height: 140px;"
																			oncontextmenu="return false;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>

													</div>
												</div>
												<div class="dropdown">
													<div class="dropdown-head">
														<span class="dropdown-type">颜色</span> <i
															class="dropdown-icon"></i>
													</div>
													<div class="dropdown-content " style="display: none;">
														<div
															class="dropdown-selection mCustomScrollbar _mCS_3 mCS_no_scrollbar"
															data-height="150" style="height: 150px;">
															<div id="mCSB_3"
																class="mCustomScrollBox mCS-dark mCSB_vertical mCSB_inside"
																style="max-height: 150px;" tabindex="0">
																<div id="mCSB_3_container"
																	class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
																	style="position: relative; top: 0px; left: 0px;"
																	dir="ltr">
																	<ul
																		class="dropdown-selection-details dropdown-color clearfix">
																		<li data-color="beige" title="米色"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5641"
																			class="set-colour"> <i
																				class="circle colour-beige "></i> </a>
																		</li>
																		<li data-color="black" title="黑色"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5610"
																			class="set-colour"> <i
																				class="circle colour-black "></i> </a>
																		</li>
																		<li data-color="blue" title="蓝色"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5614"
																			class="set-colour"> <i
																				class="circle colour-blue "></i> </a>
																		</li>
																		<li data-color="brown" title="栗色"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5619"
																			class="set-colour"> <i
																				class="circle colour-brown "></i> </a>
																		</li>
																		<li data-color="green" title="绿色"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5630"
																			class="set-colour"> <i
																				class="circle colour-green "></i> </a>
																		</li>
																		<li data-color="grey" title="灰色"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5605"
																			class="set-colour"> <i
																				class="circle colour-grey "></i> </a>
																		</li>
																		<li data-color="orange" title="橘色"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5664"
																			class="set-colour"> <i
																				class="circle colour-orange "></i> </a>
																		</li>
																		<li data-color="other" title="其他"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5608"
																			class="set-colour"> <i
																				class="circle colour-other colorful"></i> </a>
																		</li>
																		<li data-color="pink" title="粉色"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5636"
																			class="set-colour"> <i
																				class="circle colour-pink "></i> </a>
																		</li>
																		<li data-color="purple" title="紫色"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5643"
																			class="set-colour"> <i
																				class="circle colour-purple "></i> </a>
																		</li>
																		<li data-color="red" title="红色"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5633"
																			class="set-colour"> <i class="circle colour-red "></i>
																		</a>
																		</li>
																		<li data-color="white" title="白底蓝色印花"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5612"
																			class="set-colour"> <i
																				class="circle colour-white "></i> </a>
																		</li>
																		<li data-color="yellow" title="黄色"><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?general_color=5649"
																			class="set-colour"> <i
																				class="circle colour-yellow "></i> </a>
																		</li>
																	</ul>
																</div>
																<div id="mCSB_3_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_3_scrollbar mCS-dark mCSB_scrollTools_vertical"
																	style="display: none;">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_3_dragger_vertical" class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; top: 0px; height: 0px;"
																			oncontextmenu="return false;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="dropdown">
													<div class="dropdown-head">
														<span class="dropdown-type">特价</span> <i
															class="dropdown-icon"></i>
													</div>
													<div class="dropdown-content dropdown-content-right"
														style="display: none;">
														<div
															class="dropdown-selection mCustomScrollbar _mCS_4 mCS_no_scrollbar"
															data-height="150" style="height: 150px;">
															<div id="mCSB_4"
																class="mCustomScrollBox mCS-dark mCSB_vertical mCSB_inside"
																style="max-height: 150px;" tabindex="0">
																<div id="mCSB_4_container"
																	class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
																	style="position: relative; top: 0px; left: 0px;"
																	dir="ltr">
																	<ul
																		class="dropdown-selection-details dropdown-brand dropdown-hascheckbox">
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?special_price=4%2C10"
																			title="€30.00 - €40.00">€30.00 - €40.00</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?special_price=6%2C10"
																			title="€50.00 - €60.00">€50.00 - €60.00</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?special_price=5%2C10"
																			title="€40.00 - €50.00">€40.00 - €50.00</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?special_price=1%2C10"
																			title="€0.00 - €10.00">€0.00 - €10.00</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?special_price=2%2C10"
																			title="€10.00 - €20.00">€10.00 - €20.00</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?special_price=3%2C10"
																			title="€20.00 - €30.00">€20.00 - €30.00</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?special_price=7%2C10"
																			title="€60.00 - €70.00">€60.00 - €70.00</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?special_price=10%2C10"
																			title="€90.00 - €100.00">€90.00 - €100.00</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?special_price=8%2C10"
																			title="€70.00 - €80.00">€70.00 - €80.00</a>
																		</li>
																		<li data-productcount=""><a
																			href="http://www.laredoute.cn/man/manclothing/tshirts.html/?special_price=9%2C10"
																			title="€80.00 - €90.00">€80.00 - €90.00</a>
																		</li>
																	</ul>
																</div>
																<div id="mCSB_4_scrollbar_vertical"
																	class="mCSB_scrollTools mCSB_4_scrollbar mCS-dark mCSB_scrollTools_vertical"
																	style="display: none;">
																	<div class="mCSB_draggerContainer">
																		<div id="mCSB_4_dragger_vertical" class="mCSB_dragger"
																			style="position: absolute; min-height: 30px; top: 0px; display: block; height: 56px; max-height: 140px;"
																			oncontextmenu="return false;">
																			<div class="mCSB_dragger_bar"
																				style="line-height: 30px;"></div>
																		</div>
																		<div class="mCSB_draggerRail"></div>
																	</div>
																</div>
															</div>
														</div>

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>


								<!--  -->

								<!-- 分页展示 -->
								<div class="pl-grid-ctn without-filter-tag" id="pl-grid-ctn">
									<ul class="pl-grid clearfix">
										<c:forEach items="${list }" var="list">
											<li data-productid="257870"><a target="_blank"
												href="color/showColor?productId=${product_id }"
												title="R essentiel短袖纯棉polo衫"> <!-- 商品图片 --> <img
													class="pl-image lazyload"
													data-original="http://o6lmzxerb.bkt.clouddn.com/media/catalog/product/3/6/3613957259277/324244426_1_CO_1_3437785.jpg?imageMogr2/thumbnail/234x300/extent/234x300/background/d2hpdGU="
													src="img/324244426_3_CO_1_4273579.jpg"
													alt="R essentiel短袖纯棉polo衫" style="display: inline-block;">
											</a>
												<div class="pl-description">
													<!-- 是否新品 -->
													<span class="tag-season new-collection">NEW
														COLLECTION</span>
													<!-- 品牌 -->
													<span class="pl-brand"></span>
													<!-- 商品名称 -->
													<a target="_blank" class="pl-title" href=""
														title="R essentiel短袖纯棉polo衫">${list.product_name } </a>

													<!-- 价格开始    折扣后-->
													<c:if test="${list.discount != null }">
													<span class="current-price"><span class="price-number">${list.price*list.discount }</span>€</span>
													<span class="original-price"><span class="price-number">${list.price }</span>€ </span>
													</c:if>
													<!-- 折扣前价格 -->
													<c:if test="${list.discount == null }">
													<span class="current-price"><span class="price-number">${list.price }</span>€ </span>
													</c:if>
													
													<script type="text/javascript">
														var arry = $(".price-number");
														for ( var i = 0; i < arry.length; i++) {
															var html = arry.eq(i).html();
															var num = parseFloat(html);
															var num1 = num.toFixed(2);
															arry.eq(i).html(num1);
														}
													</script>
												</div> 
												<!-- 折扣 --> 
												<c:if test="${list.discount != null }">
													<span class="pl-discount">-${(100-100*list.discount)}%</span>
												</c:if> 
												<!-- 显示有多少种颜色  -->
												<br><ul class="pl-color dropdown-color">
													<li data-src="http://o6lmzxerb.bkt.clouddn.com/media/catalog/product/3/6/3613957259277/324244426_1_CO_1_3437785.jpg?imageView2/0/w/235/h/300" data-producturl="http://www.laredoute.cn/1257870.html" class="set-colour">
														<i class="circle" style="background-color: black;"></i>
													</li>
													<!-- 当颜色数量大于等于6时显示 -->
													<li><a href="http://www.laredoute.cn/1257918.html"
														class="circle">6+</a></li>
												</ul>
											</li>
										</c:forEach>
									</ul>
								</div>
							</div>
							<div class="pl-header">
								<div class="pl-total">
									<strong class="pl-category"> T恤&amp;圆领衫 </strong> <strong
										class="pl-qty"> <span>共<em>276</em>件</span> </strong>
								</div>
								<div class="pl-sort">
									<!--  -->
									<span data-key=""></span> <span onclick=""
										class="pl-sort-type "> <span>推荐</span> </span> <span
										data-key=""></span> <span onclick="" class="pl-sort-type ">
										<span>价格</span> </span> <span data-key=""></span> <span onclick=""
										class="pl-sort-type "> <span>最新上架</span> </span> <span
										data-key=""></span> <span class="pl-sort-type selected ">
										<span>最佳销量</span> </span> <a class="pl-sort-checkbox "
										href="http://www.laredoute.cn/man/manclothing/tshirts.html/?id=7317&amp;is_in_stock=1">
										<i class="checkbox"></i> <span>仅显示有货</span> </a>
								</div>
							</div>

							<div class="pages toolbar-single">
								<ol>
									<li>第${indexPage }页</li>
									<c:if test="${indexPage-1 >= 1 }">
										<li><a href="Search/findPage?indexPage=${indexPage-1 }">上一页</a>
										</li>
									</c:if>
									<c:if test="${indexPage+1<=Page }">
										<li><a href="Search/findPage?indexPage=${indexPage+1 }">下一页</a>
										</li>
									</c:if>
								</ol>

							</div>
							<script type="text/javascript">
								function addCart(postUrl,
										isConfigurationProduct) {
									var attribute_select = jQuery('.super-attribute-select'), data = "";
									//可配置文件则跳转
									if (isConfigurationProduct) {
										window.open(postUrl);
										return;
									}
									var isSelect = isSelectOptions();
									if (!isSelect.result) {
										var wrap = jQuery('#product-options-wrapper'), width = wrap
												.outerWidth(), height = wrap
												.outerHeight();

										if (!wrap.find('.colorAlarm').length) {
											wrap
													.prepend('<div class="colorAlarm"><p>请先选择您要的商品信息<a href="#" class="colorClose">关闭</a></p></div>');
											wrap.find('.colorAlarm').width(
													width + 8).height(
													height + 20);

											jQuery('#product-options-wrapper')
													.find('.colorClose')
													.click(
															function(e) {
																e
																		.preventDefault();
																jQuery(
																		'#product-options-wrapper')
																		.find(
																				'.colorAlarm')
																		.remove();
															});
										}

										return false;
									}
									//如果有数量则添加数量
									//        if(jQuery("#qty").length!==0){
									//            postUrl = postUrl+"qty/"+jQuery("#qty").val();
									//        }
									var qtyItem = jQuery(".qty");
									if (qtyItem.length !== 0) {
										qtyItem.each(function(index) {
											if (index !== 0 || data != "") {
												data = data + "&";
											}
											data = data
													+ jQuery(this).attr('name')
													+ "=" + jQuery(this).val();
										});
									}
									//        alert(data);
									//如果有颜色选择等则拼接参数
									if (attribute_select.length !== 0) {
										attribute_select.each(function(index) {
											if (index !== 0 || data != "") {
												data = data + "&";
											}
											data = data
													+ jQuery(this).attr('name')
													+ "=" + jQuery(this).val();
										});
									}
									//捆绑产品传递参数
									var bundleItem = jQuery('.bundle-item');
									//如果是可捆绑产品则需要验证和提交参数,bundle为全局变量
									if (bundleItem.length !== 0) {
										if (!bundle.validateRequireSelect()) {
											return;
										}
										bundleItem
												.each(function(index) {
													if (jQuery(this).prop(
															'checked')) {
														if (index !== 0
																|| data != "") {
															data = data + "&";
														}
														var bundleItemName = jQuery(
																this).attr(
																'name');
														var bundleItemValue = jQuery(
																this).val();
														data = data
																+ bundleItemName
																+ "="
																+ bundleItemValue;
													}
												});
									}
									//        alert(data);
									//        return ;
									jQuery
											.ajax({
												type : 'post',
												url : postUrl,
												dataType : 'json',
												data : data,
												success : function(data) {
													if (data.ret == 0) {
														easyDialog
																.open({
																	container : {
																		header : '提示',
																		content : '<div class="tip-notice-content"><p>您必须先登录才能进行操作</p></div>',
																		yesFn : function() {
																		}
																	}
																});
													} else if (data.ret == 1) {
														jQuery('#cartCount')
																.text(
																		data.itemCount);
														easyDialog
																.open({
																	container : {
																		header : '提示',
																		content : '<div class="tip-success-content"><p>商品已成功添加到购物车</p><p>购物车一共有'
																				+ data.itemCount
																				+ '件商品</p></div>',
																		yesText : '去购物车结算',
																		noText : '继续购物',
																		yesFn : function() {
																			location.href = 'http://www.laredoute.cn/checkout/cart/';
																		},
																		noFn : true
																	}
																});
													} else if (data.ret == 2) {
														easyDialog
																.open({
																	container : {
																		header : '提示',
																		content : '<div class="tip-fail-content"><p>商品加入到购物车失败，请重试！</p></div>',
																		yesFn : function() {
																		}
																	}
																});
													}
												},
												error : function(e) {
													easyDialog
															.open({
																container : {
																	header : '提示',
																	content : '<div class="tip-fail-content"><p>商品加入到购物车失败，请稍后再试！</p></div>',
																	yesFn : true
																}
															});
												}
											});
								}
								/**
								 * 是否有选择属性选项
								 * @returns {boolean}
								 */
								function isSelectOptions() {
									var isSelect = true;
									var error = "";
									var swatches = jQuery('.swatchesContainer');
									//颜色和形态必须选择
									if (jQuery('.swatchesContainer').length) {
										swatches
												.each(function(index) {
													if (!jQuery(this).find('i').length) {
														isSelect = false;
														if (error !== "") {
															error += ",";
														}
														error += jQuery(this)
																.attr(
																		'data-attrname');
													}
												});
									}
									return {
										'result' : isSelect,
										'error' : error
									};
								}
							</script>
							<!-- js/mainPage/jquery.mCustomScrollbar.concat.min.js -->
							<!-- js/mainPage/product_list.js -->

						</div>
						<div
							class="col-left sidebar mCustomScrollbar _mCS_5 mCS-autoHide mCS_no_scrollbar"
							data-height="630" data-autohidescrollbar="true"
							style="height: 630px;">
							<div id="mCSB_5"
								class="mCustomScrollBox mCS-dark mCSB_vertical mCSB_inside"
								style="max-height: none;" tabindex="0">
								<div id="mCSB_5_container"
									class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
									style="position:relative; top:0; left:0;" dir="ltr">
									<ul class="sidebar-level-1">
										<li class="selected"><a
											href="http://www.laredoute.cn/man.html/">男士</a>
											<ul class="sidebar-level-2">
												<li class="selected"><a
													href="http://www.laredoute.cn/man/manclothing.html/">男装</a>
													<ul class="sidebar-level-3">
														<li class=""><a
															href="http://www.laredoute.cn/man/manclothing/underwear.html/">内衣</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/manclothing/shirts.html/">衬衫</a>
														</li>
														<li class="selected"><a
															href="http://www.laredoute.cn/man/manclothing/tshirts.html/">T恤&amp;圆领衫</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/manclothing/trousers.html/">长裤</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/manclothing/jumperscardigansweat.html/">毛衣&amp;开衫&amp;POLO衫</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/manclothing/jacketsblazers.html/">夹克&amp;西服</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/manclothing/jeans.html/">牛仔裤</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/manclothing/croppedtrousers.html/">中裤&amp;短裤</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/manclothing/eaeoeae.html/">西服套装</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/-/-/-amp.html/">中裤&amp;</a>
														</li>
													</ul>
												</li>
												<li class=""><a
													href="http://www.laredoute.cn/man/shoesaccessories.html/">鞋包配饰</a>
													<ul class="sidebar-level-3">
														<li class=""><a
															href="http://www.laredoute.cn/man/shoesaccessories/mansshoes.html/">男鞋</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/shoesaccessories/accessories.html/">配饰</a>
														</li>
													</ul>
												</li>
												<li class=""><a
													href="http://www.laredoute.cn/man/plussize.html/">大尺码&amp;特殊尺码</a>
													<ul class="sidebar-level-3">
														<li class=""><a
															href="http://www.laredoute.cn/man/plussize/pyjamasdressinggowns.html/">睡衣睡袍</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/plussize/tpolo.html/">T恤&amp;POLO衫</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/plussize/coats.html/">外套</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/plussize/sweaterscardigans.html/">毛衣&amp;开衫</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/plussize/jacketssuits.html/">夹克&amp;西服</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/plussize/trousers.html/">长裤</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/plussize/croppedtrousers.html/">中裤&amp;短裤</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/plussize/jeans.html/">牛仔裤</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/plussize/swimwear.html/">泳衣</a>
														</li>
														<li class=""><a
															href="http://www.laredoute.cn/man/plussize/ae.html/">内衣</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
									</ul>
								</div>
								<div id="mCSB_5_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_5_scrollbar mCS-dark mCSB_scrollTools_vertical"
									style="display: none;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_5_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 30px; height: 0px; top: 0px;"
											oncontextmenu="return false;">
											<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div>
			
					</div>
				
				</div>
				

				<script type="text/javascript">
					var G_haq = G_haq || [];
					G_haq.push([ '_setAccount', 'laredoute.cn' ]);
					(function() {
						var ha = document.createElement('script');
						ha.type = 'text/javascript';
						ha.async = true;
						ha.src = ('https:' == document.location.protocol ? 'https://htag'
								: 'http://htag')
								+ '.haituncun.com/js/htag.js';
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
					jQuery(document)
							.ready(
									function() {
										try {
											var cookie_name = "assoc"; //rakuten
											var now = +new Date(), rakuten = Mage.Cookies
													.getSourceByKey("siteID"), src = Mage.Cookies
													.getSourceByKey("src");
											//ɾ���ϵ�cookie��ֹ�ظ�����
											Mage.Cookies.expires = (new Date(
													now - 1000));
											Mage.Cookies.set("rakuten", "");
											//phpԭʼcookie
											var cookie = 'a:6:{s:7:"user_id";N;s:9:"user_name";N;s:10:"track_code";s:0:"";s:10:"source_url";s:7:"rakuten";s:11:"usersafekey";s:0:"";s:17:"invitation_source";s:0:"";}';
											//��rakuten��ֵ���뵽���е�track_codeֵ��
											var track_len = rakuten.length;
											var track_code = rakuten;
											var replace_str = 's:10:"track_code";s:0:"";'; //track_code ���к�Ĵ���
											cookie = cookie
													.replace(
															replace_str,
															's:10:"track_code";s:'
																	+ track_len
																	+ ':"'
																	+ track_code
																	+ '";');

											//�����µ�cookie
											var expireTime = '';
											if (rakuten && src == "rakuten") {
												Mage.Cookies.expires = (new Date(
														now
																+ Number(expireTime)
																* 1000));
												Mage.Cookies.set(cookie_name,
														cookie);
											}
										} catch (err) {
										}

									});
				</script>

			</div>
							<jsp:include page="end.jsp"></jsp:include>
			<div id="back-top" class="back-top" style="display: block;">


				<div class="QR-code">
					<i class="icon icon-weibo"></i> <img class="QR-code-img"
						src="img/QR-code-weibo.png">
				</div>
				<div class="QR-code">
					<i class="icon icon-weixin"></i> <img class="QR-code-img"
						src="img/QR-code-weixin.jpg">
				</div>
				<a href="http://www.laredoute.cn/man/manclothing/tshirts.html/#top"
					class="top"><span class="top-text">TOP</span> </a>
			</div>
		</div>
	<div class="js-container" style="display: none">
		<script type="text/javascript" src="js/area.js"></script>
		<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
		<script type="text/javascript" src="js/main-common.js"></script>
		<script type="text/javascript" src="js/common.js"></script>
		<script type="text/javascript" src="js/innerPlugin.js"></script>
		<script type="text/javascript" src="js/scripts.js"></script>
		<script type="text/javascript" src="js/source-cookie.js-"></script>
		<script type="text/javascript" src="js/jquery.cookie.js"></script>
		<script type="text/javascript" src="js/index.js"></script>
		<script type="text/javascript" src="js/QtyChange.js"></script>
		<script type="text/javascript"
			src="js/jquery.mCustomScrollbar.concat.min.js"></script>
		<script type="text/javascript" src="js/product_list.js"></script>
		<script type="text/javascript" src="js/sensorsAnalytics.js"></script>
	</div>
	<div class="J-shopping-bag">
		<span class="loading"></span><span class="corner"></span>
	</div>

</body>

</html>