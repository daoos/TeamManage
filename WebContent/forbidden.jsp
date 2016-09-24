<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>禁止访问提示页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
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

<body>
<div class="bodywrapper"><!--topheader-->
    <jsp:include page="frame/header.jsp" />
    
    <div class="contentwrapper padding10">
    	<div class="errorwrapper error403">
        	<div class="errorcontent">
                <h1>403 Forbidden Access</h1>
                <h3>Your dont' have permission to access this page.</h3>
                
                <p>This is likely to be caused by one of the following</p>
                <ul>
                    <li>The author of the page has intentionally limited access to it.</li>
                    <li>The computer on which the page is stored is unreachable.</li>
                    <li>You like this page.</li>
                </ul>
                <br />
                <button class="stdbtn btn_black" onclick="history.back()">Go Back to Previous Page</button> &nbsp; 
                <button onclick="location.href='dashboard.jsp'" class="stdbtn btn_orange">Go Back to Dashboard</button>
            </div><!--errorcontent-->
        </div><!--errorwrapper-->
    </div>    
    
</div><!--bodywrapper-->
</body>
</html>