<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	</head>
	<link rel="stylesheet" rev="stylesheet" href="css/addgoods2.css" type="text/css">
	<link rel="stylesheet" rev="stylesheet" href="css/addgoods.css" type="text/css">
	<style>
		
	</style>
	<style type="text/css">
		.white-content{
			position: relative;
			background: #fff;
			width: 55%;
			margin: 70px auto;
			box-shadow: 0 0 8px #888;
			border-radius: 5px;
			min-height: 500px;
			padding: 0 20px 20px;    
		}
		
		.content-a-upload {
			position: relative;
			padding: 0px 1px 10px 1px;
			height: 40px;
			width: 110px;
			font: 400 16px/60px "宋体";
			text-align: center;
			cursor: pointer;
			color: #fff;
    		font-size: 21px;
			background: #ff612a;
			border: 1px solid #ddd;
			border-radius: 7px;
			overflow: hidden;
			display: inline-block;
			text-decoration: none;
			margin-top: 3px;
		}
		
		.content-a-upload input {
			position: absolute;
			font-size: 100px;
			height: 77px;
			right: 0;
			top: 0;
			opacity: 0;
			cursor: pointer;
		}
		
		.content-a-upload:hover {
			color: #444;
			background: #ff6a8e;
			border-color: #ccc;
			text-decoration: none
		}
		
		.fileimg{
			width: 278px;
			height: 210px;
			margin-top: 10px;
		}
		.subbutton{
			letter-spacing: 5px;
			margin:0 auto;
			margin-top: 10px;
			border-radius: 3px;
			margin-top: 20px;
			padding: 0;
			display: block;
			font-size: 22px;
			color: #fff;
			text-align: center;
			width: 400px;
			height: 70px;
			line-height: 50px;
			background: #62ab00;
			border: 0;
			outline: 0;
			text-decoration: none;
			font-family: "Microsoft YaHei", "宋体", Arial, "\5B8B\4F53", Helvetica, sans-serif;
		}
		.subbutton:hover{
			cursor: pointer;
			background: #4a8200;
		}
	</style>
	<body>
		<div class="user-nav">
			<a class="logo-link" href="http://anjuke.com/"><i class="ajk-icon user-iconfont"></i></a>
		</div>
		<!--中部主体-->
		<div class="content" id="content" style="width: 100%;">
			<!-- 白板-->
			<div class="white-content">
				<!--form-->
				<div class="addform">
					<div class="head">
						<h3>发布租房</h3>
					</div>
					<div class="infocontent">
						<form method="post" action="goods.do?method=addgoods&userid=${user.userid }" enctype="multipart/form-data">
							<div class="control-item controlItemNode">
								<span class="ipttitle">标题</span>
								<i class="split lock-split" tabindex="-1">|</i>
                                <input class="ipt" id="titleipt" name="title" maxlength="30" placeholder="参考格式：朝阳区兴盛花园3室1厅整租3000元" tabindex="1" type="text">
                            </div>
                            <div class="control-item controlItemNode">
								<span class="ipttitle">小区</span>
								<i class="split lock-split" tabindex="-1">|</i>
                                <input class="ipt" id="communityipt" name="community" maxlength="12" placeholder="小区/所属片区" tabindex="1" type="text">
                            </div>
                            <div class="control-item-slct controlItemNode">
                            	<span class="ipttitle">户型</span>
                            	<i class="split lock-split" tabindex="-1">|</i>
                            	<select class="slct" id="roomslct" name="room">
                            		<option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>
                            	</select>
                            	<span class="ipttitle" style="width: 30px;font-size: 21px;">室</span>
                            	<select class="slct" id="livingslct" name="living">
                            		<option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>
                            	</select>
                            	<span class="ipttitle" style="width: 30px;font-size: 21px;">厅</span>
                            	<select class="slct" id="toiletslct" name="toilet">
                            		<option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>
                            	</select>
                            	<span class="ipttitle" style="width: 30px;font-size: 21px;"  >卫</span>
                            </div>
                            
                            <div class="control-item-slct controlItemNode">
                            	<span class="ipttitle">楼层</span>
                            	<i class="split lock-split" tabindex="-1">|</i>
                            	<span class="ipttitle" style="width: 1px;font-size: 21px;margin-left: 50px;">第</span>
                            	<select class="slct" id="floorslct" name="floor">
                            		<option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option>
                            	</select>
                            	<span class="ipttitle" style="width: 30px;font-size: 21px;">楼</span>
                            	<span class="ipttitle" style="width: 1px;font-size: 21px;margin-left: 50px;">共</span>
                            	<select class="slct" id="totalfloorslct" name="totalfloor">
                            		<option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option><option>10</option><option>11</option><option>12</option><option>13</option><option>14</option><option>15</option><option>16</option><option>17</option><option>18</option><option>19</option><option>20</option>
                            	</select>
                            	<span class="ipttitle" style="width: 30px;font-size: 21px;">楼</span>
                            </div>
                            
                            <div class="control-item-slct controlItemNode">
                            	<span class="ipttitle">面积</span>
                            	<i class="split lock-split" tabindex="-1">|</i>
                            	<input name="totalarea" id="areaipt" type="text" class="slct"  style="cursor:auto ; margin-left: 51px;"/>
                            	<span class="ipttitle" style="width: 30px;font-size: 21px;">㎡</span>
                            	
                            	<span class="ipttitle" style="margin-left: 74px;">租金</span>
                            	<i class="split lock-split" tabindex="-1">|</i>
                            	<input name="rent" id="rentipt" type="text" class="slct"  style="cursor:auto"/>
                            	<span class="ipttitle" style="width: 80px;font-size: 21px; ">元/月</span>
                            </div>
                            
                            <div class="control-item-slct controlItemNode">
                            	<span class="ipttitle">朝向</span>
                            	<i class="split lock-split" tabindex="-1">|</i>
                            	<select class="slct" id="chaoxiangslct" name="chaoxiang" style="margin-left: 51px; width: 69px;">
                            		<option>东</option><option>西</option><option>南</option><option>北</option><option>东南</option><option>东北</option><option>西南</option><option>西北</option>
                            	</select>
                            	<span class="ipttitle" style="margin-left: 107px;">装修</span>
                            	<i class="split lock-split" tabindex="-1">|</i>
                            	<select class="slct" id="zhuangxiuslct" name="zhuangxiu" style="width: 105px;">
                            		<option>毛胚</option><option>普通装修</option><option>精装修</option><option>豪华装修</option>
                            	</select>
                            </div>
                            <div class="control-item controlItemNode">
								<span class="ipttitle">称呼</span>
								<i class="split lock-split" tabindex="-1">|</i>
                                <input class="ipt" id="owneript" name="owner" maxlength="30" placeholder="王先生/陈女士" tabindex="1" type="text">
                            </div>
                            <div class="control-item controlItemNode">
								<span class="ipttitle">电话</span>
								<i class="split lock-split" tabindex="-1">|</i>
                                <input class="ipt" id="phoneipt" name="phone" maxlength="11" placeholder="手机号码位数不能超过11位" tabindex="1" type="text">
                            </div>
                            <div class="control-item controlItemNode" style="height: 125px;">
                            	<textarea class="ipt" id="describeipt" name="describe" placeholder="房屋描述（非必填）" style="width: 550px;height: 90px; line-height:18px;"></textarea>
                            </div>
                            <div class="control-item controlItemNode" style="height: 125px;">
                            	<textarea class="ipt" id="requireipt" name="require" placeholder="租房要求（非必填）" style="width: 550px;height: 90px; line-height:18px;"></textarea>
                            </div>
                            <div class="control-item controlItemNode" style="height: 125px;">
                            	<textarea class="ipt" id="supportipt" name="support" placeholder="小区配套（非必填）" style="width: 550px;height: 90px; line-height:18px;"></textarea>
                            </div>
                            <div class="control-item controlItemNode" style="height: 300px; overflow: auto">
                            	<span class="content-a-upload" id="filespan">
                            		<input type="file" class="adc" name="file0" id="file0" onchange="change('img',this)">上传图片
                            		<input type="file" class="adc"  name="file1" id="file1" onchange="change('img',this)" style="display: none;">上传图片
                            		<input type="file" class="adc"  name="file2" id="file2" onchange="change('img',this)" style="display: none;">上传图片
                            		<input type="file" class="adc"  name="file3" id="file3" onchange="change('img',this)" style="display: none;">上传图片
                            		<input type="file" class="adc"  name="file4" id="file4" onchange="change('img',this)" style="display: none;">上传图片
                            		<input type="file" class="adc"  name="file5" id="file5" onchange="change('img',this)" style="display: none;">上传图片
                            		<input type="file" class="adc"  name="file6" id="file6" onchange="change('img',this)" style="display: none;">上传图片
                            	</span>
                            	<br /><br />
                            	<img id="img1" class="fileimg"/>
                            	<img id="img2" class="fileimg"/>
                            	<img id="img3" class="fileimg"/>
                            	<img id="img4" class="fileimg"/>
                            	<img id="img5" class="fileimg"/>
                            	<img id="img6" class="fileimg"/>
                            </div>
                            <input class="subbutton" type="submit" value="确认提交" />
						</form>
					</div>
				<!--form-->	
				</div>
			<!-- 白板-->	
			</div>
			
		<!--end 中部主体-->	
		</div>
	</body>
	<script>
		//使用IE条件注释来判断是否IE6，通过判断userAgent不一定准确
		var num=0;
		if(document.all)
			document.write('<!--[if lte IE 6]><script type="text/javascript">window.ie6= true<\/script><![endif]-->');
		// var ie6 = /msie 6/i.test(navigator.userAgent);//不推荐，有些系统的ie6 userAgent会是IE7或者IE8
		function change(picId, obj) {
			var files=document.getElementsByClassName("adc");
			var name="file";
			for (var i=0;i<files.length;i++) {
				files[i].style.display="none";
			}
			num=num*1+1;
			picId=picId+num;
			name=name+num;
			var fileId=obj.id;
			document.getElementById(name).style.display="block";
			var pic = document.getElementById(picId);
			var file = document.getElementById(fileId);
			if(window.FileReader) { //chrome,firefox7+,opera,IE10+
				oFReader = new FileReader();
				oFReader.readAsDataURL(file.files[0]);
				oFReader.onload = function(oFREvent) {
					pic.src = oFREvent.target.result;
				};
			} else if(document.all) { //IE9-//IE使用滤镜，实际测试IE6设置src为物理路径发布网站通过http协议访问时还是没有办法加载图片
				file.select();
				file.blur(); //要添加这句，要不会报拒绝访问错误（IE9或者用ie9+默认ie8-都会报错，实际的IE8-不会报错）
				var reallocalpath = document.selection.createRange().text //IE下获取实际的本地文件路径
				//if (window.ie6) pic.src = reallocalpath; //IE6浏览器设置img的src为本地路径可以直接显示图片
				//else { //非IE6版本的IE由于安全问题直接设置img的src无法显示本地图片，但是可以通过滤镜来实现，IE10浏览器不支持滤镜，需要用FileReader来实现，所以注意判断FileReader先
				pic.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod='image',src=\"" + reallocalpath + "\")";
				pic.src = 'data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw=='; //设置img的src为base64编码的透明图片，要不会显示红xx
				// }
			} else if(file.files) { //firefox6-
				if(file.files.item(0)) {
					url = file.files.item(0).getAsDataURL();
					pic.src = url;
				}
			}
		}
	</script>
</html>
