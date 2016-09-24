<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">

  function reloadcode(obj,base){
  var rand=new Date().getTime(); //这里用当前时间作为参数加到url中，是为了使URL发生变化，这样验证码才会动态加载，
            //只是一个干扰作用，无确实意义，但却又非常巧妙，呵呵
  obj.src=base+"randomCode.action?abc="+rand; //其实服务器端是没有abc的字段的。
  }

</script>
<title>测试页面</title>
</head>
<body>
<form action="testLogin" method="post">
  Username<input type="text" name="name"><br>
  Password<input type="text" name="password"><br>
  验证码：<input type="text" name="chknumber" id="chknumber" maxlength="10" class="chknumber_input">
  <img title="看不清楚请点击这里" width="50" height="20" src="<%=basePath%>randomCode" id="safecode" onclick="reloadcode(this,'<%=basePath%>')" /><br>
  <input type="submit" value="Loginin">
</form>
</body>
</html>