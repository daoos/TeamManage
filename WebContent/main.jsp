<%@ page contentType="text/html;charset=gb2312" language="java"%>
<html>
<title>加密的验证码</title>
<link href="CSS/style.css" rel="stylesheet" type="text/css">
<script >
	function myReload() {
	
		document.getElementById("createCheckCode").src = document
				.getElementById("createCheckCode").src
				+ "?nocache=" + new Date().getTime();
	}
</script>
<meta http-equiv="Content-Type" content="text/html;charset=gb2312">
<body>
	<form name="form1" method="post" action="deal.jsp"
							onSubmit="return check();">
			<table align="center">
				<caption>
					<h3>
						用户注册
					</h3>
				</caption>
		
				<tr>
					<td>
						用户名：
						<input type="text" id="name" name="name" onblur="findByName()" />
					</td>
					<td>
						<div id="nametip">

						</div>
					</td>
				</tr>

				<tr>
					<td>
						密 码：
						<input type="text" name="password" />
					</td>
				</tr>
				<tr>
					<td>
						重复密码：
						<input type="text" name="password2" />
					</td>
				</tr>
				<tr>
							
								<td >验证码：<input
									name="checkCode" title="验证码区分大小写" type="text" size="4"
									maxlength="4"><img
									src="PictureCheckCode" id="createCheckCode"
									style="border: #999999 solid 1px"> <a href="#"
									onClick="myReload()">看不清?换一个</a></td>
							
							
							</tr>
				<tr align="center">
					<td colspan="2">
						<input type="submit" value="注册" />
						<input type="reset" value="重填" />
					</td>
				</tr>
			</table>
		</form>
	


</body>
</html>
<script language="javascript">
	function check() {
		if (form1.username.value == "") {
			alert("请输入用户名！");
			form1.username.focus();
			return false;
		}
		if (form1.password.value == "") {
			alert("请输入密码！");
			form1.password.focus();
			return false;
		}
		if (form1.checkCode.value == "") {
			alert("请输入验证码！");
			form1.checkCode.focus();
			return false;
		}
	}
</script>












