<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布文章页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.alerts.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/tinymce/jquery.tinymce.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript">
jQuery(document).ready(function(){

	///// TINYMCE EDITOR /////
	jQuery('textarea.tinymce').tinymce({
	// Location of TinyMCE script
	script_url : 'js/plugins/tinymce/tiny_mce.js',

	// General options
	theme : "advanced",
	skin : "themepixels",
	plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,advlist",
	inlinepopups_skin: "themepixels",
	// Theme options
	theme_advanced_buttons1 : "bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,outdent,indent,blockquote,formatselect,fontselect,fontsizeselect",
	theme_advanced_buttons2 : "pastetext,pasteword,|,bullist,numlist,|,undo,redo,|,link,unlink,image,help,code,|,preview,|,forecolor,backcolor,removeformat,|,charmap,media,|,fullscreen",
	theme_advanced_buttons3 : "",
	theme_advanced_toolbar_location : "top",
	theme_advanced_toolbar_align : "left",
	theme_advanced_statusbar_location : "bottom",
	theme_advanced_resizing : true,

	// Example content CSS (should be your site CSS)
	content_css : "css/plugins/tinymce.css",
	content_css : "css/my.css",

	// Drop lists for link/image/media/template dialogs
	template_external_list_url : "lists/template_list.js",
	external_link_list_url : "lists/link_list.js",
	external_image_list_url : "lists/image_list.js",
	media_external_list_url : "lists/media_list.js",

	// Replace values for the template plugin
	template_replace_values : {
		username : "Some User",
		staffid : "991234"
	}
	});
		
		
	jQuery('.editornav a').click(function(){
		jQuery('.editornav li.current').removeClass('current');
		jQuery(this).parent().addClass('current');
		if(jQuery(this).hasClass('visual'))
			jQuery('#elm1').tinymce().show();
		else
			jQuery('#elm1').tinymce().hide();
		return false;
	});
});
</script>
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
  <!--topheader-->
  <!--header-->
  <!--leftmenu-->
  	<jsp:include page="frame/header.jsp" />

		<jsp:include page="frame/menu.jsp" />

		<jsp:include page="frame/leftmenu.jsp" />
  <div class="centercontent">
    <div class="pageheader"> <span class="profilepic"><img src="images/thumbs/avatarbig.png" alt="" /></span>
      <div class="profiletitle">
        <h1 class="pagetitle">Juan Dela Cruz</h1>
        <span class="pagedesc">Front-End Engineer / UI Designer</span> </div>
      <ul class="hornav">
        <li class="current"><a href="#profile">Profile</a></li>
        <li><a href="#editprofile">Edit Profile</a></li>
      </ul>
    </div>
    <!--pageheader-->
    
    <div id="contentwrapper" class="contentwrapper">
      <div class="two_third last profile_wrapper">
        <div id="profile" class="subcontent">
          <div class="contenttitle2">
            <h3>今天日程</h3>
          </div>
          <!--contenttitle-->
          
          <div class="profile_about">
            <p>目前还没有日程</p>
          </div>
          <div class="contenttitle2">
            <h3>未来日程</h3>
          </div>
          <!--contenttitle-->
          
          <div class="recentblog">
            <div class="blogthumb"> <a href="blogview.jsp"><img src="images/preview/blog1.png" alt="" /></a> </div>
            <!--blogthumb-->
            <div class="blogsummary">
              <p>目前还没有日程</p>
            </div>
            <!--blogsummary--> 
          </div>
          <!--recentblog--> 
          
          <br clear="all" />
          <div class="contenttitle2">
            <h3>第三个</h3>
          </div>
          <!--contenttitle-->
          
          <ul class="recentshots">
            <li> <a href="" class="th"><img src="images/preview/portfolio1.png" alt="" /></a>
              <h4><a href="">Admin Template</a></h4>
              <small>2 Comments</small> </li>
            <li> <a href="" class="th"><img src="images/preview/portfolio2.png" alt="" /></a>
              <h4><a href="">File Manager</a></h4>
              <small>0 Comment</small> </li>
          </ul>
          <br clear="all" />
        </div>
        <!--#profile-->
        
        <div id="editprofile" class="subcontent" style="display: none"> Edit profile form goes here... </div>
        <!--#editprofile--> 
        
        <br />
        <br />
      </div>
      <!--two_third--> 
      
      <br />
      <br />
    </div>
    <!--contentwrapper--> 
    
  </div>
  <!-- centercontent --> 
  
</div>
<!--bodywrapper-->

</body>
</html>