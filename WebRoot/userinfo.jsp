<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<title>用户信息</title>
</head>
<link rel="stylesheet" rev="stylesheet" href="css/userinfo.css"
	type="text/css">
<link rel="stylesheet" rev="stylesheet" href="css/upload_user_info.css"
	type="text/css">

<body>
	<div class="header-mod">
		<div class="header clearfix">
			<div class="logo">
				<a class="ajk-logo" href="index.jsp"></a> <i
					class="split-icon"></i> <a class="sub-logo"
					href="https://www.anjuke.com/ask/">用户中心</a>
			</div>
			<a href="https://user.anjuke.com/user/message" class="quit"> <i
				class="iconfont quitIcon"></i> <span>退出</span>
			</a>
		</div>
	</div>

	<!--用户头像一栏-->
	<div class="headerSub-mod">
		<div class="headerSub clearfix">
			<img src="image/${user.userpic}" class="user-photo" alt="用户头像">
			<div class="user-info">
				<div class="info-sup clearfix">
					<span class="hello"> 你好，<span class="name">${user.username }</span>
					</span>
				</div>
				<div class="info-sub clearfix">
					<ul>
						<li class="user-account">账户名：<span>${user.username }</span>
						</li>
						<i class="split-icon"></i>
						<li class="user-type"><span>用户</span></li>
						<i class="split-icon"></i>
					</ul>
				</div>
				<!--END useinfo-->
			</div>
		</div>
		<!--用户头像一栏 headerSub-mod-->
	</div>

	<!--container-->
	<div class="container">
		<div class="content clearfix">
			<!-- 侧边栏 -->
			<div class="side-menu">
				<ul class="menu-list">
					<li><a href="javascript:void(0)" class="sidebutton cur"
						id="uploadinfobutton" onclick=buttonlist("userinfo")><i
							class="iconfont"></i>个人资料</a></li>
					<li><a href="javascript:void(0)" class="sidebutton "
						id="mymsgbutton" onclick=buttonlist("msg")><i class="iconfont"></i>消息</a>
					</li>
					<li><a href="javascript:void(0)" class="sidebutton "
						id="mycollectbutton" onclick=buttonlist("collect")><i class="iconfont" ></i>收藏夹</a></li>
					<li><a
						href="http://www.anjuke.com/propsale/manage/?from=i_userctr"
						target="_blank"><i class="iconfont"></i>房源管理</a></li>
					<li><a href="http://user.anjuke.com/user/qa" class=""><i
							class="iconfont"></i>问答</a></li>
					
					<a
						href="http://zhu.fang.anjuke.com/ugc/zone/71199405/?from=ucenter"
						target="_blank"><i class="iconfont"></i>评论</a>
					
					<li><a href="http://user.anjuke.com/user/newHouseView"
						id="sojcode" class=""><i class="iconfont"></i>看房记录</a></li>
				</ul>
				<div class="tool-list">
					<h4 class="t-title">
						<i class="iconfont"></i>小工具
					</h4>
					<p>
						<a href="http://zhu.anjuke.com/gujia/" target="_blank">估房价</a> <a
							href="http://www.anjuke.com/calculator/loan" target="_blank">房贷计算器</a>
					</p>
				</div>
				<!-- END侧边栏 -->
			</div>


			<!--right-content-->
			<div class="right-content">


				<!-- 我的消息 -->
				<div class="right-cont" id="mymsg" style="display: none;">
					<ul class="tab-list clearfix">
						<li><a href="https://user.anjuke.com/user/message#"
							class="cur">系统消息</a></li>
					</ul>

					<div class="no-msg">
						<span class="no-msg-content"> <span class="no-msg-img"></span>
							<br> <span class="no-msg-text">您还没有消息哟~</span>
						</span>
					</div>
				</div>
				
				<!-- 收藏夹 -->
				<div class="right-cont" id="mycollect" style="display: none;">
					<ul class="tab-list clearfix">
						<li><a href="javascript:void(0)"
							class="cur">收藏夹</a></li>
					</ul>

					<!--  <div class="no-msg">
						<span class="no-msg-content"> <span class="no-msg-img"></span>
							<br> <span class="no-msg-text">您还没有消息哟~</span>
						</span>
					</div>-->
				</div>



				<!--修改资料-->
				<div class="right-cont" id="uploadinfo" >
					<ul class="tab-list clearfix">
						<li><a href="javascript:void(0)" class="cur">个人资料</a></li>
					</ul>

					<!-- 个人资料 -->
					<div class="profile">
						<div class="profile-title">
							<i class="iconfont"></i> <span>基本账号资料</span>
						</div>
						<ul class="profile-list">
						
							<li class="photo"><span class="key">头像</span> <img
								src="image/${user.userpic }" alt="你的头像"> <a
								href="uploadpic.jsp"
								class="operate-btn">修改</a></li>
							<li class="account"><span class="key">帐号</span> <span
								class="value">${user.userlogin }</span></li>
							<li class="name"><span class="key" >昵称</span> <span
								class="value" id="usernamee">${user.username }</span>
								<button class="operate-btn" onclick="uploadcase('username')">修改</button></li>
							<li class="email"><span class="key">邮箱</span> <span
								class="value"><c:if test="${not empty user.usermail }">${user.usermail }</c:if>
								<c:if test="${empty user.usermail }">暂无提供</c:if></span> <a class="operate-btn"
								href="https://user.anjuke.com/user/modifyEmail">绑定</a></li>
							<li class="phone"><span class="key">手机</span> <span
								class="value"><c:if test="${not empty user.userphone }">${user.userphone }</c:if>
								<c:if test="${empty user.userphone }">暂无提供</c:if></span> <a class="operate-btn"
								href="https://user.anjuke.com/user/modifyPhone">修改</a></li>
							<li class="password"><span class="key">密码</span> <span
								class="value">********</span> <a class="operate-btn"
								href="https://user.anjuke.com/user/modifyPassword">修改</a></li>
						</ul>
						<input type="hidden" id="csrf_token"
							value="NGMyMTllZTIzOTcyZDdmMWU4NzI5MTM2ODJkM2ZjMjY=">
						<hr>
						<div class="profile-title">
							<i class="iconfont"></i> <span>扩充账号资料</span>
						</div>
						<ul class="profile-list">
							<li class="bound"><span class="key">微信</span> <span
								class="value"></span>
								<button class="operate-btn">绑定</button></li>
						</ul>
					</div>

					<!-- 绑定提示框 -->
					<div class="wrap-tip ">
						<div class="content-tip">
							<div class="center-tip"></div>
						</div>
					</div>

				</div>


				<div class="recommend-house">
					<div class="rh-area">
						<p class="rh-title">您可能感兴趣的房源</p>
						<ul class="rh-items">
							<li class="rh-item"><a
								href="https://zhuzhou.anjuke.com/prop/view/1334637298"
								class="rh-item-content" target="_blank"> <img
									src="image/240x180c.jpg" width="182" height="135">
									<span class="community-area"></span> <span
									class="community-text">高科慧谷阳光</span>
									<p class="item-title">天元区 高科慧谷阳光小区 经典小三房 出们就是天元中小学</p>
									<p class="item-info">
										<span class="item-price">76万</span><span class="item-info-sub">2室3厅，100平米</span>
									</p>
							</a></li>
							<li class="rh-item"><a
								href="https://zhuzhou.anjuke.com/prop/view/1318424034"
								class="rh-item-content" target="_blank"> <img
									src="image/240x180c(1).jpg" width="182"
									height="135"> <span class="community-area"></span> <span
									class="community-text">中泰财富湘江</span>
									<p class="item-title">中心医院 一线江景 低于市场价</p>
									<p class="item-info">
										<span class="item-price">82万</span><span class="item-info-sub">2室3厅，98平米</span>
									</p>
							</a></li>
							<li class="rh-item"><a
								href="https://zhuzhou.anjuke.com/prop/view/1334536988"
								class="rh-item-content" target="_blank"> <img
									src="image/240x180c(2).jpg" width="182"
									height="135"> <span class="community-area"></span> <span
									class="community-text">湘银小区世纪花园</span>
									<p class="item-title">天元区长江北路单价7千的结婚不到一年的精装修南北通透的大两房</p>
									<p class="item-info">
										<span class="item-price">64.8万</span><span
											class="item-info-sub">2室2厅，90平米</span>
									</p>
							</a></li>
							<li class="rh-item"><a
								href="https://zhuzhou.anjuke.com/prop/view/1304639775"
								class="rh-item-content" target="_blank"> <img
									src="image/240x180c(3).jpg" width="182"
									height="135"> <span class="community-area"></span> <span
									class="community-text">中欧昆仑首府</span>
									<p class="item-title">成熟高档小区 南北通透 户型周正 家电齐全</p>
									<p class="item-info">
										<span class="item-price">82.6万</span><span
											class="item-info-sub">2室3厅，109平米</span>
									</p>
							</a></li>
						</ul>
					</div>
				</div>
				<!--ENDright-content-->
			</div>
			<!--END content clearfix-->
		</div>
		<!--END container-->
	</div>

	<div id="footer" class="footer">
		<ul class="links">
			<li><a rel="nofollow"
				href="https://zhuzhou.anjuke.com/help/question/1">关于安居客</a></li>
			<li><a rel="nofollow"
				href="https://zhuzhou.anjuke.com/help/question/4">联系我们</a></li>
			<li><a rel="nofollow"
				href="https://zhuzhou.anjuke.com/help/question/7">用户协议</a></li>
			<!-- <li><a rel="nofollow" href="https://zhuzhou.anjuke.com/help">使用帮助</a></li> -->
			<li><a rel="nofollow"
				href="https://zhuzhou.anjuke.com/friendlink">友情链接</a></li>
			<li><a href="javascript:void(0);" data-target="map_link">网站地图</a></li>
			<li><a rel="nofollow" href="javascript:;"
				data-target="other_city">其它城市</a></li>
			<li><a href="javascript:void(0);" data-target="house_link">最新房源</a></li>
			<li><a href="javascript:void(0);" data-target="community_link">小区大全</a></li>
			<li><a href="https://zhuzhou.anjuke.com/wenti/">最新问答</a></li>
			<li><a target="_blank"
				href="http://www.anjuke.com/calculator/loan">房贷计算器</a></li>
			<li><a rel="nofollow" target="_blank"
				href="http://www.zx110.org/cxs/index.html">放心搜</a></li>
			<li><a rel="nofollow" target="_blank"
				href="https://about.anjuke.com/chanpin/?from=home_foot_tgy">推广服务</a></li>
		</ul>
		<p>
			<a href="https://kfzx.anjuke.com/" target="_blank">客户服务中心</a>&nbsp;&nbsp;&nbsp;&nbsp;
			邮箱：<a href="mailto:service@58ganji.com" target="_blank"
				rel="nofollow">service@58ganji.com</a>&nbsp;&nbsp;&nbsp; Copyright ©
			2007-2017 www.anjuke.com All Rights Reserved <a
				href="http://www.miibeian.gov.cn/" rel="nofollow">ICP号：沪&nbsp;B2-20090008</a>
		</p>
	</div>
	
	<!--修改 框框-->
		<div class="modal-cover" style="overflow: auto; visibility: hidden;" id="uploadusername">
			<div class="xf-modal modal-custom modify_name_dialog" style="margin-top: -132px; margin-left: -251px;">
				<div class="con" style="width: 460px; height: 251px;">
					<div class="hd">
						<h3 class="title">修改昵称</h3></div>
					<div class="bd">
						<div class="modify-name">
							<p class="error-tip name-error" style="display: none;">只能包含中文、英文字母、数字，不包含符号</p>
							<div class="input-box name-box">
								<i class="iconfont left-Icon"></i>
								<input class="input-content name" type="text" placeholder="只能包含中文、英文字母、数字，不包含符号" maxlength="12" id="nametext">
								<i class="iconfont ok-tip name-ok" style="display: none;"></i>
							</div>
						</div>
					</div>
					<div class="ft">
						<div class="dialog-btn modify-name-btn">
							<button class="sure" onclick="sureupload()">确定</button><button class="cancel"  onclick="hiddencases()">取消</button>
						</div>
					</div>
				</div>
				<a href="javascript:" class="md-close iconfont" onclick="hiddencases()"></a>
			</div>
		</div>
	
	
</body>
<script>
	function buttonlist(a){
		var conts=document.getElementsByClassName("right-cont");
		var side=document.getElementsByClassName("sidebutton");
		for (var i=0;i<side.length;i++) {
			side[i].style.color="#666";
			side[i].style.borderLeft="0";
			side[i].style.background="#FFFFFF"
		}
		for (var i=0;i<conts.length;i++) {
			conts[i].style.display="none";			
		}
		if(a=="msg"){
			document.getElementById("mymsgbutton").style.background="#F2F6ED";
			document.getElementById("mymsgbutton").style.color="#62ab00"
			document.getElementById("mymsgbutton").style.borderLeft="3px solid #62ab00";
			document.getElementById("mymsg").style.display="block"
		}
		if(a=="userinfo"){
			document.getElementById("uploadinfobutton").style.background="#F2F6ED";
			document.getElementById("uploadinfobutton").style.color="#62ab00"
			document.getElementById("uploadinfobutton").style.borderLeft="3px solid #62ab00";
			document.getElementById("uploadinfo").style.display="block";
		}
		if(a=="collect"){
			 location="collect.do?method=findcollect&userid=${user.userid }"; 
			 //window.location.href="login.jsp?backurl="+window.location.href; 
			//document.getElementById("mycollectbutton").style.background="#F2F6ED";
			//document.getElementById("mycollectbutton").style.color="#62ab00"
			//document.getElementById("mycollectbutton").style.borderLeft="3px solid #62ab00";
			//document.getElementById("mycollect").style.display="block"
		}
	}
	
	function uploadcase(a){
		var cases=document.getElementsByClassName("modal-cover");
		for(var i=0;i<cases.length;i++){
			cases[i].style.visibility = "hidden";
		}
		if(a=='username'){
			var b=document.getElementById("upload"+a);
			b.style.visibility = "visible";
		}
	}
	function hiddencases(){
		var cases=document.getElementsByClassName("modal-cover");
		for(var i=0;i<cases.length;i++){
			cases[i].style.visibility = "hidden";
		}
	}
	function sureupload(){
		var name=document.getElementById("nametext").value;
		var request=new XMLHttpRequest();
		//在uploadDAO里面将数据库里面的username修改  并将session存的user更新；
		request.open("post","uoload.do?method=uploadname&nametext="+name+"&userid="+${user.userid },false);
		
		request.onreadystatechange = function(){
			if (request.readyState == 4 && request.status == 200){
				var ret=request.responseText;
				if(ret=="true"){//修改成功
					alert("修改成功");
					hiddencases();
					location=location
					buttonlist("userinfo");
				}
				
			}
		}
		
		request.send(null);
		
	}
	</script>
</html>
