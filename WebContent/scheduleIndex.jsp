<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博客管理页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.alerts.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/blog.js"></script>
<script language="javascript">
  function ConfirmDel() {
		if (confirm("真的要删除该日程吗？")){
				return true;
		}else{
			return false;
	}
	}
</script>

</head>
<body class="withvernav">
<div class="bodywrapper"><!--topheader--><!--header--><!--leftmenu-->
    <jsp:include page="frame/header.jsp" />

		<jsp:include page="frame/menu.jsp" />

		<jsp:include page="frame/leftmenu.jsp" />
    <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle"><s:property value="project.projectName"></s:property></h1>
       

              
               <table  cellspacing="25">
			  <tr>
			    <th >日程标题</th>
			    <th >日程地点</th>
			    <th >开始时间</th>
			    <th >结束时间</th>
			    <th >发布作者</th>
			  </tr>
			  <s:iterator value="scheduleList" >
			  <tr>
			  <td><s:property value="title"/></td>
			  <td><s:property value="place"/></td>
			  <td><s:property value="startTime"/></td>
			  <td><s:property value="endTime"/></td>
			  <td><s:property value="endTime"/></td>
			  <td><a href="SeeSchedule?ScheduleId=<s:property value="ScheduleId"/>">查看详细</a></td>
			  <td><a href="DeleteSchedule?ScheduleId=<s:property value="ScheduleId"/>" onclick="javascript:return ConfirmDel();">
			删除日程</a></td>
			  </tr>
			  </s:iterator>
                </table>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
        </div><!--contentwrapper-->
    </div><!--centercontent-->
    
    
</div><!--bodywrapper-->

</body>
</html>