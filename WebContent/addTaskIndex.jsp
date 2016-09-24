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
<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/plugins/css3-mediaqueries.js"></script>
<![endif]-->
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
                <li class="current"><a href="allposts.jsp">任务</a></li>
               <!--  <li><a href="published.jsp">分享</a></li>
                <li><a href="draft.jsp">文件</a></li>
                <li><a href="trash.jsp">日程</a></li> -->
            </ul>
           
                    </div><!--contenttitle-->
                    <form class="stdform" action="AddTask" method="post">
                    <input name="projectId" type="hidden" value="<s:property value="projectId"/>" />
                        <p>
                        	<label>任务名称</label>
                            <span class="field"><input type="text" name="taskName" value="<s:property value="project.projectName"/>" class="smallinput" /></span>
                        </p>
                        <p>
                        	<label>任务内容</label>
                            <span class="field"><input type="text"  name="taskContent" class="smallinput" /></span>
                        </p>
                        <label >截止日期：</label><input name="deadline" type="date" value="2016-05-1"/>
                        <p>
                        	<label>成员添加移除</label>
                            <span id="dualselect" class="dualselect">
                            	<select class="uniformselect" name="select3" multiple="multiple" size="10">
                                    <option value="">Selection One</option>
                                    <option value="">Selection Two</option>
                                    
                                </select>
                                <span class="ds_arrow">
                                	<span class="arrow ds_prev">&laquo;</span>
                                    <span class="arrow ds_next">&raquo;</span>
                                </span>
                                <select name="select4" multiple="multiple" size="10">
                                	<option value=""></option>
                                </select>
                            </span>
                        </p>
                        <p class="stdformbutton">
                        	<button class="submit radius2" type="submit">提交</button>
                            <input type="reset" class="reset radius2" value="重置" />
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