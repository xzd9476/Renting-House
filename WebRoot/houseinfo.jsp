<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>${house.titlee }</title>
	</head>
	<link rel="stylesheet" rev="stylesheet" href="css/houseinfo.css" type="text/css">
	<style>
		.addcollect{
			cursor:pointer;
			background: #f60;;
			color: #fff;
			font-size: 20px;
			font-weight: bold;
			line-height: 51px;
			padding: 0px 15px 0px 15px;
			text-align: center;
			display: inline-block;
			vertical-align: top;
			border-radius: 4px 4px 4px 4px;
			letter-spacing: 2px;
			margin: 5px 130px auto;
		}
		.addcollect:hover{
		background: #cb4600;
	}
	.okclct{
		 	width: 250px;
            height: 160px;
            border: 1px solid #000;
            margin:auto;
            position:absolute;
            background: #62ab00;
            /*background-image:url(img/loding.gif) ;*/
            left:0;
            right:0;
            bottom:0;
            top:0;
            z-index: 99;
            overflow: hidden;
            border: 0px;
            border-radius: 4px 4px 4px 4px;
            filter:alpha(Opacity=50);
			-moz-opacity:0.9;
			opacity: 0.9;
			position: fixed;
			display: none;
	}
	.wenzi{
		/*text-align: center;*/
		width: 250px;
		height: 80%;
		margin:16px 0px 0px 0px;
		background: white; 
		letter-spacing: 2px;
		overflow: hidden;
		position: absolute;
	}
	.wenzi img{
		width: 250px;
		height: 100%;
	}
	</style>
	<body>
		<div class="okclct" id="occlctt">
			<div class="wenzi"><img src="image/okclct.gif"/></div>
		</div>
		<div class="navhead">
			<div class="header-center clearfix">
				<!-- LOGO -->
				<a href="index.jsp" class="logo">anjuke</a>

				<!-- Navigation -->
				<div class="cityselect">
					<div id="switch_apf_id_5" class="city-view">
						株洲<i class="iconfont triangle-down"></i>
					</div>
				</div>
				<ul class="navigation" id="navigation">
					<li class="">
						<a class="nav-lv1" href="https://zhuzhou.anjuke.com/" _soj="navigation">首 页</a>
					</li>
					<li class="">
						<a class="nav-lv1" href="https://zhu.fang.anjuke.com/" _soj="navigation">新 房</a>
						<ul class="xf">
							<li class="nav-triangle" style="left: 22.5px;"><span></span></li>
							<li>
								<a href="https://zhu.fang.anjuke.com/loupan/" _soj="navigation">
									新盘 </a>
							</li>
							<li>
								<a href="https://zhu.news.anjuke.com/" _soj="navigation">
									楼讯 </a>
							</li>
							<li>
								<a href="https://zhu.fang.anjuke.com/hui/" _soj="navigation">
									热门活动 </a>
							</li>
							<li>
								<a href="https://zhu.fang.anjuke.com/kft/" _soj="navigation">
									看房团 </a>
							</li>
							<li>
								<a href="https://zhu.fang.anjuke.com/fangyuan/" _soj="navigation">
									房源 </a>
							</li>
							<li>
								<a href="https://zhu.fang.anjuke.com/commercial/" _soj="navigation">
									商业地产 </a>
							</li>
							<li>
								<a href="https://haiwai.anjuke.com/" _soj="navigation">
									海外地产 </a>
							</li>
							<li>
								<a href="https://zhu.fang.anjuke.com/jinrong/" _soj="navigation">
									贷款 </a>
							</li>
							<li>
								<a href="https://zhu.fang.anjuke.com/brand/list/" _soj="navigation">
									品牌专区 </a>
							</li>
						</ul>
					</li>
					<li class="">
						<a class="nav-lv1" href="https://zhuzhou.anjuke.com/sale/" _soj="navigation">二手房</a>
						<ul class="">
							<li class="nav-triangle" style="left: 28px;"><span></span></li>
							<li>
								<a href="https://zhuzhou.anjuke.com/sale/" _soj="navigation">
									房源 </a>
							</li>
							<li>
								<a href="https://zhuzhou.anjuke.com/community/" _soj="navigation">
									小区 </a>
							</li>
							<li>
								<a href="https://www.anjuke.com/topic/" _soj="navigation">
									主题找房 </a>
							</li>
							<li>
								<a href="https://zhuzhou.anjuke.com/tycoon/" _soj="navigation">
									找经纪人 </a>
							</li>
							<li>
								<a href="https://zhuzhou.anjuke.com/tycoon/weiguijingjiren/" _soj="navigation">
									违规经纪人 </a>
							</li>
							<li>
								<a href="https://zhuzhou.anjuke.com/propsale/" _soj="navigation">
									闪电卖房 </a>
							</li>
						</ul>
					</li>
					<li class="current">
						<a class="nav-lv1" href="https://zhu.zu.anjuke.com/" _soj="navigation">租 房</a>
						<ul class="">
							<li class="nav-triangle" style="left: 22.5px;"><span></span></li>
							<li>
								<a href="https://zhu.zu.anjuke.com/" _soj="navigation">
									区域找房 </a>
							</li>
							<li>
								<a href="https://zhuzhou.anjuke.com/community/" _soj="navigation">
									小区 </a>
							</li>
						</ul>
					</li>
					<li class="">
						<a class="nav-lv1" href="https://haiwai.anjuke.com/" _soj="navigation">海外地产</a>
					</li>
					<li class="">
						<a class="nav-lv1" href="https://zhu.fang.anjuke.com/jinrong/" _soj="navigation">贷 款</a>
					</li>
					<li class="">
						<a class="nav-lv1" href="https://zhuzhou.anjuke.com/ask/" _soj="navigation">问 答</a>
					</li>
				</ul>

				<!-- UserLogin Pc_Common_HeaderNavComponent-->
				<div class="nav-right">
					<div id="user_box" class="userbox">
						<c:if test="${empty user }">
							<i class="icon icon-user"></i>
							<a href="login.jsp" rel="nofollow">登录</a>
							<a href="login.jsp" rel="nofollow">注册</a>
						</c:if>
						
						<c:if test="${not empty user }">
							<i class="icon icon-user"></i>
							<a class="link" href="userinfo.jsp" rel="nofollow" title="义务教育">${user.username }</a>
							<i class="triangle-down"></i>
						</c:if>
					</div>
				</div>
			</div>
			<!--END navhead-->
		</div>

		<!--面包屑组件-->
		<div class="p_1180 p_crumbs">
			<a href="https://zhuzhou.anjuke.com/">安居客项目</a> &gt;
			<a href="https://zhuzhou.anjuke.com/">株洲安居客</a> &gt;
			<a href="https://zhu.zu.anjuke.com/">株洲租房</a> &gt;
			<a href="https://zhu.zu.anjuke.com/">天元区</a> &gt;
			<a href="https://zhu.zu.anjuke.com/fangyuan/tianyuanb/">${house.community}</a> &gt;
		</div>

		<!--大包装-->
		<div class="wrapper">
			<h3 class="house-title">${house.titlee }</h3>
			<!-- adadclct('${house.id }','${house.titlee }','${house.rent }','${house.firstpic }') -->
			<c:if test="${empty user }">
				<div class="addcollect" onclick="javascript:void(0)">登录后收藏</div>
			</c:if>
			<c:if test="${not empty user }">
				<div class="addcollect" onclick="addclct('${house.id }','${house.titlee }','${house.rent }','${house.firstpic }')">加入收藏</div>
				<script type="text/javascript">
				var time=2;
				function hiddenclct(){
					time=time-1;
					if(time==0){
						time=1;
						var a=document.getElementById("occlctt");
						a.style.display="none";
						window.clearInterval(t);
					}
				}
				function addclct(id,title,rent,firstpic){
					//'{house.id }','{house.titlee }','{house.houserent }','{house.firstpic }'
					var request=new XMLHttpRequest();
					request.open("post","collect.do?method=addcollect&userid=${user.userid}&houseid="+id+"&housetitle="+title+"&houserent="+rent+"&firstpic="+firstpic,false);
					request.onreadystatechange = function(){
						if(request.readyState == 4 && request.status == 200){
							if(request.responseText=="true"){
								var a=document.getElementById("occlctt");
								a.style.display="block";
								t=window.setInterval("hiddenclct()",700);
							}
								
						}
					}
					request.send(null)
				}
				</script>
			</c:if>
			<!--title basic info-->
			<div class="title-basic-info clearfix">
				<span class="light info-tag"><em>${house.rent }</em>元/月</span>
				<span class="info-tag">
            		<em>${house.roomnumber }</em>室<em>${house.livingnumber}</em>厅
        		</span>
				<span class="info-tag no-line"><em>${house.totalarea}</em>平方米</span>
				<ul class="title-label cf">
					<li class="title-label-item rent">${house.whole}</li>
					<li class="title-label-item buy">${house.dicrection}</li>
					<li class="title-label-item subway"></li>
				</ul>
				<!--endtitle basic info-->
			</div>

			<!--house main info -->
			<div class="mainbox cf">
				<!--left box-->
				<div class="lbox">
					<!--轮播组件 放图片-->
					<div class="switch_warpper">
						<!--switch_with_map-->
						<div class="switch_with_map">
							<div class="inner_switcher" id="inner_switcher">
								<div class="switch_mask switch_left_mask" id="switch_left_mask" data-track="pc_fydy_switch_qh">
									<i class="switch_left_btn switch_btn iconfont" id="switch_left_btn" onclick=lastpic()></i>
									<span id="prev-title">上一张</span>
								</div>

								<div class="switch_mask switch_right_mask" id="switch_right_mask" data-track="pc_fydy_switch_qh">
									<i class="switch_right_btn switch_btn iconfont" id="switch_right_btn" onclick=nextpic()></i>
									<span id="next-title">下一张</span>
								</div>

								<div class="switch_wrap" id="switch_wrap" style="left: 94px;">
									<div class="switch_list zhankeng_first" id="zhankeng_first">
										<c:forEach items="${pic}" var="picc">
											<div class="img_wrap zhankeng_img1"><img  src="image/${picc.pic }" alt="" height="450"></div>
										</c:forEach>
									</div>

									<!--所有图片-->
									<div class="switch_list" id="room_pic_wrap">
										<div class="img_wrap">
											<img data-src="https://pic1.ajkimg.com/display/hj/57bd949397e53cbfc0ad2d4ba6c68555/600x450c.jpg?t=1" src="img/240x180m(39).jpg" alt="" height="450">
										</div>
										<div class="img_wrap">
											<img data-src="https://pic1.ajkimg.com/display/hj/5a291933dddff185c14d25a346b9acd8/600x450c.jpg?t=1" src="img/240x180m(60).jpg" alt="" height="450">
										</div>
										<div class="img_wrap">
											<img data-src="https://pic1.ajkimg.com/display/hj/48f10d16421f13ba1be747d0c65754e7/600x450c.jpg?t=1" src="img/240x180m(61).jpg" alt="" height="450">
										</div>
										<div class="img_wrap">
											<img data-src="https://pic1.ajkimg.com/display/hj/819aa31960618558cfcf342614a7271e/600x450c.jpg?t=1" src="img/240x180m(62).jpg" alt="" height="450">
										</div>
										<div class="img_wrap">
											<img data-src="https://pic1.ajkimg.com/display/hj/664cb8bfd4f8fb587ad8411876d15680/600x450c.jpg?t=1" src="img/240x180m(63).jpg" alt="" height="450">
										</div>
										<div class="img_wrap">
											<img data-src="https://pic1.ajkimg.com/display/hj/8c5c344761ce216053007d6b77ad2a67/600x450c.jpg?t=1" src="img/240x180m(64).jpg" alt="" height="450">
										</div>
									</div>

									<div class="switch_list zhankeng_last" id="zhankeng_last">
										<div class="img_wrap zhankeng_img1"><img data-src="https://pic1.ajkimg.com/display/hj/57bd949397e53cbfc0ad2d4ba6c68555/600x450c.jpg?t=1" src="1600x450c.jpg" alt="" height="450"></div>
										<div class="img_wrap zhankeng_img2"><img data-src="https://pic1.ajkimg.com/display/hj/5a291933dddff185c14d25a346b9acd8/600x450c.jpg?t=1" src="1600x450c(1).jpg" alt="" height="450"></div>
									</div>

								</div>

							</div>
							<!--endswitch_with_map-->
						</div>

						<!--室内图 户型图 环境图 周边地图-->
						<div class="switch_tab_wrap " id="switch_tab_wrap">
							<a class="switch_tag switch_tag_now" href="javascript:;" data-track="pc_fydy_switch_snt" id="room_tab">
								<i class="switch-icon iconfont switch-room-icon"></i>
								<em class="title">所有图片(${fn:length(pic)})</em>
							</a>

							<a class="switch_tag" href="javascript:;" data-track="pc_zfdy_xc_huxing_click" id="hx_tab">
								<i class="switch-icon iconfont switch-hx-icon"></i>
								<em class="title">户型图<span class="num">(0)</span></em>
							</a>
							<a class="switch_tag" href="javascript:;" data-track="pc_zfdy_xc_hjt_click" id="surround_tab">
								<i class="switch-icon iconfont switch-surd-icon"></i>
								<em class="title">环境图<span class="num">(0)</span></em>
							</a>
							<a class="switch_tag " href="javascript:;" data-track="pc_zfdy_xc_zbdt_click" id="map_tab" style="height: 111.966px;">
								<i class="switch-icon iconfont"></i>
								<em class="title">周边地图</em>
							</a>
							<!--end室内图 户型图 环境图 周边地图-->
						</div>

					</div>

					<!--房屋信息-->
					<div class="mod-title bottomed">
						<h3 id="houseInfo" class="title nav-scroll">房屋信息</h3>
						<div class="right-info">房屋编码：${house.id}，发布时间：${house.time}</div>
					</div>

					<ul class="house-info-zufang cf">
						<li class="full-line cf">
							<span class="price"><em>${house.rent}</em>元/月</span>
							<span class="type">${house.paytype}</span>
							<a href="javascript:void(0);" data-track="pc_zfdy_zjzs_click" class="full-link link lookPriceTrend">查看租金走势</a>
							<!-- 在折线图的脚本里判断了价格走势的的隐藏 -->
						</li>
						<li class="house-info-item l-width">
							<span class="type">户型：</span>
							<span class="info">${house.roomnumber}室${house.livingnumber}厅${house.toiletnumber}卫</span>
						</li>
						<li class="house-info-item">
							<span class="type">面积：</span>
							<span class="info">${house.totalarea}平方米</span>
						</li>
						<li class="house-info-item">
							<span class="type">朝向：</span>
							<span class="info">${house.dicrection}</span>
						</li>
						<li class="house-info-item l-width">
							<span class="type">楼层：</span>
							<span class="info">${house.floor}层(共${house.totalfloor}层)</span>
						</li>
						<li class="house-info-item">
							<span class="type">装修：</span>
							<span class="info">${house.decoration}</span>
						</li>
						<li class="house-info-item">
							<span class="type">类型：</span>
							<span class="info">${house.housetype}</span>
						</li>
						<li class="house-info-item l-width">
							<span class="type">小区：</span>
							<a href="https://zhuzhou.anjuke.com/community/view/964405" class="link" target="_blank" _soj="propview">${house.community}</a>
							&nbsp;(
							<a href="https://zhu.zu.anjuke.com/fangyuan/tianyuanb/" class="link" target="_blank" _soj="propview">天元</a>
							<a href="https://zhu.zu.anjuke.com/fangyuan/taishanguangchang/" class="link" target="_blank" _soj="propview">泰山广场</a>) </li>
					</ul>

					<div class="mod-title bottomed">
						<h3 class="title">房屋配套</h3>
					</div>

					<ul class="house-info-peitao cf" data-trace="{&#39;pc_zfdy_fypt_show&#39;:1}">
						<!-- 带有此功能则加has -->
						<li class="peitao-item has">
							<i class="iconfont"></i>
							<div class="peitao-info">床</div>
						</li>
						<li class="peitao-item has">
							<i class="iconfont"></i>
							<div class="peitao-info">洗衣机</div>
						</li>
						<li class="peitao-item has">
							<i class="iconfont"></i>
							<div class="peitao-info">空调</div>
						</li>
						<li class="peitao-item has">
							<i class="iconfont"></i>
							<div class="peitao-info">阳台</div>
						</li>
						<li class="peitao-item has">
							<i class="iconfont"></i>
							<div class="peitao-info">冰箱</div>
						</li>

						<li class="peitao-item has">
							<i class="iconfont"></i>
							<div class="peitao-info">卫生间</div>
						</li>
						<li class="peitao-item has">
							<i class="iconfont"></i>
							<div class="peitao-info">可做饭</div>
						</li>
						<li class="peitao-item has">
							<i class="iconfont"></i>
							<div class="peitao-info">电视</div>
						</li>
						<li class="peitao-item  has">
							<i class="iconfont"></i>
							<div class="peitao-info">热水器</div>
						</li>
						<li class="peitao-item  has">
							<i class="iconfont"></i>
							<div class="peitao-info">衣柜</div>
						</li>
						<li class="peitao-item  ">
							<i class="iconfont"></i>
							<div class="peitao-info">暖气</div>
						</li>
						<li class="peitao-item none has">
							<i class="iconfont"></i>
							<div class="peitao-info">宽带</div>
						</li>
						<li class="peitao-item none has">
							<i class="iconfont"></i>
							<div class="peitao-info">沙发</div>
						</li>
					</ul>

					<div class="houseInfo-desc">
					    <!-- 二手房信息 -->
					    <div class="houseInfo-item">
					                        <div class="houseInfo-item-desc js-house-explain" style="max-height: none;">
					                    </div>
					    </div>
					    <!-- 二手房信息 -->
					        <!-- 二手房信息 -->
					        <!-- 租房信息 -->
					        <div class="houseInfo-item">
					        <h5 class="houseInfo-item-title"><span class="iconfont"></span><span class="title-content">房源详情</span></h5>
					        <div class="houseInfo-item-desc js-house-explain" style="max-height: none;">
					           ${house.describe2}        </div>
					    </div>
					    
					    <!-- 租房信息 -->
					        <div class="houseInfo-item">
					        <h5 class="houseInfo-item-title"><span class="iconfont"></span><span class="title-content">出租要求</span></h5>
					        <div class="houseInfo-item-desc">
					           ${house.require2}。        </div>
					    </div>
					        <!-- 租房信息 -->
					        <div class="houseInfo-item">
					        <h5 class="houseInfo-item-title"><span class="iconfont"></span><span class="title-content">小区配套</span></h5>
					        <div class="houseInfo-item-desc">
					           ${house. support2}        </div>
					    </div>
					    
					
					    <!-- 二手房信息 -->
					    
					    <!-- 二手房信息 -->
					    
					</div>

					<div class="mod-title recommendGuess no-title" style="display: block;">
						<h3 class="title">猜你喜欢</h3>
					</div>
					<div id="recommendGuess" class="likebox" data-trace="{&#39;pc_zfdy_cnxh_show&#39;:1}">
						<div class="ajax_prop">
							<div class="title">
								<h4>猜你喜欢</h4>
								<h5 class="gray" style="display:none;">中泰财富湘江</h5></div>
							<ul class="cf box">
								<li class="rec_common_con "><img class="rec_common_img" title="炎帝广场旁（华晨御园）豪装欧式正规一室 带天然气 家电齐全！" width="150" height="115" src="image\240x180m.jpg">
									<a class="rec_common_title" target="_blank" data-sign="true" data-trace="{viewandview_1:1180091127}" title="炎帝广场旁（华晨御园）豪装欧式正规一室 带天然气 家电齐全！" href="https://zhu.zu.anjuke.com/fangyuan/1180091127?from=zufang_page_rec_cnxh" pos="0">炎帝广场旁（华晨御园）豪装欧式正规一室 带天然气 家电齐全！</a>
									<p class="rec_common_price">2000<span>元/月</span></p>
									<p class="rec_common_info">1室1厅，50平米</p>
									<p class="rec_common_name">华晨御园</p>
								</li>
								<li class="rec_common_con "><img class="rec_common_img" title="财富湘江 简约家居 采光通风极好的公寓 拎包住" width="150" height="115" src="image\240x180m(61).jpg">
									<a class="rec_common_title" target="_blank" data-sign="true" data-trace="{viewandview_1:1180776888}" title="财富湘江 简约家居 采光通风极好的公寓 拎包住" href="https://zhu.zu.anjuke.com/fangyuan/1180776888?from=zufang_page_rec_cnxh" pos="1">财富湘江 简约家居 采光通风极好的公寓 拎包住</a>
									<p class="rec_common_price">2000<span>元/月</span></p>
									<p class="rec_common_info">1室1厅，60平米</p>
									<p class="rec_common_name">中泰财富湘江</p>
								</li>
								<li class="rec_common_con "><img class="rec_common_img" title="财富湘江 ，公寓诚心租出 ，风景优美。" width="150" height="115" src="image\240x180m(62).jpg">
									<a class="rec_common_title" target="_blank" data-sign="true" data-trace="{viewandview_1:1179808929}" title="财富湘江 ，公寓诚心租出 ，风景优美。" href="https://zhu.zu.anjuke.com/fangyuan/1179808929?from=zufang_page_rec_cnxh" pos="2">财富湘江 ，公寓诚心租出 ，风景优美。</a>
									<p class="rec_common_price">1700<span>元/月</span></p>
									<p class="rec_common_info">1室1厅，43平米</p>
									<p class="rec_common_name">中泰财富湘江</p>
								</li>
								<li class="rec_common_con "><img class="rec_common_img" title="炎帝广场  品质小区 流金岁月精装两房 房东急租 价格可谈" width="150" height="115" src="image\240x180m(63).jpg">
									<a class="rec_common_title" target="_blank" data-sign="true" data-trace="{viewandview_1:1181584807}" title="炎帝广场  品质小区 流金岁月精装两房 房东急租 价格可谈" href="https://zhu.zu.anjuke.com/fangyuan/1181584807?from=zufang_page_rec_cnxh" pos="3">炎帝广场 品质小区 流金岁月精装两房 房东急租 价格可谈</a>
									<p class="rec_common_price">1500<span>元/月</span></p>
									<p class="rec_common_info">2室2厅，86平米</p>
									<p class="rec_common_name">华晨国际</p>
								</li>
							</ul>
						</div>
					</div>
					<!-- 小区概况 -->
					<!--end left box-->
				</div>

				<div class="rbox">
					<div class="personal-card">
						<img class="personal-photo" src="image/${owner.userpic }" title="${owner.username}">

						<h2 class="personal-name" title="李女士">${owner.username}</h2>

						<div class="personal-mobile">
							${house.phone}
						</div>
					</div>
				</div>
				<!--end house main info-->
			</div>
			
			<div id="footer" class="footer">
		    <ul class="links">
		        <li>
		            <a rel="nofollow" href="https://kfzx.anjuke.com/faqList/defaultQue?faqKinds=2">关于安居客</a>
		            <em class="spe-lines">|</em>
		        </li>
		        <li>
		            <a rel="nofollow" href="https://kfzx.anjuke.com/faqDetail/queryDetail?faqId=95&amp;faqTypeId=11">联系我们</a>
		            <em class="spe-lines">|</em>
		        </li>
		        <li>
		            <a rel="nofollow" href="https://kfzx.anjuke.com/faqDetail/queryDetail?faqId=104&amp;faqTypeId=10">用户协议</a>
		            <em class="spe-lines">|</em>
		        </li>
		        <li>
		            <a href="javascript:void(0);" data-target="loan_link">房贷计算器</a>
		            <em class="spe-lines">|</em>
		        </li>
		        <li>
		            <a href="javascript:void(0);" data-target="seo_qa">最新问答</a>
		            <em class="spe-lines">|</em>
		        </li>
		        <li>
		            <a href="javascript:void(0);" data-target="map_link">网站地图</a>
		            <em class="spe-lines">|</em>
		        </li>
		        <li>
		            <a href="javascript:void(0);" data-target="house_link">最新房源</a>
		            <em class="spe-lines">|</em>
		        </li>
		        <li>
		            <a href="javascript:void(0);" data-target="other_city">其它城市</a>
		            <em class="spe-lines">|</em>
		        </li>
		        <li>
		            <a rel="nofollow" href="https://zhuzhou.anjuke.com/friendlink">友情链接</a>
		            <em class="spe-lines">|</em>
		        </li>
		        <li>
		            <a rel="nofollow" target="_blank" href="http://www.zx110.org/cxs/index.html">放心搜</a>
		            <em class="spe-lines">|</em>
		        </li>
		        <li>
		            <a rel="nofollow" target="_blank" href="https://about.anjuke.com/chanpin/?from=home_foot_tgy">推广服务</a>
		            <em class="spe-lines">|</em>
		        </li>
		        <li>
		            <a rel="nofollow" target="_blank" href="https://biz.anjuke.com/biz/index">渠道招商</a>
		        </li>
		    </ul>
		
		    <div class="cp-mod">
		        <a rel="nofollow" href="https://kfzx.anjuke.com/" target="_blank">客户服务中心</a>   
		       	 邮箱：<a href="mailto:service@58ganji.com" target="_blank" rel="nofollow">service@58ganji.com</a>   
		        Copyright&nbsp;©&nbsp;2007-2018 www.anjuke.com All Rights Reserved   <a href="http://www.miibeian.gov.cn/" rel="nofollow">ICP号：沪 B2-20090008</a>
		    </div>
		    
		    </div>

			<!--end大包装-->
		</div>

	</body>
	<script type="text/javascript">
	
	function nextpic(){
		var a=document.getElementById("switch_wrap");
		//减少600
		var leftedg=a.style.left;
		var edg=leftedg.split("px")[0];
		edg=edg*1;
		if((edg!=94*1-${fn:length(pic)-1}*600)){
			edg=edg-600;
		}else{
			edg=94;
		}
		a.style.left=edg+"px";
	}
	
	function lastpic(){
		var a=document.getElementById("switch_wrap");
		//减少600
		var leftedg=a.style.left;
		var edg=leftedg.split("px")[0];
		edg=edg*1;
		if(edg!=94){
			edg=edg*1+600*1;
		}else{
			edg=94*1-${fn:length(pic)-1}*600
		}
		a.style.left=edg+"px";
	}
	</script>

</html>