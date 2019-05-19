<%@page import="com.dao.Cookiedao"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>租房信息网</title>
</head>
<link rel="stylesheet" rev="stylesheet"
	href="css/Zufang_Web_List_FilterList.css" type="text/css">
<style>
</style>
<body>
	
	<!--顶部-->
	<div class="topbar">
		<div class="header-center clearfix">
			<ul class="nav-site clearfix">
				<li class="first"><a href="https://zhuzhou.anjuke.com/"
					_soj="navigation">首 页</a></li>
				<li><a href="https://zhu.fang.anjuke.com/" _soj="navigation">新
						房</a></li>
				<li><a href="https://zhuzhou.anjuke.com/sale/"
					_soj="navigation">二手房</a></li>
				<li><a href="https://zhu.zu.anjuke.com/" _soj="navigation">租
						房</a></li>
				<li><a href="https://haiwai.anjuke.com/" _soj="navigation">海外地产</a></li>
				<li><a href="https://zhu.fang.anjuke.com/jinrong/"
					_soj="navigation">贷 款</a></li>
				<li><a href="https://zhuzhou.anjuke.com/ask/" _soj="navigation">问
						答</a></li>
			</ul>

			<!-- 未登录 -->
			<c:if test="${empty user }">

				<!-- 用户登录 -->
				<div id="userbox" class="user">
					<div class="userlogin userblock">
						<i class="icon icon-people"></i> <a class="link" href="login.jsp"
							rel="nofollow">登录</a> <a class="link" href="login.jsp"
							rel="nofollow">注册</a>
					</div>
				</div>
			</c:if>

			<!-- 登录 -->
			<c:if test="${not empty user }">
				<!--登录之后-->
				<div id="userbox" class="user">
					<div class="userlogin userblock userblockfirst">
						<i class="icon icon-people"></i> <a class="link"
							href="userinfo.jsp" rel="nofollow" title="义务教育">${user.username }</a>
						<i class="triangle-down"></i>
						<div>
							<ul style="display: none;" id="smallul" onmouseover="showul()"
								onmouseout="noneul()">
								<li>我的消息</li>
								<li>我的问答</li>
								<li>看房记录</li>
								<li class="hr"></li>
								<li>退出</li>
							</ul>
						</div>
					</div>
			</c:if>



		</div>
		<!--end顶部-->
	</div>

	<!--安居客租房 -->
	<div class="header header-center clearfix">
		<a class="logo" href="https://zhuzhou.anjuke.com/" title="安居客株洲房产网">
			<img alt="" src="image/logo.jpg">
		</a> <a class="logo-site">租房</a>
		<div class="cityselect">
			<div id="switch_apf_id_5" class="city-view"
				onmouseover="switch_apf_id_5_hover()"
				onmouseout="switch_apf_id_5_out()">
				株洲<i class="iconfont triangle-down"></i>
			</div>
			<!--city列表start-->
			<div id="city_list" class="city-list" style="display:none;"
				onmouseover="switch_apf_id_5_hover()"
				onmouseout="switch_apf_id_5_out()">
				<dl>
					<dt>华北东北</dt>
					<dd>
						<a href="https://bj.zu.anjuke.com/" title="北京租房网">北京</a> <a
							href="https://tj.zu.anjuke.com/" title="天津租房网">天津</a> <a
							href="https://dl.zu.anjuke.com/" title="大连租房网">大连</a> <a
							href="https://sjz.zu.anjuke.com/" title="石家庄租房网">石家庄</a> <a
							href="https://heb.zu.anjuke.com/" title="哈尔滨租房网">哈尔滨</a> <a
							href="https://sy.zu.anjuke.com/" title="沈阳租房网">沈阳</a> <a
							href="https://ty.zu.anjuke.com/" title="太原租房网">太原</a> <a
							href="https://cc.zu.anjuke.com/" title="长春租房网">长春</a> <a
							href="https://wei.zu.anjuke.com/" title="威海租房网">威海</a> <a
							href="https://wf.zu.anjuke.com/" title="潍坊租房网">潍坊</a> <a
							href="https://hhht.zu.anjuke.com/" title="呼和浩特租房网">呼和浩特</a> <a
							href="https://bt.zu.anjuke.com/" title="包头租房网">包头</a>
					</dd>
				</dl>

				<dl>
					<dt>华东地区</dt>
					<dd>
						<a href="https://sh.zu.anjuke.com/" title="上海租房网">上海</a> <a
							href="https://hz.zu.anjuke.com/" title="杭州租房网">杭州</a> <a
							href="https://su.zu.anjuke.com/" title="苏州租房网">苏州</a> <a
							href="https://nj.zu.anjuke.com/" title="南京租房网">南京</a> <a
							href="https://wx.zu.anjuke.com/" title="无锡租房网">无锡</a> <a
							href="https://jn.zu.anjuke.com/" title="济南租房网">济南</a> <a
							href="https://qd.zu.anjuke.com/" title="青岛租房网">青岛</a> <a
							href="https://ks.zu.anjuke.com/" title="昆山租房网">昆山</a> <a
							href="https://nb.zu.anjuke.com/" title="宁波租房网">宁波</a> <a
							href="https://nc.zu.anjuke.com/" title="南昌租房网">南昌</a> <a
							href="https://fz.zu.anjuke.com/" title="福州租房网">福州</a> <a
							href="https://hf.zu.anjuke.com/" title="合肥租房网">合肥</a> <a
							href="https://xz.zu.anjuke.com/" title="徐州租房网">徐州</a> <a
							href="https://zb.zu.anjuke.com/" title="淄博租房网">淄博</a>
					</dd>
				</dl>

				<dl>
					<dt>华南地区</dt>
					<dd>
						<a href="https://sz.zu.anjuke.com/" title="深圳租房网">深圳</a> <a
							href="https://gz.zu.anjuke.com/" title="广州租房网">广州</a> <a
							href="https://fs.zu.anjuke.com/" title="佛山租房网">佛山</a> <a
							href="https://cs.zu.anjuke.com/" title="长沙租房网">长沙</a> <a
							href="https://san.zu.anjuke.com/" title="三亚租房网">三亚</a> <a
							href="https://hui.zu.anjuke.com/" title="惠州租房网">惠州</a> <a
							href="https://dg.zu.anjuke.com/" title="东莞租房网">东莞</a> <a
							href="https://hk.zu.anjuke.com/" title="海口租房网">海口</a> <a
							href="https://zh.zu.anjuke.com/" title="珠海租房网">珠海</a> <a
							href="https://zs.zu.anjuke.com/" title="中山租房网">中山</a> <a
							href="https://xm.zu.anjuke.com/" title="厦门租房网">厦门</a> <a
							href="https://nn.zu.anjuke.com/" title="南宁租房网">南宁</a> <a
							href="https://qz.zu.anjuke.com/" title="泉州租房网">泉州</a> <a
							href="https://lzh.zu.anjuke.com/" title="柳州租房网">柳州</a>
					</dd>
				</dl>

				<dl>
					<dt>中西部</dt>
					<dd>
						<a href="https://cd.zu.anjuke.com/" title="成都租房网">成都</a> <a
							href="https://cq.zu.anjuke.com/" title="重庆租房网">重庆</a> <a
							href="https://wh.zu.anjuke.com/" title="武汉租房网">武汉</a> <a
							href="https://zz.zu.anjuke.com/" title="郑州租房网">郑州</a> <a
							href="https://xa.zu.anjuke.com/" title="西安租房网">西安</a> <a
							href="https://km.zu.anjuke.com/" title="昆明租房网">昆明</a> <a
							href="https://gy.zu.anjuke.com/" title="贵阳租房网">贵阳</a> <a
							href="https://lz.zu.anjuke.com/" title="兰州租房网">兰州</a> <a
							href="https://ly.zu.anjuke.com/" title="洛阳租房网">洛阳</a>
					</dd>
				</dl>
				<div class="morecity">
					<a href="https://www.anjuke.com/sy-city.html">更多城市&gt;</a>
				</div>
				<!--city列表end-->
			</div>
		</div>

		<!--搜索框-->
		<form class="search-form" id="search-form"
			action="https://zhu.zu.anjuke.com/?from=navigation" target="_self"
			method="GET">
			<input type="hidden" name="t" value="1"> <input type="hidden"
				name="from" value="0"> <input type="hidden"
				name="comm_exist" value="on"> <input type="text" name="kw"
				class="searchbar-rent" id="search-rent" placeholder="请输入小区名称、地址…"
				autocomplete="off" maxlength="100" value=""> <input
				type="submit" id="search-button" class="searchbar-button"
				hidefocus="true" value="搜索"> <i id="search-close"
				class="icon icon-close" data-tracker="delete-kw"
				style="display:none"></i>
			<div class="auto-wrap"></div>
		</form>

		<!--end中部(上)-->
	</div>

	<!--区域找房 小区-->
	<div class="nav header-center clearfix">
		<ul>
			<li><a href="https://zhu.zu.anjuke.com/" _soj="navigation"
				class=" current ">区域找房</a></li>

			<li><a href="https://zhuzhou.anjuke.com/community/"
				_soj="navigation" class="  ">小区</a></li>

			<!-- 是否显示下载app -->
			<li><a href="addgoods.jsp" _soj="navigation" class=""
				id="toRent">我要出租 <!--出现二维码-->
					<!-- <div class="personal-rent-dialog">
						<span class="arrow_box"> <i></i> <em></em>
						</span> <img class="link" src="image/rent_publish.png" />
						<p class="tip">扫码免费发布个人租房</p>
						<p class="tip">百万用户，等您出租</p>
					</div> -->
			</a></li>
		</ul>

		<!--区域找房 小区-->
	</div>

	<!--最大的盒子（从株洲房产网，到footer）-->
	<div class="w1180">
		<!-- 株洲房产网>株洲租房-->
		<div class="breadcrumbs">
			<div class="p_1180 p_crumbs">
				<a href="https://zhuzhou.anjuke.com/">株洲房产网</a> &gt; <a
					href="https://zhu.zu.anjuke.com/">株洲租房</a>
			</div>
		</div>
		<!--面包屑组件-->
		<div class="div-border items-list">
			<!--区域-->
			<div class="items">
				<span class="item-title">区域：</span> <span class="elems-l"> <a
					href="https://zhu.zu.anjuke.com/" title="全部租房"
					class="selected-item">全部</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/tianyuanb/" title="天元租房"
					class="">天元</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/hetangbc/" title="荷塘租房"
					class="">荷塘</a> <a href="https://zhu.zu.anjuke.com/fangyuan/lua/"
					title="芦淞租房" class="">芦淞</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/yunlongshifanqu/"
					title="云龙示范区租房" class="">云龙示范区</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/shifengb/" title="石峰租房"
					class="">石峰</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/xianabcdefghi/"
					title="攸县租房" class="">攸县</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/zhuzhouxianb/"
					title="株洲县租房" class="">株洲县</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/chalingb/" title="茶陵租房"
					class="">茶陵</a> <a href="https://zhu.zu.anjuke.com/fangyuan/ling/"
					title="醴陵租房" class="">醴陵</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/yanling/" title="炎陵租房"
					class="">炎陵</a>
				</span>
			</div>
			<!--租金-->
			<div class="items ">
				<span class="item-title">租金：</span> <span class="elems-l"> <a
					href="https://zhu.zu.anjuke.com/" class="selected-item"
					rel="nofollow">全部</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/zj2903/" class=""
					rel="nofollow">500元以下</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/zj2904/" class=""
					rel="nofollow">500-1000元</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/zj2905/" class=""
					rel="nofollow">1000-1500元</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/zj2906/" class=""
					rel="nofollow">1500-2000元</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/zj2907/" class=""
					rel="nofollow">2000-3000元</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/zj2908/" class=""
					rel="nofollow">3000-4500元</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/zj2909/" class=""
					rel="nofollow">4500元以上</a>
					<div class="pricecond">
						<!--两个输入框的长度width需要在加载时传入参数计算：数字长度小于等于3位时，width:24px\数字长度n大于3位时，width: 8*n px-->
						<form action="https://zhu.zu.anjuke.com/?from=navigation"
							id="price_range_form" onsubmit="">
							<input id="from-price" class="from-price" type="text"
								name="from_price" maxlength="5" value="" style="width:32px;"
								autocomplete="off" />- <input id="to-price" class="to-price"
								type="text" name="to_price" maxlength="5" value=""
								style="width:32px;" autocomplete="off"> &nbsp;<span
								class="">元</span> <input class="smit" id="pricerange_search"
								style="" type="button" value="确定">
						</form>
					</div>
				</span>
			</div>
			<!--房型-->
			<div class="items">
				<span class="item-title">房型：</span> <span class="elems-l"> <a
					href="https://zhu.zu.anjuke.com/" class="selected-item"
					rel="nofollow">全部</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/fx1/" class=""
					rel="nofollow">一室</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/fx2/" class=""
					rel="nofollow">二室</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/fx3/" class=""
					rel="nofollow">三室</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/fx4/" class=""
					rel="nofollow">四室</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/fx5/" class=""
					rel="nofollow">五室及以上</a>
				</span>
			</div>
			<div class="items">
				<span class="item-title">类型：</span> <span class="elems-l"> <a
					href="https://zhu.zu.anjuke.com/" class="selected-item"
					rel="nofollow">全部</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/x1/" class=""
					rel="nofollow">整租</a> <a
					href="https://zhu.zu.anjuke.com/fangyuan/x2/" class=""
					rel="nofollow">合租</a>
				</span>
			</div>
			<!--更多筛选-->
			<div class="search_bottom clearfix">
				<div id="condmenu">
					<ul class="condul clearfix">
						<li class="condlist_tip"><span>更多筛选：</span></li>
						<li class="condibox" onmouseover="showul1()"
							onmouseout="noneul1()"><a href="javascript:void(0);"> <span
								class="select_item"> <span class="txt"
									id="condhouseage_txt_id">房屋类型</span> <span class="icon">&nbsp;</span>
							</span>
						</a>
							<ul id="condibox_ul1">
								<li class="selected"><a href="https://zhu.zu.anjuke.com/"
									rel="nofollow">全部</a></li>
								<li class=""><a
									href="https://zhu.zu.anjuke.com/fangyuan/lx8/" rel="nofollow">普通住宅</a>
								</li>
								<li class=""><a
									href="https://zhu.zu.anjuke.com/fangyuan/lx1/" rel="nofollow">公寓</a>
								</li>
								<li class=""><a
									href="https://zhu.zu.anjuke.com/fangyuan/lx4/" rel="nofollow">别墅</a>
								</li>
								<li class=""><a
									href="https://zhu.zu.anjuke.com/fangyuan/lx9/" rel="nofollow">平房</a>
								</li>
								<li class=""><a
									href="https://zhu.zu.anjuke.com/fangyuan/lx6/" rel="nofollow">酒店公寓</a>
								</li>
								<li class=""><a
									href="https://zhu.zu.anjuke.com/fangyuan/lx10/" rel="nofollow">商住两用</a>
								</li>
								<li class=""><a
									href="https://zhu.zu.anjuke.com/fangyuan/lx5/" rel="nofollow">其他</a>
								</li>
							</ul></li>
						<!--朝向-->
						<li class="condibox" onmouseover="showul2()"
							onmouseout="noneul2()"><a href="javascript:void(0);"> <span
								class="select_item"> <span class="txt"
									id="condhouse_orient_txt_id">朝向</span> <span class="icon">&nbsp;</span>
							</span>
						</a>
							<ul id="condibox_ul2">
								<li class="selected"><a href="https://zhu.zu.anjuke.com/"
									rel="nofollow">全部</a></li>
								<li class=""><a
									href="https://zhu.zu.anjuke.com/fangyuan/tw12/" rel="nofollow">朝南</a>
								</li>
								<li class=""><a
									href="https://zhu.zu.anjuke.com/fangyuan/tw13/" rel="nofollow">朝北</a>
								</li>
								<li class=""><a
									href="https://zhu.zu.anjuke.com/fangyuan/tw4/" rel="nofollow">南北</a>
								</li>
								<li class=""><a
									href="https://zhu.zu.anjuke.com/fangyuan/tw14/" rel="nofollow">东西</a>
								</li>
							</ul></li>
						<!--电梯房-->
						<li id="" class="filter_check"><input type="checkbox"
							href="javascript:" id="filter_is_school_input"
							onclick="location.href=&#39;https://zhu.zu.anjuke.com/fangyuan/dtf1/&#39;"><label
							for="filter_is_school_input">电梯房</label></li>
					</ul>
				</div>
				<!--END跟多筛选-->
			</div>
			<!--end面包屑组件-->
		</div>

		<!--主模块-->
		<div class="maincontent">
			<!--左侧主体-->
			<div class="list-content" id="list-content">
				<!--标签-->
				<div class="zu-tab">
					<a href="https://zhu.zu.anjuke.com/" class="curTab">全部</a> <a
						href="https://zhu.zu.anjuke.com/fangyuan/l1/" class="lastTab">经纪人房源</a>
					<a href="https://zhu.zu.anjuke.com/fangyuan/l2/" class="lastTab">个人房源</a>
				</div>
				<div class="zu-sort">
					<span class="tit">为您找到<em>株洲</em>附近的租房
					</span>
					<div class="sort-cond">
						<span>排序 ：</span>
						<c:if test="${empty map.rent && empty map.time }">
							<a
								href="javascript:void(0)"
								class="light">默认</a>
						</c:if>
						<c:if test="${not empty map.rent || not empty map.time }">
							<a
								href="goods.do?method=fenye&page=1&size=${map.size}&rent=&time="
								class="">默认</a>
						</c:if>
						<!-- 租金升序 -->
						<c:if test="${map.rent=='up' }">
							<a
								href="goods.do?method=fenye&page=1&size=${map.size}&rent=down&time="
								class="light">租金<i class="icon icon-arrup-org"></i></a>
						</c:if>
						<!-- 租金降序 -->
						<c:if test="${map.rent=='down' }">
							<a
								href="goods.do?method=fenye&page=1&size=${map.size}&rent=up&time="
								class="light">租金<i class="icon icon-arrdown-org"></i></a>
						</c:if>
						<!-- 租金默认 -->
						<c:if test="${empty map.rent }">
							<a
								href="goods.do?method=fenye&page=1&size=${map.size}&rent=up&time="
								class="">租金<i class="icon icon-arrup"></i></a>
						</c:if>

						<!-- 最新默认 -->
						<c:if test="${empty map.time }">
							<a
								href="goods.do?method=fenye&page=1&size=${map.size}&rent=&time=down"
								class="">最新<i class="icon icon-arrdown"></i></a>
						</c:if>
						<!-- 最新升序 -->
						<c:if test="${map.time=='up' }">
							<a
								href="goods.do?method=fenye&page=1&size=${map.size}&rent=&time=down"
								class="light">最新<i class="icon icon-arrup-org"></i></a>
						</c:if>
						<!-- 最新降序 -->
						<c:if test="${map.time=='down' }">
							<a
								href="goods.do?method=fenye&page=1&size=${map.size}&rent=&time=up"
								class="light">最新<i class="icon icon-arrdown-org"></i></a>
						</c:if>

						<!--icon-arrup-org icon-arrdown-org为高亮箭头-->
					</div>
				</div>
				<!--房源列表豆腐块-->
				<!--<div id="biggdiv">
					<c:forEach items="${map.list}" var="house">
						<div id="smalldiv">${house.id}${house.describe2}</div>
					</c:forEach>
				</div> -->

				<c:forEach items="${map.list }" var="house">
					<!--区域板块租房房源列表页-->
					<div class="zu-itemmod" _soj="Filter_1&amp;hfilter=filterlist"
						onmouseover="changecolor(this)" onmouseout="changecolor2(this)">
						<a data-company="" class="img"
							_soj="Filter_1&amp;hfilter=filterlist" data-sign="true"
							href="goods.do?method=findbyid&houseid=${house.id }"
							title="${house.titlee }" alt="${house.titlee }" target="_blank"
							hidefocus="true"> <img class="thumbnail"
							src="image/${house.firstpic }" alt="${house.titlee }" width="180"
							height="135"> <span class="many-icons iconfont"></span>

						</a>
						<div class="zu-info">
							<h3>
								<a target="_blank" title="${house.titlee }"
									_soj="Filter_1&amp;hfilter=filterlist"
									href="goods.do?method=findbyid&houseid=${house.id } ">${house.titlee }</a>
							</h3>
							<p class="details-item tag">
								${house.roomnumber }室${house.livingnumber }厅<span>|</span>${house.totalarea}平米<span>|</span>${house.floor}/${house.totalfloor}层<i
									class="iconfont jjr-icon"></i>${house.owner}
							</p>
							<address class="details-item">
								<a target="_blank"
									href="https://zhuzhou.anjuke.com/community/view/964405">${house.community}</a>&nbsp;&nbsp;
								${house.time}
							</address>
							<p class="details-item bot-tag clearfix">
								<span class="cls-1">${house.whole}</span> <span class="cls-2">${house.dicrection}</span>
							</p>
						</div>
						<div class="zu-side">
							<p>
								<strong>${house.rent}</strong> 元/月
							</p>
						</div>
						<!--end第一块豆腐-->
					</div>
				</c:forEach>

				<!--end list content-->
			</div>

			<!--右侧广告-->
			<div class="adver-content">

				<!--END右侧广告-->
			</div>

			<!--翻页-->
			<center>
				<div class="page-content">
					<div class="multi-page">
						<c:if test="${map.page==1 }">
							<a href="javascript:void(0)" class="aPre">上一页</a>
						</c:if>
						<c:if test="${map.page!=1 }">
							<a
								href="goods.do?method=fenye&page=${map.page-1 }&size=${map.size}&rent=${map.rent }&time=${map.time}"
								class="aPre">上一页</a>
						</c:if>
						<c:set var="flag" value="0"></c:set>
						<c:forEach begin="1" end="${map.pagecount}" var="i">
							<c:if test="${flag==0 }">
								<c:if test="${i!=map.page }">
									<a
										href="goods.do?method=fenye&page=${i }&size=${map.size}&rent=${map.rent }&time=${map.time}">${i }</a>
								</c:if>
								<c:if test="${i==map.page }">
									<a href="javascript:void(0)"
										style="background: #5a9b01;color:#fff;border: 1px solid #89c040">${i }</a>
								</c:if>
							</c:if>
							<c:if test="${i==5 }">
								<c:set var="flag" value="1"></c:set>
							</c:if>
						</c:forEach>

						<i class="aDotted">...</i>
						<c:if test="${map.page==map.pagecount }">
							<a href="javascript:void(0)" class="aNxt" style="width: 75px">下一页
								&gt;</a>
						</c:if>
						<c:if test="${map.page!=map.pagecount }">
							<a
								href="goods.do?method=fenye&page=${map.page+1 }&size=${map.size}&rent=${map.rent }&time=${map.time}"
								class="aNxt" style="width: 75px">下一页 &gt;</a>
						</c:if>
						<span
							style="font-family: Tahoma;color: #666;line-height: 29px;font-size: 15px">&nbsp;共${map.pagecount }页</span>
						<input type="text" value="${map.page }" id="page"
							style="width: 50px;border:1px solid #ccc;height: 27px;font-family: Tahoma;color: #666;line-height: 29px;font-size: 13px ;    text-align: center">
						<input type="button" value="跳转" onclick="go()"
							style="cursor:pointer; background: #5a9b01; width: 50px;border:1px solid #89c040;height: 27px;font-family: Tahoma;color: #fff;line-height: 29px; font-size: 14px;font-weight: 650;text-align: center"">
					</div>
				</div>
			</center>

			<!--END主模块-->
		</div>
		<p class="guesslike-title">猜你喜欢</p>
		<!--底部其他推荐-->
		<ul id="guesslike-content" class="guesslike-content clearfix"
			style="display: block;">
			<c:forEach items="${history }" var="his">
				<li>
					<img src="image/${his.firstpic }" alt="租房2000元/月"
						width="180px" height="135px">
					<a
				href="goods.do?method=findbyid&houseid=${his.id }"
				class="guesslike-itemtitle" title=${his.titlee }
				target="_blank" _soj="home_rent_list_rec">${his.titlee }</a>
				<p class="guesslike-itemprice">${his.rent }元/月</p>
				<p class="guesslike-itemdetail">${his.roomnumber }室${his.livingnumber }厅，精装修</p>
				<p class="guesslike-itemcommunity">${his.community }</p></li>	
				</li>
			</c:forEach>
			

			<!--end底部其他推荐-->
		</ul>
		<!--简介tips-->
		<p class="seo-tips">
			株洲租房网频道，为您提供株洲租房子、株洲房屋出租信息，其中包<a
				href="https://zhu.zu.anjuke.com/geren-zufang/">株洲个人租房</a>、中介出租房，<a
				href="https://zhu.zu.anjuke.com/hezu-zufang/">株洲合租房</a>、<a
				href="https://zhu.zu.anjuke.com/bieshu-zufang/">株洲别墅出租</a>、<a
				href="https://zhu.zu.anjuke.com/gongyu-zufang/">株洲公寓出租</a>，户型方面也可以挑选<a
				href="https://zhu.zu.anjuke.com/yijushi-zufang/">株洲一居室租房</a>、<a
				href="https://zhu.zu.anjuke.com/erjushi-zufang/">株洲二居室租房</a>、<a
				href="https://zhu.zu.anjuke.com/sanjushi-zufang/">株洲三居室租房</a>、<a
				href="https://zhu.zu.anjuke.com/sijushi-zufang/">株洲四居室租房</a>、<a
				href="https://zhu.zu.anjuke.com/wujushi-zufang/">株洲五居室租房</a>，装修方面也可以挑选<a
				href="https://zhu.zu.anjuke.com/maopi-zufang/">株洲毛坯租房</a>、<a
				href="https://zhu.zu.anjuke.com/jianzhuang-zufang/">株洲简单装修租房</a>、<a
				href="https://zhu.zu.anjuke.com/zhongzhuang-zufang/">株洲中等装修租房</a>、<a
				href="https://zhu.zu.anjuke.com/jingzhuang-zufang/">株洲精装修租房</a>、<a
				href="https://zhu.zu.anjuke.com/haozhuang-zufang/">株洲豪华装修租房</a>信息。您可以在这里找株洲租房信息、了解租房价格，也可以在这里发布房屋出租信息。手机版：<a
				href="https://m.anjuke.com/zhu/rent/">株洲租房</a> <a target="_blank"
				href="https://zhuzhou.gongjijin.anjuke.com/">株洲公积金</a> <a
				target="_blank" href="https://www.anjuke.com/zhuzhou/">株洲房产网</a> <a
				target="_blank" href="https://www.anjuke.com/zhuzhou/ershoufang/">株洲二手房网</a>
			<a target="_blank" href="https://www.anjuke.com/zhuzhou/zufang/">株洲租房网</a>
			<a href="https://zhu.zu.anjuke.com/zujin/">株洲租金</a>
		</p>
		<!--内链-->
		<div id="seo-box">
			<ul class="parent-1 ">
				<li class="tab-1 has-subitem"><a class="tab1-a"
					href="javascript:void(0)" target="_blank">租房直达</a>
					<ul class="parent-2 btn-show ">
						<li class="tab-2 has-subitem"><a class=" current-tab"
							href="javascript:void(0)" target="_blank">天元</a></li>
						<li class="tab-2 has-subitem"><a class=""
							href="javascript:void(0)" target="_blank">荷塘</a></li>
						<li class="tab-2 has-subitem"><a class=""
							href="javascript:void(0)" target="_blank">芦淞</a></li>
						<li class="tab-2 has-subitem"><a class=""
							href="javascript:void(0)" target="_blank">石峰</a></li>
						<li class="tab-2 has-subitem"><a class=""
							href="javascript:void(0)" target="_blank">攸县</a></li>
						<li class="tab-2 has-subitem"><a class=""
							href="javascript:void(0)" target="_blank">株洲县</a></li>
						<li class="tab-2 has-subitem"><a class=""
							href="javascript:void(0)" target="_blank">茶陵</a></li>
						<li class="tab-2 has-subitem"><a class=""
							href="javascript:void(0)" target="_blank">醴陵</a></li>
						<li class="tab-2 has-subitem"><a class=""
							href="javascript:void(0)" target="_blank">炎陵</a></li>
						<ul class="parent-3 btn-show ">
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/chagnjiangbeilu/"
								target="_blank">长江北路租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/majiahe/"
								target="_blank">马家河租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/gongyedaxueb/"
								target="_blank">工业大学租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/taishanguangchang/"
								target="_blank">泰山广场租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/liyu/" target="_blank">栗雨租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/shengnongguangchang/"
								target="_blank">神农广场租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/wuguanggaotie/"
								target="_blank">武广高铁租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/tianyuanzhoubian/"
								target="_blank">天元周边租房</a></li>
						</ul>
						<ul class="parent-3 ">
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/tianehugongyuan/"
								target="_blank">天鹅湖公园租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/xinhuadonglu/"
								target="_blank">新华东路租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/songjiaqiao/"
								target="_blank">宋家桥租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/donghub/"
								target="_blank">东湖租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/gongxueyuan/"
								target="_blank">工学院租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/shiweidangxiao/"
								target="_blank">市委党校租房</a></li>
						</ul>
						<ul class="parent-3 ">
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/qingyunshan/"
								target="_blank">庆云山租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/shenlonggongyuan/"
								target="_blank">神龙公园租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/longquanb/"
								target="_blank">龙泉租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/lusongzhoubian/"
								target="_blank">芦淞周边租房</a></li>
						</ul>
						<ul class="parent-3 ">
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/xiaodongmenb/"
								target="_blank">小东门租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/shifengab/"
								target="_blank">石峰公园租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/mianhuzhou/"
								target="_blank">棉湖洲租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/jinlongb/"
								target="_blank">井龙租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/tianqiaojie/"
								target="_blank">天桥街租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/zhuyejituan/"
								target="_blank">株冶集团租房</a></li>
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/fangtehuanleshijie/"
								target="_blank">方特欢乐世界租房</a></li>
						</ul>
						<ul class="parent-3 ">
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/xianabcdefghij/"
								target="_blank">攸县租房</a></li>
						</ul>
						<ul class="parent-3 ">
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/zhuzhouxianab/"
								target="_blank">株洲县租房</a></li>
						</ul>
						<ul class="parent-3 ">
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/chalingab/"
								target="_blank">茶陵租房</a></li>
						</ul>
						<ul class="parent-3 ">
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/linga/" target="_blank">醴陵租房</a></li>
						</ul>
						<ul class="parent-3 ">
							<li class="tab-3"><a class=""
								href="https://zhu.zu.anjuke.com/fangyuan/yanlinga/"
								target="_blank">炎陵租房</a></li>
						</ul>
					</ul></li>
				<li class="tab-1 has-subitem"><a class="tab1-a"
					href="javascript:void(0)" target="_blank">推荐城市租房</a>
					<ul class="parent-2 ">
						<li class="tab-2"><a class=""
							href="https://jdz.zu.anjuke.com/" target="_blank">景德镇租房</a></li>
						<li class="tab-2"><a class=""
							href="https://ja.zu.anjuke.com/" target="_blank">吉安租房</a></li>
						<li class="tab-2"><a class=""
							href="https://pzh.zu.anjuke.com/" target="_blank">攀枝花租房</a></li>
						<li class="tab-2"><a class=""
							href="https://lu.zu.anjuke.com/" target="_blank">泸州租房</a></li>
						<li class="tab-2"><a class=""
							href="https://de.zu.anjuke.com/" target="_blank">德阳租房</a></li>
						<li class="tab-2"><a class=""
							href="https://nan.zu.anjuke.com/" target="_blank">南充租房</a></li>
						<li class="tab-2"><a class=""
							href="https://ga.zu.anjuke.com/" target="_blank">广安租房</a></li>
						<li class="tab-2"><a class=""
							href="https://qj.zu.anjuke.com/" target="_blank">曲靖租房</a></li>
						<li class="tab-2"><a class=""
							href="https://lj.zu.anjuke.com/" target="_blank">丽江租房</a></li>
						<li class="tab-2"><a class=""
							href="https://da.zu.anjuke.com/" target="_blank">大理租房</a></li>
						<li class="tab-2"><a class=""
							href="https://wlmq.zu.anjuke.com/" target="_blank">乌鲁木齐租房</a></li>
						<li class="tab-2"><a class=""
							href="https://hy.zu.anjuke.com/" target="_blank">衡阳租房</a></li>
						<li class="tab-2"><a class=""
							href="https://ny.zu.anjuke.com/" target="_blank">南阳租房</a></li>
						<li class="tab-2"><a class=""
							href="https://ay.zu.anjuke.com/" target="_blank">安阳租房</a></li>
						<li class="tab-2"><a class=""
							href="https://pds.zu.anjuke.com/" target="_blank">平顶山租房</a></li>
						<li class="tab-2"><a class=""
							href="https://bao.zu.anjuke.com/" target="_blank">宝鸡租房</a></li>
						<li class="tab-2"><a class=""
							href="https://xiang.zu.anjuke.com/" target="_blank">湘潭租房</a></li>
						<li class="tab-2"><a class=""
							href="https://xy.zu.anjuke.com/" target="_blank">襄阳租房</a></li>
						<li class="tab-2"><a class=""
							href="https://shi.zu.anjuke.com/" target="_blank">十堰租房</a></li>
					</ul></li>
				<li class="tab-1 has-subitem"><a class="tab1-a"
					href="javascript:void(0)" target="_blank">热门城市租房</a>
					<ul class="parent-2 ">
						<li class="tab-2"><a class=""
							href="https://sh.zu.anjuke.com/" target="_blank">上海租房</a></li>
						<li class="tab-2"><a class=""
							href="https://bj.zu.anjuke.com/" target="_blank">北京租房</a></li>
						<li class="tab-2"><a class=""
							href="https://gz.zu.anjuke.com/" target="_blank">广州租房</a></li>
						<li class="tab-2"><a class=""
							href="https://sz.zu.anjuke.com/" target="_blank">深圳租房</a></li>
						<li class="tab-2"><a class=""
							href="https://hz.zu.anjuke.com/" target="_blank">杭州租房</a></li>
						<li class="tab-2"><a class=""
							href="https://cq.zu.anjuke.com/" target="_blank">重庆租房</a></li>
						<li class="tab-2"><a class=""
							href="https://wh.zu.anjuke.com/" target="_blank">武汉租房</a></li>
						<li class="tab-2"><a class=""
							href="https://nj.zu.anjuke.com/" target="_blank">南京租房</a></li>
						<li class="tab-2"><a class=""
							href="https://tj.zu.anjuke.com/" target="_blank">天津租房</a></li>
						<li class="tab-2"><a class=""
							href="https://su.zu.anjuke.com/" target="_blank">苏州租房</a></li>
					</ul></li>
				<li class="tab-1 has-subitem"><a class="tab1-a"
					href="javascript:void(0)" target="_blank">热门城市二手房</a>
					<ul class="parent-2 ">
						<li class="tab-2"><a class=""
							href="https://shanghai.anjuke.com/sale/" target="_blank">上海二手房</a></li>
						<li class="tab-2"><a class=""
							href="https://beijing.anjuke.com/sale/" target="_blank">北京二手房</a></li>
						<li class="tab-2"><a class=""
							href="https://guangzhou.anjuke.com/sale/" target="_blank">广州二手房</a></li>
						<li class="tab-2"><a class=""
							href="https://shenzhen.anjuke.com/sale/" target="_blank">深圳二手房</a></li>
						<li class="tab-2"><a class=""
							href="https://hangzhou.anjuke.com/sale/" target="_blank">杭州二手房</a></li>
						<li class="tab-2"><a class=""
							href="https://chongqing.anjuke.com/sale/" target="_blank">重庆二手房</a></li>
						<li class="tab-2"><a class=""
							href="https://wuhan.anjuke.com/sale/" target="_blank">武汉二手房</a></li>
						<li class="tab-2"><a class=""
							href="https://nanjing.anjuke.com/sale/" target="_blank">南京二手房</a></li>
						<li class="tab-2"><a class=""
							href="https://tianjin.anjuke.com/sale/" target="_blank">天津二手房</a></li>
						<li class="tab-2"><a class=""
							href="https://suzhou.anjuke.com/sale/" target="_blank">苏州二手房</a></li>
					</ul></li>
				<li class="tab-1 has-subitem no-btm-border"><a class="tab1-a"
					href="javascript:void(0)" target="_blank">热门城市新房</a>
					<ul class="parent-2 ">
						<li class="tab-2"><a class=""
							href="https://sh.fang.anjuke.com/" target="_blank">上海新房</a></li>
						<li class="tab-2"><a class=""
							href="https://bj.fang.anjuke.com/" target="_blank">北京新房</a></li>
						<li class="tab-2"><a class=""
							href="https://gz.fang.anjuke.com/" target="_blank">广州新房</a></li>
						<li class="tab-2"><a class=""
							href="https://sz.fang.anjuke.com/" target="_blank">深圳新房</a></li>
						<li class="tab-2"><a class=""
							href="https://hz.fang.anjuke.com/" target="_blank">杭州新房</a></li>
						<li class="tab-2"><a class=""
							href="https://cq.fang.anjuke.com/" target="_blank">重庆新房</a></li>
						<li class="tab-2"><a class=""
							href="https://wh.fang.anjuke.com/" target="_blank">武汉新房</a></li>
						<li class="tab-2"><a class=""
							href="https://nj.fang.anjuke.com/" target="_blank">南京新房</a></li>
						<li class="tab-2"><a class=""
							href="https://tj.fang.anjuke.com/" target="_blank">天津新房</a></li>
						<li class="tab-2"><a class=""
							href="https://su.fang.anjuke.com/" target="_blank">苏州新房</a></li>
					</ul></li>
			</ul>
		</div>
		<div class="partner">
			<h5 class="partner-title">合作伙伴:</h5>
			<ul class="partner-cont">
				<li><a href="http://zhuzhou.58.com/zufang/" target="_blank">株洲租房</a></li>
				<li><a href="http://zhuzhou.yi.xbaixing.com/" target="_blank">株洲免费建站</a></li>
				<li><a href="http://zhuzhou.98znz.com/rent/" target="_blank">株洲租房</a></li>
				<li><a href="http://zhuzhou.cncn.com/jingdian/" target="_blank">株洲旅游景点推荐</a></li>
				<li><a href="http://zhuzhou.ssjzw.com/" target="_blank">株洲兼职网</a></li>
				<li><a href="http://zhuzhou.jiwu.com/loupan/" target="_blank">株洲楼盘</a></li>
				<li><a href="http://zhuzhou.tianqi.com/15/" target="_blank">株洲15天天气</a></li>
				<li><a href="http://zhuzhou.renrzx.com/" target="_blank">株洲装修
				</a></li>
				<li><a href="http://zhuzhou.baixing.com/zhengzu/"
					target="_blank">株洲租房</a></li>
				<li><a href="http://zhuzhou.zu.loupan.com/" target="_blank">株洲租房</a></li>
				<li><a href="http://www.guazi.com/zhuzhou/" target="_blank">株洲二手车</a></li>
			</ul>
		</div>
		<!-- END最大的盒子（从株洲房产网，到footer）-->
	</div>
	<!--footer-->
	<div id="footer" class="footer">
		<ul class="links">
			<li><a rel="nofollow"
				href="https://kfzx.anjuke.com/faqList/defaultQue?faqKinds=2">关于安居客</a>
				<em class="spe-lines">|</em></li>
			<li><a rel="nofollow"
				href="https://kfzx.anjuke.com/faqDetail/queryDetail?faqId=95&amp;faqTypeId=11">联系我们</a>
				<em class="spe-lines">|</em></li>
			<li><a rel="nofollow"
				href="https://kfzx.anjuke.com/faqDetail/queryDetail?faqId=104&amp;faqTypeId=10">用户协议</a>
				<em class="spe-lines">|</em></li>
			<li><a href="javascript:void(0);" data-target="loan_link">房贷计算器</a>
				<em class="spe-lines">|</em></li>
			<li><a href="javascript:void(0);" data-target="seo_qa">最新问答</a>
				<em class="spe-lines">|</em></li>
			<li><a href="javascript:void(0);" data-target="map_link">网站地图</a>
				<em class="spe-lines">|</em></li>
			<li><a href="javascript:void(0);" data-target="house_link"
				onclick="showhouse_link()">最新房源</a> <em class="spe-lines">|</em></li>
			<li><a href="javascript:void(0);" data-target="other_city">其它城市</a>
				<em class="spe-lines">|</em></li>
			<li><a rel="nofollow"
				href="https://zhuzhou.anjuke.com/friendlink">友情链接</a> <em
				class="spe-lines">|</em></li>
			<li><a rel="nofollow" target="_blank"
				href="http://www.zx110.org/cxs/index.html">放心搜</a> <em
				class="spe-lines">|</em></li>
			<li><a rel="nofollow" target="_blank"
				href="https://about.anjuke.com/chanpin/?from=home_foot_tgy">推广服务</a>
				<em class="spe-lines">|</em></li>
			<li><a rel="nofollow" target="_blank"
				href="https://biz.anjuke.com/biz/index">渠道招商</a></li>
		</ul>



		<div id="house_link" class="show-mod house-link">
			<ul>
				<li><a href="https://zhuzhou.anjuke.com/fang/" target="_blank">二手房</a></li>
				<li><a href="https://zhu.zu.anjuke.com/fang/" target="_blank">租房</a></li>
				<li><a href="https://m.anjuke.com/zhu/propsitemap/esf/"
					target="_blank">手机版二手房</a></li>
				<li><a href="https://m.anjuke.com/zhu/propsitemap/zf/"
					target="_blank">手机版租房</a></li>
			</ul>
		</div>
		<div class="cp-mod">
			<a rel="nofollow" href="https://kfzx.anjuke.com/" target="_blank">客户服务中心</a>
			邮箱：<a href="mailto:service@58ganji.com" target="_blank"
				rel="nofollow">service@58ganji.com</a>
			Copyright&nbsp;©&nbsp;2007-2018 www.anjuke.com All Rights Reserved <a
				href="http://www.miibeian.gov.cn/" rel="nofollow">ICP号：沪
				B2-20090008</a>
		</div>

		<!--end footer-->
	</div>
	<!--支持效果的js文件-->
	<!--<script type="text/javascript" crossorigin="" src="css/Zufang_Web_List_FilterList.js.下载"></script>-->
</body>

<script>
		function switch_apf_id_5_hover(){
			var a=document.getElementById("city_list");
			a.style.display="block";
		}
		function switch_apf_id_5_out(){
			var a=document.getElementById("city_list");
			a.style.display="none";
		}
		function showul1(){
			var a=document.getElementById("condibox_ul1")
			a.style.display="block";
		}
		function noneul1(){
			var a=document.getElementById("condibox_ul1")
			a.style.display="none";
		}
		function showul2(){
			var a=document.getElementById("condibox_ul2")
			a.style.display="block";
		}
		function noneul2(){
			var a=document.getElementById("condibox_ul2")
			a.style.display="none";
		}
		var houselink_flag=true;
		function showhouse_link(){
			var a=document.getElementById("house_link");
			if(houselink_flag){
				a.style.display="block";
				houselink_flag=false;
			}else{
				a.style.display="none";
				houselink_flag=true;
			}
		}
		
		function showul(){
			var a = document.getElementById("smallul");
			a.style.display="block";
		}
		function noneul(){
			var a = document.getElementById("smallul");
			a.style.display="none";
		}
		
		function changecolor(obj){
			obj.className="zu-itemmod zu-over";
		}
		
		function changecolor2(obj){
			obj.className="zu-itemmod";
		}
		function go(){
			var page = document.getElementById("page").value;
			location = "goods.do?method=fenye&page=" + page + "&size=${map.size}&rent=${map.rent }&time=${map.time}";
		}
	</script>

</html>
