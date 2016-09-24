<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>500错误提示页面</title>
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
<div class="bodywrapper">
    <div class="topheader orangeborderbottom5">
        <div class="left">
             <h1 class="logo">Ama.<span>Admin</span></h1>
            <span class="slogan">后台管理系统</span>
            
            <div class="search">
            	<form action="" method="post">
                	<input type="text" name="keyword" id="keyword" value="Enter keyword(s)" />
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<!--<div class="notification">
                <a class="count" href="notifications.jsp"><span>9</span></a>
        	</div>
			-->
            <div class="userinfo">
            	<img src="images/thumbs/avatar.png" alt="" />
                <span>Juan Dela Cruz</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">            	<div class="avatar">
                	<a href=""><img src="images/thumbs/avatarbig.png" alt="" /></a>
                    <div class="changetheme">
                    	Change theme: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a>
                    </div>
                </div><!--avatar-->
<div class="userdata">
                	<h4>Juan Dela Cruz</h4>
                    <span class="email">youremail@yourdomain.com</span>
                    <ul>
                    	<li><a href="editprofile.jsp">Edit Profile</a></li>
                        <li><a href="accountsettings.jsp">Account Settings</a></li>
                        <li><a href="help.jsp">Help</a></li>
                        <li><a href="index.jsp">Sign Out</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="contentwrapper padding10">
    	<div class="errorwrapper error403">
        	<div class="errorcontent">
                <h1>500 Internal Server Error</h1>
                <h3>The server encountered an internal error and was unable to complete your request.</h3>
                
                <p>Please contact the server administrator <strong>webmaster@yourdomain.com</strong> and informed them of the time the error occurred.<br /> More information about this error may be available in the server error log.</p>
                <br />
                <button class="stdbtn btn_black" onclick="history.back()">Go Back to Previous Page</button> &nbsp; 
                <button onclick="location.href='dashboard.jsp'" class="stdbtn btn_orange">Go Back to Dashboard</button>
            </div><!--errorcontent-->
        </div><!--errorwrapper-->
    </div>    
    
    
</div><!--bodywrapper-->

</body>
</html>