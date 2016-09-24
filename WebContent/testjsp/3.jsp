<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
	<head>
		<title>注册界面</title>
		<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
	
<script>

	function findByName() {
		$.ajax( {
			url : 'login!findByName',
			data : {
				name : $("#name").val()
			},
			type : 'post',
			dataType : 'text',
			success : function(data) {
				if ('exist' === data) {
					$('#nametip').text('存在该用户');
				} else {
					$('#nametip').text('不存在该用户');
				}
			},
			error : function() {
				alert("异常！");
			}
		});
	}
</script>
	</head>
	<body>
		<form action="login!register" method="post">
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
