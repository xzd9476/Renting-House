<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
</head>
<link rel="stylesheet" rev="stylesheet" href="css/Login_Form.css"
	type="text/css">
<body>
	<!--顶部-->
	<div class="user-nav">
		<a class="logo-link" href="index.jsp"><img alt="" src="image/logo.jpg" style="margin-top: 10px" width="140" height="48"></a>
	</div>
	<!--中部主体-->
	<div class="content" id="content" style="width: 100%;">
		<!--登录面板大外包+外面背景-->
		<div class="login-wrap">
			<!--登录面板外包-->
			<div class="iframe-layer-mask not-in-layer   " id="iframeLoginMask">
				<div class="iframe-layer-bg"></div>
				<div class="iframe-login-wrap" id="iframeLoginWrap">
					<!-- loading -->
					<div class="loading-wrap none" id="loadingwrap">
						<div class="loading-item">
							<!--[if IE]> <div class="spinner-wrap"> <![endif]-->
							<div class="spinner">
								<div class="spinner-container container1">
									<div class="circle1"></div>
									<div class="circle2"></div>
									<div class="circle3"></div>
									<div class="circle4"></div>
								</div>
								<div class="spinner-container container2">
									<div class="circle1"></div>
									<div class="circle2"></div>
									<div class="circle3"></div>
									<div class="circle4"></div>
								</div>
								<div class="spinner-container container3">
									<div class="circle1"></div>
									<div class="circle2"></div>
									<div class="circle3"></div>
									<div class="circle4"></div>
								</div>
							</div>
							<!--[if IE]> </div> <![endif]-->
						</div>
						<p class="loading-tip">正在加载中，请稍后...</p>
					</div>
					<!-- loading end -->
					<!--登陆面板frame-->
					<iframe class="iframe-login-ifm" id="iframeLoginIfm"
						src="loginframe.jsp" scrolling="no" frameborder="0"></iframe>
				</div>
				<!--end登录面板外包-->
			</div>
			<!--end登录面板大外包+外面背景-->
		</div>
		<!--END中部主体-->
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
			<li><a href="javascript:void(0);" data-target="house_link">最新房源</a>
				<em class="spe-lines">|</em></li>
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

		<div class="cp-mod">
			<a rel="nofollow" href="https://kfzx.anjuke.com/" target="_blank">客户服务中心</a>
			邮箱：<a href="mailto:service@58ganji.com" target="_blank"
				rel="nofollow">service@58ganji.com</a>
			Copyright&nbsp;©&nbsp;2007-2018 www.anjuke.com All Rights Reserved <a
				href="http://www.miibeian.gov.cn/" rel="nofollow">ICP号：沪
				B2-20090008</a>
		</div>
		<!--ENDfooter-->
	</div>
</body>
</html>
