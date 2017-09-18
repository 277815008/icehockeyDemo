<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>我的中心页面</title>
		<link rel="stylesheet" href="../../css/part8/wodezhongxinyemian.css" />
		<link rel="stylesheet" href="../../css/jqueryMobile/jquery.mobile-1.4.5.min.css" />
		<script src="../../js/jQuery/jquery-2.2.3.min.js"></script>
		<script src="../../js/jqueryMobile/jquery.mobile-1.4.5.min.js"></script>
		<script>
		(function(doc, win) {
			var docEl = doc.documentElement, resizeEvt = 'orientationchange' in window ? 'orientationchange'
					: 'resize', recalc = function() {
				var clientWidth = docEl.clientWidth;
				if (!clientWidth)
					return;
				docEl.style.fontSize = 16 * (clientWidth / 720) + 'px';
			};

			if (!doc.addEventListener)
				return;
			win.addEventListener(resizeEvt, recalc, false);
			doc.addEventListener('DOMContentLoaded', recalc, false);
		})(document, window);
		</script>
	<script type="text/javascript">
			$(document).ready(function(){
			  $(".shouye").click(function(){
			    window.location.href="../part1/zhukongyemian.jsp";
			  });
			  $(".zhanshu").click(function(){
			    window.location.href="../part7/zhanshubanzhuyemian.jsp";
			  });
			  $(".zhandui").click(function(){
			    window.location.href="";
			  });
			  $(".wode").click(function(){
			    window.location.href="../part8/wodezhongxin.jsp";
			  });
			});
		</script>
		<title></title>
	</head>

	<body>

		<div data-role="page" class="main">
			<div class="button1" onclick="javascript:history.back(-1);">
				<img src="../../img/part8/back.png" />
			</div>
			<div class="button2" onclick="qiandaoClick()">
				<span id="qiandao">
					每日签到	
				</span>
			</div>
			<h1 class="head">
				我的中心
			</h1>

			<div id="kapian">
				<img src="../../img/part8/man.png" width="50px" height="50px" />
				<div class="shuju">
					<div id="shuju1">
						<span>签到次数</span>

					</div>
					<div id="shuju2">
						<span>管理球员</span>
					</div>
					<div id="shuju3">
						<span>培训时间</span>
					</div>
				</div>
				<div class="shujuzhi">
					<div id="shujuzhi1">
						null
					</div>
					<div id="shujuzhi2">
						null
					</div>
					<div id="shujuzhi3">
						null
					</div>
				</div>
					

			</div>
			<div class="list">
				
				
				<div class="list1" onclick="wodezhengjianClick()" 
					<span>我的证件</span>
					<img src="../../img/part8/next1.png" style="position:fixed;top:30%; right: 10%;" />
					<hr style="position:fixed; right:10%;  width: 80%;" />
				</div>
				
				
				<div class="list2" onclick="yaoqinghaoyouClick()" 
					<span>邀请好友</span>
					<img src="../../img/part8/next1.png" style="position:fixed;top:36%; right: 10%;" />
					<hr style="position:fixed; right:10%;  width: 80%;" />
				</div>
				
				
				<div class="list3" onclick="xiaoxiClick()"
					<span>消息</span>
					<img src="../../img/part8/next1.png" style="position:fixed;top:42%; right: 10%;" />
					<hr style="position:fixed; right:10%;  width: 80%;" />
				</div>
				
				
				<div class="list4" onclick="yonghuxieyiClick()"
					<span>用户协议</span>
					<img src="../../img/part8/next1.png" style="position:fixed;top:48%; right: 10%;" />
					<hr style="position:fixed; right:10%;  width: 80%;" />
				</div>
				
				
				<div class="list5" onclick="yijianfankuiClick()"
					<span>意见反馈</span>
					<img src="../../img/part8/next1.png" style="position:fixed;top:54%; right: 10%;" />
					<hr style="position:fixed; right:10%;  width: 80%;" />
				</div>
				
				<div class="list6" onclick="shezhiClick()"
					<span>设置</span>
					<img src="../../img/part8/next1.png" style="position:fixed;top:60%; right: 10%;" />
					<hr style="position:fixed; right:10%;  width: 80%;" />
				</div>
				
				<div class="list7" onclick="qinglihuancunClick()"
					<span>清理缓存</span>
					<img src="../../img/part8/next1.png" style="position:fixed;top:66%; right: 10%;" />
					<hr style="position:fixed; right:10%;  width: 80%;" />
				</div>
				
				<div class="list8" onclick="jianchagengxinClick()"
					<span>检查更新</span>
					<img src="../../img/part8/next1.png" style="position:fixed;top:72%; right: 10%;" />
					<hr style="position:fixed; right:10%;  width: 80%;" />
				</div>
				
				<div class="list9" onclick="tuichudengluClick()"
					<span>用户协议</span>
					<img src="../../img/part8/next1.png" style="position:fixed;top:78%; right: 10%;" />
					<hr style="position:fixed; right:10%;  width: 80%;" />
				</div>
			</div>
			<div class="button">
							<div class="shouye" onclick="shouyeClick()">
								<span>首页</span>
							</div>
							<div  class="zhanshu" onclick="zhanshuClick()">
								<span>战术</span>
							</div>
							<div  class="zhandui" onclick="zhanduiClick()">
								<span>战队</span>
							</div>
							<div class="wode" onclick="wodeClick()">
								<span>我的</span>
							</div>
				   </div>	
	</body>

</html>