<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<link rel="stylesheet" rev="stylesheet" href="css/Login_IframeForm.css"
	type="text/css">
<style>


.form .submit-btn,.form .submit-btn:active {
	color: #;
	background: #;
}

.form .submit-btn:hover {
	color: #;
	background: #;
}

.form .submit-disable-btn,.form .submit-disable-btn:hover {
	cursor: #;
	background: #;
}

.hidden_error {
	visibility: hidden;
}
</style>
<body >
	<!--面板总-->
	<div class="login-content not-in-layer  ">
		<div class="head">
			<h3>快速登录</h3>
			<i class="iconfont" id="IframeLoginCloseBtn"></i>
		</div>

		<!-- form-content -->
		<div class="form-content" id="ifmFormContent">
			<div class="tab-wrap">
				<a class="" id="smsTab" href="javascript:void(0);"
					onclick="sms_pwd('sms')">快速注册</a> <i></i> <a class="cur"
					id="pwdTab" href="javascript:void(0);" onclick="sms_pwd('pwd')">账号密码登录</a>
			</div>
			<!--form wrap-->
			<div class="form-wrap">
				<div id="regist" style="display: none;">
					<!-- sms form -->
					<form class="form" autocomplete="off" id="smsLoginForm"
						action="login.do?method=regist" method="post">
						<!--账号-->
						<div class="item itemNode">
							<p class="hidden_error error errorItem" id="error_username">请按正确格式输入账号</p>
							<div class="control-item-wrap">
								<div class="control-item controlItemNode" id="username_regist">
									<i class="iconfont user-icon"></i> <i class="split user-split">|</i>
									<input class="ipt" id="phoneIpt" name="userlogin"
										maxlength="11" placeholder="账号位数不能超过11位" tabindex="1"
										type="text">
								</div>
							</div>
							<i class="hidden iconfont icon-ok iconOK"></i>
						</div>
						<!--密码-->
						<div class="item itemNode">
							<p class="hidden_error error errorItem" id="error_pass">请按正确格式输入密码</p>
							<div class="control-item-wrap">
								<div class="sms-transition" id="smsTransitionNode">
									<div class="control-item controlItemNode" id="pass_regist">
										<i class="iconfont lock-icon" tabindex="-1"></i> <i
											class="split lock-split" tabindex="-1">|</i> <input
											class="ipt" id="smsCaptchaIpt" name="regist_password"
											maxlength="20" placeholder="请输入密码" tabindex="2"
											type="password">
									</div>
									<!--<img class="captcha captchaNode" src="iframeform_data/captcha.jpeg" alt="验证码" tabindex="-1">
                                <a href="javascript:void(0);" class="refresh-btn iconfont" id="smsCaptchaRefreshBtn" tabindex="-1"></a>-->
								</div>
							</div>
							<i class="hidden iconfont icon-ok iconOK"></i>
						</div>



						<!--密码-->
						<div class="item itemNode">
							<p class="hidden_error error errorItem" id="error_pass2">两次输入的密码不一致</p>
							<div class="control-item-wrap">
								<div class="sms-transition" id="smsTransitionNode">
									<div class="control-item controlItemNode" id="pass2_regist">
										<i class="iconfont lock-icon" tabindex="-1"></i> <i
											class="split lock-split" tabindex="-1">|</i> <input
											class="ipt" id="smsCaptchaIpt2" name="regist_password"
											maxlength="20" placeholder="请确认密码" tabindex="2"
											type="password">
									</div>
								</div>
							</div>
							<i class="hidden iconfont icon-ok iconOK"></i>
						</div>





						<div class="check-item">
							<label id="smsCheckboxLabel"> <input id="smsCheckbox"
								checked="checked" type="checkbox"> <span
								class="checkbox-fake checkbox-fake-checked"> <i
									class="iconfont"></i>
							</span><span>我已阅读并接受</span>
							</label> <a
								href="https://kfzx.anjuke.com/faqDetail/queryDetail?faqId=104&amp;faqTypeId=10"
								target="_blank"> 《安居客用户服务协议》 </a> 及 <a
								href="https://kfzx.anjuke.com/faqDetail/queryDetail?faqId=104&amp;faqTypeId=10"
								target="_blank"> 《安居客隐私权政策》 </a>
						</div>
						<input name="style" value="1" type="hidden"> <input
							name="third_parts" value="111" type="hidden"> <input
							name="other_parts" value="111" type="hidden"> <input
							name="forms" value="11" type="hidden"> <input
							name="login_type" value="1" type="hidden"> <input
							name="history"
							value="aHR0cHM6Ly96aHUuenUuYW5qdWtlLmNvbS8/ZnJvbT1uYXZpZ2F0aW9u"
							type="hidden"> <input name="check_bind_phone" value="1"
							type="hidden"> <input name="token"
							value="YTc3OTNjZjQ5YjFhNzUwMzJlMGUxOWZiYTYxZGVmMDg="
							type="hidden"> <input id="token2NodeSms" name="token2"
							value="d5120889fffbabb1f3172a435cbaa4d5" type="hidden"> <input
							name="count_down" id="continueCountTimeNode" type="hidden">
						<input name="multi_form" value="0" type="hidden"> <input
							name="css" value="" type="hidden"> <input
							class="submit-btn" id="smsSubmitBtn" value="快速注册" type="submit"
							onclick="return regist_check()">
						<!-- sms form end -->
					</form>
				</div>

				<div id="login">
					<!-- pwd form -->
					<form class="form" autocomplete="off" id="pwdLoginForm"
						action="login.do?method=dologin" target="_top" method="post">
						<div class="item itemNode">
							<p class="hidden error errorItem" id="errorItemTopPwd">错误～</p>
							<div class="control-item-wrap auto-list-item-wrap">
								<div class="control-item controlItemNode">
									<i class="iconfont user-icon"></i> <i class="split user-split">|</i>
									<input class="ipt" id="pwdUserNameIpt" name="username"
										value="${userlogin}" maxlength="30"
										placeholder="手机号/邮箱/安居客用户名" tabindex="1" type="text">
								</div>
								<ul class="auto-ul none" id="autoUl">
									<li><span class="domain domainNode"></span><span
										class="mail emailNode">@qq.com</span></li>
									<li><span class="domain domainNode"></span><span
										class="mail emailNode">@163.com</span></li>
									<li><span class="domain domainNode"></span><span
										class="mail emailNode">@126.com</span></li>
									<li><span class="domain domainNode"></span><span
										class="mail emailNode">@sina.com</span></li>
									<li><span class="domain domainNode"></span><span
										class="mail emailNode">@sohu.com</span></li>
								</ul>
							</div>
							<i class="hidden iconfont icon-ok iconOK"></i>
						</div>
						<!--密码-->
						<div class="item itemNode">
							<p class="hidden_error error errorItem" id="error_pwd">密码错误</p>
							<div class="control-item-wrap">
								<div class="sms-transition" id="pwdTransitionNode">
									<div class="control-item controlItemNode" id="pwdiserror">
										<i class="iconfont lock-icon" tabindex="-1"></i> <i
											class="split lock-split" tabindex="-1">|</i> <input
											class="ipt" id="pwdIpt" name="password" maxlength="40"
											placeholder="请输入密码" tabindex="2" type="password">
									</div>
									<div class="control-item control-item-md controlItemNode">
										<i class="iconfont img-icon" tabindex="-1"></i> <i
											class="split" tabindex="-1">|</i> <input class="ipt"
											id="pwdCaptchaIpt" name="captcha" maxlength="4"
											placeholder="请输入图片验证码" tabindex="-1" type="text">
									</div>
									<img class="captcha captchaNode"
										src="iframeform_data/captcha.jpeg" alt="验证码" tabindex="-1">
									<a href="javascript:void(0);" class="refresh-btn iconfont"
										id="pwdCaptchaRefreshBtn" tabindex="-1"></a>
								</div>
							</div>
						</div>
						<!--【登录】check-->
						<div class="check-item">
							<label id="pwdCheckboxLabel"> <input id="pwdCheckbox"
								checked="checked" type="checkbox"> <span
								class="checkbox-fake checkbox-fake-checked"> <i
									class="iconfont"></i>
							</span><span>我已阅读并接受</span>
							</label> <a
								href="https://kfzx.anjuke.com/faqDetail/queryDetail?faqId=104&amp;faqTypeId=10"
								target="_blank">用户服务协议</a>
						</div>
						<input name="style" value="1" type="hidden"> <input
							name="third_parts" value="111" type="hidden"> <input
							name="other_parts" value="111" type="hidden"> <input
							name="forms" value="11" type="hidden"> <input
							name="login_type" value="2" type="hidden"> <input
							name="history"
							value="aHR0cHM6Ly96aHUuenUuYW5qdWtlLmNvbS8/ZnJvbT1uYXZpZ2F0aW9u"
							type="hidden"> <input name="check_bind_phone" value="1"
							type="hidden"> <input name="token"
							value="YTc3OTNjZjQ5YjFhNzUwMzJlMGUxOWZiYTYxZGVmMDg="
							type="hidden"> <input id="token2NodePwd" name="token2"
							value="d5120889fffbabb1f3172a435cbaa4d5" type="hidden"> <input
							name="multi_form" value="0" type="hidden"> <input
							class="submit-btn" id="pwdSubmitBtn" value="立即登录" type="submit"
							onclick="return login_check()">
						<!-- pwd form end -->
					</form>
				</div>

				<!--end form wrap-->
			</div>
			<!-- form-content -->
		</div>
		<!--第三方登录，总体-->
		<div>
			<!--其他登录账户-->
			<div class="third-login-title" id="thirdLoginTitle">
				<p class="line"></p>
				<p class="doc">
					<span>其他账户登录</span>
				</p>
			</div>
			<div class="thirds-wrap" id="thirdsWrap">
				<!-- QQ登录展示 -->
				<a id="QQLogin" class="qq iconfont"
					href="https://login.anjuke.com/login/extlogin?login_type=qq&amp;check_bind_phone=1&amp;history=aHR0cHM6Ly96aHUuenUuYW5qdWtlLmNvbS8/ZnJvbT1uYXZpZ2F0aW9u"
					target="_blank" _soj="login_page_qq"></a>
				<!-- 微博登录展示 -->
				<a id="weiboLogin" class="weibo iconfont"
					href="https://login.anjuke.com/login/extlogin?login_type=weibo_pc&amp;check_bind_phone=1&amp;history=aHR0cHM6Ly96aHUuenUuYW5qdWtlLmNvbS8/ZnJvbT1uYXZpZ2F0aW9u"
					target="_blank" _soj="login_page_weibo"></a>
				<!-- 微信登录展示 -->
				<a id="weixinLogin" class="weixin iconfont"
					href="https://login.anjuke.com/login/extlogin?login_type=weixin_pc&amp;check_bind_phone=1&amp;history=aHR0cHM6Ly96aHUuenUuYW5qdWtlLmNvbS8/ZnJvbT1uYXZpZ2F0aW9u"
					target="_blank" _soj="login_page_weichat"></a>
			</div>
			<!--第三方登录，总体end-->
		</div>
		<!--其他登陆-->
		<div class="other-login-wrap" id="otherLoginWrap">
			<p class="title">客户登录</p>
			<p>
				<i class="iconfont"></i><a
					href="https://svip.fang.anjuke.com/login" target="_blank"
					_soj="login_anjuke">房易通帐号 <i>&gt;</i></a>
			</p>
			<p>
				<i class="iconfont"></i><a href="http://my.anjuke.com/fxb/login"
					target="_blank" _soj="login_anjuke">新房分销帐号 <i>&gt;</i></a>
			</p>
			<p>
				<i class="iconfont"></i><a
					href="http://vip.anjuke.com/user/brokerhome" target="_blank"
					_soj="login_anjuke">经纪人帐号 <i>&gt;</i></a>
			</p>
			<!--其他登陆end-->
		</div>
		<!--end板总-->
	</div>
</body>
<script type="text/javascript">
	//切换注册和登录的按钮
	function sms_pwd(a) {
		if (a == 'sms') {//切换为注册
			document.getElementById("smsTab").style.color = "#62ab00";
			document.getElementById("pwdTab").style.color = "#666";
			var a = document.getElementById("regist");
			var b = document.getElementById("login");
			b.style.display = "none";
			a.style.display = "block";
		} else {//切换为登录
			document.getElementById("pwdTab").style.color = "#62ab00";
			document.getElementById("smsTab").style.color = "#666";
			var b = document.getElementById("regist");
			var a = document.getElementById("login");
			b.style.display = "none";
			a.style.display = "block";
		}
	}

	//立即注册按钮的监听事件
	function regist_check() {
		var flag = false;
		var a = 0;
		var ret = /.*[\u4e00-\u9fa5]+.*$/;
		var name = document.getElementById("phoneIpt").value;
		var pass = document.getElementById("smsCaptchaIpt").value;
		var pass2 = document.getElementById("smsCaptchaIpt2").value;

		document.getElementById("error_username").innerHTML = "请按正确格式输入账号";
		//文本框置为黑色
		var items = document.getElementsByClassName("controlItemNode");
		for (var i = 0; i < items.length; i++) {
			items[i].style.border = "1px solid #ccc";
		}
		//items[1].style.border="1px solid #df3f3f";
		//错误提示置为不可见
		var hidden1 = document.getElementsByClassName("hidden_error");
		for (var num = 0; num < hidden1.length; num++) {
			hidden1[num].style.visibility = "hidden";
		}

		{//ajax检测是否被注册了
			var request = new XMLHttpRequest();
			request.open("get", "login.do?method=regist_check&userlogin="
					+ name, false);

			request.onreadystatechange = function() {
				if (request.readyState == 4 && request.status == 200) {
					var ret = request.responseText;
					if (ret == "true") {//有相同的账号
						var e_u = document.getElementById("error_username");
						e_u.innerHTML = "该账号已被注册"
						e_u.style.visibility = "visible";
						items[0].style.border = "1px solid #df3f3f";
						flag = true;
					} else {
						items[0].style.border = "1px solid #ccc";
					}
				}
			}
			request.send(null);
		}

		if (name.indexOf(" ") != -1 || name.match(ret) || name == "") {//账号不正确
			flag = true;
			items[0].style.border = "1px solid #df3f3f";
			document.getElementById("error_username").style.visibility = "visible";
		}

		if (pass == "" || pass.indexOf(" ") != -1 || pass.match(ret)) {//密码不正确
			flag = true;
			items[1].style.border = "1px solid #df3f3f";
			document.getElementById("error_pass").style.visibility = "visible";
		}

		if (pass != pass2) {//密码不一致
			flag = true;
			items[2].style.border = "1px solid #df3f3f";
			document.getElementById("error_pass2").style.visibility = "visible";
		}
		if (flag) {
			return false;
		}

	}

	function login_check() {
		var userlogin = document.getElementById("pwdUserNameIpt").value;
		var password = document.getElementById("pwdIpt").value;
		var request = new XMLHttpRequest();
		var pwd = document.getElementById("error_pwd");
		var flag = false;
		pwd.style.visibility = "hidden";
		document.getElementById("pwdiserror").style.border = "1px solid #ccc";

		request.open("get", "login.do?method=dologin_check&username="
				+ userlogin + "&password=" + password, false);

		request.onreadystatechange = function() {
			if (request.readyState == 4 && request.status == 200) {
				var ret = request.responseText;
				if (ret == "false") {//密码错误
					flag = true;
					pwd.style.visibility = "visible";
					document.getElementById("pwdiserror").style.border = "1px solid #df3f3f";
				}
			}
		}

		request.send(null);

		if (flag)
			return false
	}
</script>
</html>
