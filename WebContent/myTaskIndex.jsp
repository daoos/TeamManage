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
            <h1 class="pagetitle">任务情况</h1>
            <span class="pagedesc">The content below are loaded using ajax</span>
            
            <ul class="hornav blogmenu">
                <li class="current"><a href="allposts.jsp">未完成任务</a></li>
                <li><a href="published.jsp">参与的任务</a></li>
                <li><a href="draft.jsp">参与的任务</a></li>
                <li><a href="trash.jsp">已创建的任务</a></li>
            </ul>
        </div><!--pageheader-->
        <div id="contentwrapper" class="contentwrapper">
        </div><!--contentwrapper-->
    </div><!--centercontent-->
    
    
</div><!--bodywrapper-->

</body>
</html>