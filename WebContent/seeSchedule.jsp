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

</head>
<body class="withvernav">
<div class="bodywrapper">
      <jsp:include page="frame/header.jsp" />

		<jsp:include page="frame/menu.jsp" />

		<jsp:include page="frame/leftmenu.jsp" />
    <div class="centercontent">
  
        <div class="pageheader">
            <h1 class="pagetitle"><s:property value="project.projectName"></s:property></h1>
            
            
            <ul class="hornav blogmenu">
                <li class="current"><a href="allposts.jsp">日程</a></li>
               <!--  <li><a href="published.jsp">分享</a></li>
                <li><a href="draft.jsp">文件</a></li>
                <li><a href="trash.jsp">日程</a></li> -->
            </ul>
            <h4>日程信息</h4>
                    </div><!--contenttitle-->
                    <form class="stdform" >
                    <input name="projectId" type="hidden" value="<s:property value="projectId"/>" />
                        <p>
                        	<label>日程名称</label>
                            <span class="field"><input readonly="readonly" type="text" name=title value="<s:property value="schedule.title"/>" class="smallinput" /></span>
                        </p>
                        <p>
                        	<label>日程地点</label>
                            <span class="field"><input type="text"  readonly="readonly" name="place" value="<s:property value="schedule.place"/>" class="smallinput" /></span>
                        </p>
                        <label >开始日期：</label><input name="startTime" value="<s:property value="schedule.startTime"/>"  readonly="readonly" type="date" />
                        <p>
                         </p>
                        <label >截止日期：</label><input name="endTime"  readonly="readonly" type="date" value="<s:property value="schedule.endTime"/>"/>
                    
                        <p class="stdformbutton">
                        	<a href="ScheduleIndex?projectId=<s:property value="projectId"/>">返回</a>
                        </p>
                    </form>
                    
            </div><!--subcontent-->
         
        </div><!--pageheader-->
        <div id="contentwrapper" class="contentwrapper">
        </div><!--contentwrapper-->
    </div><!--centercontent-->
</div><!--bodywrapper-->

</body>
</html>