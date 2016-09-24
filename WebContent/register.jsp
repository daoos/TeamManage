<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>注册界面</title>
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
	

	function reloadcode(obj, base) {
		var rand = new Date().getTime(); //这里用当前时间作为参数加到url中，是为了使URL发生变化，这样验证码才会动态加载，
		//只是一个干扰作用，无确实意义，但却又非常巧妙，呵呵
		obj.src = base + "randomCode.action?abc=" + rand; //其实服务器端是没有abc的字段的。
	}

</script>
</head>
<body class="withvernav">
	<div class="bodywrapper">
		<div id="contentwrapper" class="contentwrapper">


	<!-- 输出类型转换失败提示和校验失败提示 -->
	<%-- <s:fielderror/> --%>
			<form name="form1" action="regist" method="post" onSubmit="return check();">
				<table align="center">
					<caption>
						<h3>用户注册</h3>
					</caption>
					<tr>
						<td>用户名： <input type="text" name="name" />
						</td>

					</tr>

					<tr>
						<td>密 码： <input type="password" name="password" />
						</td>
					</tr>
					<tr>
						<td>验证码：<input type="text" name="chknumber" id="chknumber"
							maxlength="10" class="chknumber_input"> <img
							title="看不清楚请点击这里" width="50" height="20"
							src="<%=basePath%>randomCode" id="safecode"
							onclick="reloadcode(this,'<%=basePath%>')" />
						</td>
					</tr>
					<tr align="center">
						<td colspan="2"><input type="submit" value="注册" /> <input
							type="reset" value="重填" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>
<script language="javascript">
	function check() {
		if (form1.name.value == "") {
			alert("请输入用户名！");
			form1.name.focus();
			return false;
		}
		if (form1.password.value == "") {
			alert("请输入密码！");
			form1.password.focus();
			return false;
		}
		if (form1.chknumber.value == "") {
			alert("请输入验证码！");
			form1.chknumber.focus();
			return false;
		}
	}
</script>