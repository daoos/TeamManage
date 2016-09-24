<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/plugins/charCount.js"></script>
<script type="text/javascript" src="js/plugins/ui.spinner.min.js"></script>
<script type="text/javascript" src="js/plugins/chosen.jquery.min.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/forms.js"></script>
<script type="text/javascript">
	//初始化页面时验证是否记住了密码 
	$(document).ready(function() {
		if ($.cookie("rmbUser") == "true") {
			$("#rmbUser").attr("checked", true);
			$("#username").val($.cookie("userName"));
			$("#password").val($.cookie("passWord"));
		}
	});
	//保存用户信息 
	function saveUserInfo() {
		if ($("#rmbUser").attr("checked") == true) {
			var userName = $("#username").val();
			var passWord = $("#password").val();
			$.cookie("rmbUser", "true", {
				expires : 7
			}); // 存储一个带7天期限的 cookie 
			$.cookie("userName", userName, {
				expires : 7
			}); // 存储一个带7天期限的 cookie 
			$.cookie("passWord", passWord, {
				expires : 7
			}); // 存储一个带7天期限的 cookie 
		} else {
			$.cookie("rmbUser", "false", {
				expires : -1
			});
			$.cookie("userName", '', {
				expires : -1
			});
			$.cookie("passWord", '', {
				expires : -1
			});
		}
	}

	function reloadcode(obj, base) {
		var rand = new Date().getTime(); //这里用当前时间作为参数加到url中，是为了使URL发生变化，这样验证码才会动态加载，
		//只是一个干扰作用，无确实意义，但却又非常巧妙，呵呵
		obj.src = base + "randomCode.action?abc=" + rand; //其实服务器端是没有abc的字段的。
	}
</script>
</head>
<body class="loginpage">
	<div class="loginbox">
		<div class="loginboxinner">
			<div class="logo">
				<h1 class="logo">
					Team.<span>Admin</span>
				</h1>
				<span class="slogan">后台管理系统</span>
			</div>
			<!--logo-->
			<br clear="all" />
			<br />
			<div class="nousername">
				<div class="loginmsg">密码不正确.</div>
			</div>
			<!--nousername-->
			<div class="nopassword">
				<div class="loginmsg">密码不正确.</div>
				<div class="loginf">
					<div class="thumb">
						<img alt="" src="images/thumbs/avatar1.png" />
					</div>
					<div class="userlogged">
						<h4></h4>
						<a href="index.html">Not <span></span>?
						</a>
					</div>
				</div>
				<!--loginf-->
			</div>
			<!--nopassword-->
			<form action="login" method="post">
				<div class="username">
					<div class="usernameinner">
						<input type="text" name="username" id="username" />
					</div>
				</div>
				<div class="password">
					<div class="passwordinner">
						<input type="password" name="password" id="password" />
					</div>
				</div>

				<button type="submit">登录</button>
				<div class="keep">
					<input type="checkbox" id="rmbUser" onclick="saveUserInfo()" /> 记住密码
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="register.jsp"
						font="#defada">用户注册</a>
				</div>
				<div></div>
			</form>
		</div>
		<!--loginboxinner-->
	</div>
	<!--loginbox-->
</body>
</html>