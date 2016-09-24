<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户支持页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/support.js"></script>
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
<div class="bodywrapper"><!--topheader--><!--header-->
    		<jsp:include page="frame/header.jsp" />

		<jsp:include page="frame/menu.jsp" />
    
    <div class="vernav2 iconmenu">
    	<ul>
        	<li><a href="#formsub" class="editor">Forms</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li><a href="forms.jsp">Basic Form</a></li>
                    <li><a href="wizard.jsp">Wizard</a></li>
                    <li><a href="editor.jsp">WYSIWYG</a></li>
                </ul>
            </li>
           <!-- <li><a href="filemanager.jsp" class="gallery">File Manager</a></li>-->
            <li><a href="elements.jsp" class="elements">Elements</a></li>
            <li><a href="widgets.jsp" class="widgets">Widgets</a></li>
            <li><a href="calendar.jsp" class="calendar">Calendar</a></li>
            <li class="current"><a href="support.jsp" class="support">Customer Support</a></li>
            <li><a href="typography.jsp" class="typo">Typography</a></li>
            <li><a href="tables.jsp" class="tables">Tables</a></li>
			<li><a href="buttons.jsp" class="buttons">Buttons &amp; Icons</a></li>
            <li><a href="#error" class="error">Error Pages</a>
            	<span class="arrow"></span>
            	<ul id="error">
               		<li><a href="notfound.jsp">Page Not Found</a></li>
                    <li><a href="forbidden.jsp">Forbidden Page</a></li>
                    <li><a href="internal.jsp">Internal Server Error</a></li>
                    <li><a href="offline.jsp">Offline</a></li>
                </ul>
            </li>
            <li><a href="#addons" class="addons">Addons</a>
            	<span class="arrow"></span>
            	<ul id="addons">
               		<li><a href="newsfeed.jsp">News Feed</a></li>
                    <li><a href="profile.jsp">Profile Page</a></li>
                    <li><a href="productlist.jsp">Product List</a></li>
                    <li><a href="photo.jsp">Photo/Video Sharing</a></li>
                </ul>
            </li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
        
    <div class="centercontent">
    
        <div class="pageheader notab">
            <h1 class="pagetitle">Customer Support</h1>
            <span class="pagedesc">This is a sample description of a page</span>
            
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper withrightpanel">
        
        	<div class="subcontent chatcontent">
                   
                   <div id="chatmessage" class="chatmessage radius2">
                   		<div id="chatmessageinner"></div><!--chatmessageinner-->
                   </div><!--chatmessage-->
                   	
                   <div class="messagebox radius2">
                   		<button>Send</button>
                   		<span class="inputbox">
                   			<input type="text" id="msgbox" name="msgbox"  />
                        </span>
                        
                   </div>
                   
            </div><!--subcontent-->
        
        </div><!--contentwrapper-->
        
        
        <div class="rightpanel">
        	<div class="rightpanelinner">
                <div class="widgetbox uncollapsible">
                	<div class="title"><h4>Online Users</h4></div>
                    <div class="widgetcontent nopadding">
                    	<div class="chatsearch">
                        	<input type="text" name="" value="Search" />
                        </div>
                    	<ul class="contactlist">
                        	<li class="online new"><a href=""><img src="images/thumbs/avatar5.png" alt="" /> <span>Hiccup Haddock III</span></a><span class="msgcount">3</span></li>
                            <li><a href=""><img src="images/thumbs/avatar6.png" alt="" /> <span>Astrid Hofferson</span></a></li>
                            <li class="online"><a href=""><img src="images/thumbs/avatar7.png" alt="" /> <span>Vector</span></a></li>
                            <li class="online"><a href=""><img src="images/thumbs/avatar8.png" alt="" /> <span>Puss in Boots</span></a></li>
                            <li class="online new"><a href=""><img src="images/thumbs/avatar9.png" alt="" /> <span>Humpty Dumpty</span></a><span class="msgcount">1</span></li>
                            <li><a href=""><img src="images/thumbs/avatar10.png" alt="" /> <span>Shrek</span></a></li>
                            <li><a href=""><img src="images/thumbs/avatar11.png" alt="" /> <span>Princess Fiona</span></a></li>
                        </ul>
                    </div><!--widgetcontent-->
                </div><!--widgetbox-->
            </div><!--rightpanelinner-->
        </div><!--rightpanel-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>