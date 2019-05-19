<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<link rel="stylesheet" rev="stylesheet" href="css/uploadpic2.css"
	type="text/css">
<link rel="stylesheet" rev="stylesheet" href="css/uploadpic1.css"
	type="text/css">
<body>
	<div class="header-mod">
		<div class="header clearfix">
			<div class="logo">
				<a class="ajk-logo" href="index.jsp"></a> <i
					class="split-icon"></i> <a class="sub-logo"
					href="https://www.anjuke.com/ask/">用户中心</a>
			</div>
			<a href="https://user.anjuke.com/user/modifyPhoto" class="quit">
				<i class="iconfont quitIcon"></i> <span>退出</span>
			</a>
		</div>
	</div>
	<div class="headerSub-mod">
		<div class="headerSub clearfix">
			<img src="image/${user.userpic }" class="user-photo" alt="用户头像">
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
			</div>
			<a class="info-modify" href="https://user.anjuke.com/user/profile"><button>修改资料&gt;</button></a>
		</div>
	</div>
	<div class="container">
		<div class="content clearfix">
			<!-- 侧边栏 -->
			<div class="side-menu">
				<ul class="menu-list">
					<li><a href="http://user.anjuke.com/user/message" class=""><i
							class="iconfont"></i>消息</a></li>
					<li><a
						href="http://www.anjuke.com/propsale/manage/?from=i_userctr"
						target="_blank"><i class="iconfont"></i>房源管理</a></li>
					<li><a href="http://user.anjuke.com/user/qa" class=""><i
							class="iconfont"></i>问答</a></li>
					<li><a href="https://www.anjuke.com/propsale/?from=i_userctr"
						target="_blank"><i class="iconfont"></i>卖房</a></li>
					<!-- <li>
			<a href="http://user.anjuke.com/member/loan/71199405/"><i class="iconfont">&#xE141;</i>贷款</a>
		</li>
		<li> -->
					<a
						href="http://zhu.fang.anjuke.com/ugc/zone/71199405/?from=ucenter"
						target="_blank"><i class="iconfont"></i>评论</a>

					<li><a href="http://user.anjuke.com/user/profile" class="cur"><i
							class="iconfont"></i>个人资料</a></li>
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
			</div>
			<div class="right-content">
				<div class="right-cont">
					<ul class="tab-list clearfix">
						<li><a href="userinfo.jsp">个人资料</a></li>
						<li><a href="https://user.anjuke.com/user/modifyPhoto#"
							class="cur">修改头像</a></li>
					</ul>

					<div class="modify-container">
						<div class="cur-img"></div>
						<div class="cut-img-area">
							<p class="save-msg"></p>
							<form method="post" action="uoload.do?method=uploadpic&userid=${user.userid }"  enctype="multipart/form-data">
								<input type="file" name="picfile" id="filelabel"
									onchange="change('uploadpic','filelabel')"><br>
								<br> <img src="image/${user.userpic }" class="preAvatar"
									id="uploadpic" >
								<div class="cut-container">
									<img src="https://user.anjuke.com/user/modifyPhoto"
										id="source-img">
								</div>
								<!-- <a href="javascript:void(0);" class="file-btn">
									选择头像
								</a> -->
								<input type="submit" name="file" id="file" value="确定"
									class="file-btn" >
							</form>

							<p class="upload-tips">
								<i class="star-icon">*</i>上传文件大于20k，小于600k，支持jpg、jpeg、png格式的图片
							</p>
						</div>
						<div class="save-img-area">
							<p class="img-preview-text">头像尺寸为100*100px</p>
							<div class="img-preview-contain">
								<img src="https://user.anjuke.com/user/modifyPhoto"
									class="img-preview">
							</div>
							<br>
							<button type="button" class="save-img-btn">保存</button>
						</div>
					</div>

					<input type="hidden" id="csrf_token"
						value="MzNjNmZjMjRhMjM5ZWYzMjRmN2M0YTUzOGQzMGY2NDE=">

					<div class="modify-succeed" style="display: none;">
						<i class="iconfont success-icon"></i>
						<p class="congra-text">恭喜您，头像修改成功</p>
						<p class="skip-text">正在跳转...</p>
						<button class="skip-btn">立即跳转</button>
					</div>

				</div>
				<div class="recommend-house">
					<!-- 推荐 -->
					<div class="rh-area">
						<p class="rh-title">您可能感兴趣的房源</p>
						<ul class="rh-items">
							<li class="rh-item"><a
								href="https://zhuzhou.anjuke.com/prop/view/1341688622"
								class="rh-item-content" target="_blank"> <img
									src="image/240x180c.jpg" width="182" height="135"> <span
									class="community-area"></span> <span class="community-text">天台小区</span>
									<p class="item-title">开学啦 天台小学 天台小区二期 全新精装三房 南北通透</p>
									<p class="item-info">
										<span class="item-price">75万</span><span class="item-info-sub">2室3厅，125平米</span>
									</p>
							</a></li>
							<li class="rh-item"><a
								href="https://zhuzhou.anjuke.com/prop/view/1339077729"
								class="rh-item-content" target="_blank"> <img
									src="image/240x180c(1).jpg" width="182" height="135"> <span
									class="community-area"></span> <span class="community-text">恒大名都</span>
									<p class="item-title">恒大名都 居家精装修三房只要98万首付只要40万就可以买恒大</p>
									<p class="item-info">
										<span class="item-price">98万</span><span class="item-info-sub">2室3厅，121平米</span>
									</p>
							</a></li>
							<li class="rh-item"><a
								href="https://zhuzhou.anjuke.com/prop/view/1332835623"
								class="rh-item-content" target="_blank"> <img
									src="image/240x180c(2).jpg" width="182" height="135"> <span
									class="community-area"></span> <span class="community-text">泰山公馆</span>
									<p class="item-title">天然氧吧 泰山公馆|人车分 高档小区 带装修只要毛坯价</p>
									<p class="item-info">
										<span class="item-price">85万</span><span class="item-info-sub">2室3厅，121平米</span>
									</p>
							</a></li>
							<li class="rh-item"><a
								href="https://zhuzhou.anjuke.com/prop/view/1335440085"
								class="rh-item-content" target="_blank"> <img
									src="image/240x180c(3).jpg" width="182" height="135"> <span
									class="community-area"></span> <span class="community-text">美的蓝溪谷</span>
									<p class="item-title">栗雨湖 醉美蓝溪谷 毛胚大三房 主卧带衣帽间，湖景房。</p>
									<p class="item-info">
										<span class="item-price">76万</span><span class="item-info-sub">2室3厅，108.31平米</span>
									</p>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="footer" class="footer">
		<ul class="links">
			<li><a rel="nofollow"
				href="https://zhuzhou.anjuke.com/help/question/1">关于安居客</a></li>
			<!--        <li><a rel="nofollow" href="http://biz.anjuke.com/">渠道招商</a></li>-->
			<li><a rel="nofollow"
				href="https://zhuzhou.anjuke.com/help/question/4">联系我们</a></li>
			<li><a rel="nofollow"
				href="https://zhuzhou.anjuke.com/help/question/7">用户协议</a></li>
			<!-- <li><a rel="nofollow" href="https://zhuzhou.anjuke.com/help">使用帮助</a></li> -->
			<li><a rel="nofollow"
				href="https://zhuzhou.anjuke.com/friendlink">友情链接</a></li>
			<li><a href="javascript:void(0);" data-target="map_link">网站地图</a>
			</li>
			<li><a rel="nofollow" href="javascript:;"
				data-target="other_city">其它城市</a></li>
			<li><a href="javascript:void(0);" data-target="house_link">最新房源</a>
			</li>
			<li><a href="javascript:void(0);" data-target="community_link">小区大全</a>
			</li>
			<li><a href="https://zhuzhou.anjuke.com/wenti/">最新问答</a></li>
			<li><a target="_blank"
				href="http://www.anjuke.com/calculator/loan">房贷计算器</a></li>
			<li><a rel="nofollow" target="_blank"
				href="http://www.zx110.org/cxs/index.html">放心搜</a></li>
			<li><a rel="nofollow" target="_blank"
				href="https://about.anjuke.com/chanpin/?from=home_foot_tgy">推广服务</a>
			</li>
		</ul>
		<p>
			<a href="https://kfzx.anjuke.com/" target="_blank">客户服务中心</a>&nbsp;&nbsp;&nbsp;&nbsp;
			邮箱： <a href="mailto:service@58ganji.com" target="_blank"
				rel="nofollow">service@58ganji.com</a>&nbsp;&nbsp;&nbsp; Copyright ©
			2007-2017 www.anjuke.com All Rights Reserved <a
				href="http://www.miibeian.gov.cn/" rel="nofollow">ICP号：沪&nbsp;B2-20090008</a>
		</p>
	</div>

	<div class="dialog">
		<!-- 退出登录对话框 -->
		<div class="quit-content">是否要退出安居客帐号？</div>
		<div class="dialog-btn quit-btn">
			<a href="http://member.anjuke.com/user/logout"><button
					class="sure">确定</button></a>
			<button class="cancel">取消</button>
		</div>

		<!-- 修改昵称 -->
		<div class="modify-name">
			<p class="error-tip name-error">只能包含中文、英文字母、数字，不包含符号</p>
			<div class="input-box name-box cur">
				<i class="iconfont left-Icon"></i> <input
					class="input-content name" type="text"
					placeholder="只能包含中文、英文字母、数字，不包含符号" maxlength="12"> <i
					class="iconfont ok-tip name-ok"></i>
			</div>
		</div>
		<div class="dialog-btn modify-name-btn">
			<button class="sure">确定</button>
			<button class="cancel">取消</button>
		</div>
	</div>

	<script type="text/javascript" crossorigin=""
		src="image/jquery-underscore.min.js.下载"></script>
	<script type="text/javascript" crossorigin="" src="image/bbv10.js.下载"></script>
	<script type="text/javascript" crossorigin=""
		src="image/jquery.Jcrop.min.js.下载"></script>
	<script type="text/javascript" crossorigin=""
		src="image/jquery.ui.widget.js.下载"></script>
	<script type="text/javascript" crossorigin=""
		src="image/jquery.iframe-transport.js.下载"></script>
	<script type="text/javascript" crossorigin=""
		src="image/jquery.fileupload.js.下载"></script>
	<script type="text/javascript" crossorigin=""
		src="image/Member_Web_User_ModifyPhoto.js.下载"></script>
	<script type="text/javascript">
		var uploadURL = "//upd1.ajkimg.com/upload?rt=https://user.anjuke.com/user/photoUploadIframe";
		var saveURL = "//user.anjuke.com/ajax/modifyPhoto";
	</script>

	<div id="qb-sougou-search" style="display: none; opacity: 0;">
		<p>搜索</p>
		<p class="last-btn">复制</p>
		<iframe src="image/saved_resource.html"></iframe>
	</div>
</body>
<script type="text/javascript">
	function filestyle(a) {
		if (a == "over") {
			var a = document.getElementById("file")
			a.style.background = "#62ab00";
		}
		if (a == "out") {
			var a = document.getElementById("file")
			a.style.background = "##f8f8f8";
		}
	}

	function surebutton() {
		alert("laile");
		var file = document.getElementById("filelabel");//选择文件

	}
	function selectfile() {//选择图片后，将图片上传到img2，以便将图片从img2中显示到头像框框 
		//uploadpic头像框框
		var file = document.getElementById("filelabel");//选择文件
		alert(file.value);
	}

	function change(picId, fileId) {
		var pic = document.getElementById(picId);
		var file = document.getElementById(fileId);
		if (window.FileReader) { //chrome,firefox7+,opera,IE10+
			oFReader = new FileReader();
			oFReader.readAsDataURL(file.files[0]);
			oFReader.onload = function(oFREvent) {
				pic.src = oFREvent.target.result;
			};
		} else if (document.all) { //IE9-//IE使用滤镜，实际测试IE6设置src为物理路径发布网站通过http协议访问时还是没有办法加载图片
			file.select();
			file.blur(); //要添加这句，要不会报拒绝访问错误（IE9或者用ie9+默认ie8-都会报错，实际的IE8-不会报错）
			var reallocalpath = document.selection.createRange().text //IE下获取实际的本地文件路径
			//if (window.ie6) pic.src = reallocalpath; //IE6浏览器设置img的src为本地路径可以直接显示图片
			//else { //非IE6版本的IE由于安全问题直接设置img的src无法显示本地图片，但是可以通过滤镜来实现，IE10浏览器不支持滤镜，需要用FileReader来实现，所以注意判断FileReader先
			pic.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src=\""
					+ reallocalpath + "\")";
			pic.src = 'data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=='; //设置img的src为base64编码的透明图片，要不会显示红xx
			// }
		} else if (file.files) { //firefox6-
			if (file.files.item(0)) {
				url = file.files.item(0).getAsDataURL();
				pic.src = url;
			}
		}
	}
</script>
</html>
