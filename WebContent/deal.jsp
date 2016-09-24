<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.Encode" %>

<%
	Encode encode=new Encode();
	String checkCode = request.getParameter("checkCode").toString();
	checkCode = encode.encodeByMD5(checkCode);	//进行MD5加密
	if ("".equals(checkCode) || checkCode == null) {
		out.println("<script>alert('请输入验证码！');window.location.href='index.jsp';</script>");
	} else {
		if (!checkCode.equals(session.getAttribute("randCheckCode"))) {
			out.println("<script>alert('您输入的验证码不正确！');history.back(-1);</script>");
		}
	}
	if("".equals(request.getParameter("username")) || "".equals(request.getParameter("password"))){
		out.println("<script>alert('请输入用户名或密码！');window.location.href='index.jsp';</script>");
	}else{
		if(!("mr".equals(request.getParameter("username")) && "mrsoft".equals(request.getParameter("password")))){
			out.println("<script>alert('您输入的用户名或密码不正确！');window.location.href='index.jsp';</script>");
		}
	}
%>
<html>
<head>
    <meta content="text/html; charset=gb2312" http-equiv="Content-Type" />
    <link href="CSS/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="778" height="275" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="115" colspan="2"><table width="778"  border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="784" height="115" align="center" valign="top"><img src="images/logo.jpg" width="778" height="115"></td>
  </tr>
</table></td>
  </tr>
  <tr>
    <td width="190"><a href="#" onClick="show_div('menu1')" ><img src="images/left_top.GIF" width="186" height="33"></a>
<table width="186" height="331" border="0" cellpadding="0" cellspacing="0" class="tableBorder_bold">
  <tr>
    <td height="323" align="center" valign="top">
	<!--基础信息管理-->
	<a href="#"><img name="Imgmenu1" border="0"
     src="images/menu_1.JPG" align="ABSMIDDLE" width="165" height="26"></a>
	<Div id="menu1">
  <table width="165" border="0" cellpadding="0" cellspacing="0" class="tableBorder">
   <tr><td width="18%" height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
       <td width="82%"><a href="#">客户信息管理</a></td>
  </tr>
  <tr><td height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
      <td><a href="#">商品信息管理</a></td>
  </tr>
  <tr><td height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
      <td><a href="#">供应商信息管理</a></td>
  </tr>
  <tr><td height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
      <td><a href="#">商品信息查询</a></td>
  </tr>
  <tr><td height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
      <td><a href="#">客户信息查询</a></td>
  </tr>
  <tr><td height="24" align="center">&nbsp;<img src="images/subMenu_ico.GIF" width="4" height="7"></td>
      <td><a href="#">供应商信息查询</a></td>
  </tr>
 </table>
</Div>
<!--库存管理-->
<a href="#" ><img name="Imgmenu3" align="ABSMIDDLE"
    src="images/menu_3.JPG" border="0" width="165" height="28"></a><br>
<!--销售管理-->
<a href="#"><img name="Imgmenu4" align="ABSMIDDLE"
    src="images/menu_4.JPG" border="0" width="165" height="28"></a><br>
<a href="#"><img name="Imgmenu5" align="ABSMIDDLE"
    src="images/menu_5.JPG" border="0" width="165" height="28"></a><br>

<a href="#"><img name="Imgmenu6" align="ABSMIDDLE"
    src="images/menu_6.JPG" border="0" width="165" height="28"></a><br>
<a href="index.jsp" ><img name="Imgmenu7" align="ABSMIDDLE"
    src="images/menu_7.JPG" border="0" width="165" height="28"></a><br>
	</td>
  </tr>
</table></td>
    <td width="588">&nbsp;</td>
  </tr>
</table>
</body>
</html>
