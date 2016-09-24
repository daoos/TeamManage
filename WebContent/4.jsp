<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    
    
    
   <script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
    
<script type="text/javascript">
$(function(){
    //为获取List对象按钮添加鼠标单击事件
    $("#getList").click(function(){
        $.getJSON("jsontest!returnList.action",function(data){
            //清空显示层中的数据
            $("#message").html("");
            //使用jQuery中的each(data,function(){});方法
            //从data.list获取User对象放入value之中
            $.each(data.list,function(i,value){
                $("#message").append("<div>第"+(i+1)+"个用户：</div>")
                         .append("<div><font color='red'>用户ID："+value.userId+"</font></div>")
                         .append("<div><font color='red'>用户名："+value.userName+"</font></div>")
                         .append("<div><font color='red'>密码："+value.password+"</font></div>");
            });
        });
    });
})    

</script>
  </head>
  
  <body>
  
    <input id="getList" type="button" value="获取List对象"/>
 
    <!-- 要显示信息的层 -->
    <div id="message"></div>

  </body>
</html>