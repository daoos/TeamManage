<%@ page contentType="text/html;charset=gb2312" language="java"%>
<html>
<title>���ܵ���֤��</title>
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
						�û�ע��
					</h3>
				</caption>
		
				<tr>
					<td>
						�û�����
						<input type="text" id="name" name="name" onblur="findByName()" />
					</td>
					<td>
						<div id="nametip">

						</div>
					</td>
				</tr>

				<tr>
					<td>
						�� �룺
						<input type="text" name="password" />
					</td>
				</tr>
				<tr>
					<td>
						�ظ����룺
						<input type="text" name="password2" />
					</td>
				</tr>
				<tr>
							
								<td >��֤�룺<input
									name="checkCode" title="��֤�����ִ�Сд" type="text" size="4"
									maxlength="4"><img
									src="PictureCheckCode" id="createCheckCode"
									style="border: #999999 solid 1px"> <a href="#"
									onClick="myReload()">������?��һ��</a></td>
							
							
							</tr>
				<tr align="center">
					<td colspan="2">
						<input type="submit" value="ע��" />
						<input type="reset" value="����" />
					</td>
				</tr>
			</table>
		</form>
	


</body>
</html>
<script language="javascript">
	function check() {
		if (form1.username.value == "") {
			alert("�������û�����");
			form1.username.focus();
			return false;
		}
		if (form1.password.value == "") {
			alert("���������룡");
			form1.password.focus();
			return false;
		}
		if (form1.checkCode.value == "") {
			alert("��������֤�룡");
			form1.checkCode.focus();
			return false;
		}
	}
</script>












