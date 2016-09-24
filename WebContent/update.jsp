<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forms | Amanda Admin Template</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="js/plugins/charCount.js"></script>
<script type="text/javascript" src="js/plugins/ui.spinner.min.js"></script>
<script type="text/javascript" src="js/plugins/chosen.jquery.min.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/forms.js"></script>

<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body class="withvernav">
<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo">Team.<span>Admin</span></h1>
        
            <div class="search" >
            	<form action="" method="post">
                	<input type="text" name="keyword" id="keyword" value="请输入" />
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<!--<div class="notification">
                <a class="count" href="ajax/notifications.jsp"><span>9</span></a>
        	</div>-->
            <div class="userinfo">
            	<img src="images/thumbs/avatar.png" alt="" />
                <span>管理员</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<a href=""><img src="images/thumbs/avatarbig.png" alt="" /></a>
                    <div class="changetheme">
                    	切换主题: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a>
                    </div>
                </div><!--avatar-->
                <div class="userdata">
                	<h4>Juan</h4>
                    <span class="email">youremail@yourdomain.com</span>
                    <ul>
                    	<li><a href="editprofile.jsp">编辑资料</a></li>
                        <li><a href="accountsettings.jsp">账号设置</a></li>
                        <li><a href="help.jsp">帮助</a></li>
                        <li><a href="index.jsp">退出</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="header">
    	<ul class="headermenu">
        	<li class="current"><a href="dashboard.jsp"><span class="icon icon-flatscreen"></span>项目</a></li>
            <li><a href="MyProjectIndex"><span class="icon icon-pencil"></span>我的</a></li>
            <li><a href="messages.jsp"><span class="icon icon-message"></span>查看信息</a></li>
            <li><a href="reports.jsp"><span class="icon icon-chart"></span>企业</a></li>
            <li><a href="reports.jsp"><span class="icon icon-chart"></span>日历</a></li>
        </ul>
        
       <div class="headerwidget">
        	<div class="earnings">
            	<div class="one_half">
                	<h4>Today's Earnings</h4>
                    <h2>$640.01</h2>
                </div><!--one_half-->
                <div class="one_half last alignright">
                	<h4>Current Rate</h4>
                    <h2>53%</h2>
                </div><!--one_half last-->
            </div><!--earnings-->
        </div><!--headerwidget-->
        
    </div><!--header-->
    
    <div class="vernav2 iconmenu">
    	<ul>
        	<li class="current"><a href="#formsub" class="editor">表单提交</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li><a href="forms.jsp">基础表单</a></li>
                    <li  class="current"><a href="wizard.jsp">表单验证</a></li>
                    <li><a href="editor.jsp">编辑器</a></li>
                </ul>
            </li>
         <!--   <li><a href="filemanager.jsp" class="gallery">文件管理</a></li>-->
            <li><a href="elements.jsp" class="elements">网页元素</a></li>
            <li><a href="widgets.jsp" class="widgets">网页插件</a></li>
            <li><a href="calendar.jsp" class="calendar">日历事件</a></li>
            <li><a href="support.jsp" class="support">客户支持</a></li>
            <li><a href="typography.jsp" class="typo">文字排版</a></li>
            <li><a href="tables.jsp" class="tables">数据表格</a></li>
			<li><a href="buttons.jsp" class="buttons">按钮 &amp; 图标</a></li>
            <li><a href="#error" class="error">错误页面</a>
            	<span class="arrow"></span>
            	<ul id="error">
               		<li><a href="notfound.jsp">404错误页面</a></li>
                    <li><a href="forbidden.jsp">403错误页面</a></li>
                    <li><a href="internal.jsp">500错误页面</a></li>
                    <li><a href="offline.jsp">503错误页面</a></li>
                </ul>
            </li>
            <li><a href="#addons" class="addons">其他页面</a>
            	<span class="arrow"></span>
            	<ul id="addons">
               		<li><a href="newsfeed.jsp">新闻订阅</a></li>
                    <li><a href="profile.jsp">资料页面</a></li>
                    <li><a href="productlist.jsp">产品列表</a></li>
                    <li><a href="photo.jsp">图片视频分享</a></li>
                    <li><a href="gallery.jsp">相册</a></li>
                    <li><a href="invoice.jsp">购物车</a></li>
                </ul>
            </li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
        
   <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle">Forms</h1>
            <span class="pagedesc">The content below are loaded using inline data</span>
            
            <ul class="hornav">
                <li class="current"><a href="#basicform">Basic</a></li>
                <li><a href="#validation">Validation</a></li>
            </ul>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
        	
        	<div id="basicform" class="subcontent">
                                
                    <div class="contenttitle2">
                        <h3>项目信息</h3>
                    </div><!--contenttitle-->

                    <form class="stdform" action="" method="post">
                    	
                        <p>
                        	<label>项目名称</label>
                            <span class="field"><input type="text" name="input1" class="smallinput" /></span>
                            <small class="desc">Small description of this field.</small>
                        </p>
                        
                        <p>
                        	<label>拥有者</label>
                            <span class="field"><input type="text" name="input2" class="mediuminput" /></span>
                        </p>
                        
                        <p>
                        	<label>项目分组</label>
                            <span class="field"><input type="text" name="input3" class="longinput" /></span>
                        </p>
                        
                        <p>
                        	<label>项目简介</label>
                            <span class="field"><textarea cols="80" rows="5" class="longinput"></textarea></span> 
                        </p>
                        
                        <p>
                        	<label>Textarea with Character Count</label>
                            <span class="field">
                                <textarea cols="80" rows="5" id="textarea2" class="longinput"></textarea>
                            </span> 
                        </p>
                        
                        <p>
                        	<label>项目类型</label>
                            <span class="field">
                            <select name="select" class="uniformselect">
                            	<option value="">媒体</option>
                                <option value="">设计</option>
                                <option value="">教育</option>
                                <option value="">生活</option>
                                <option value="">其他</option>
                            </select>
                            
                            </span>
                        </p>
                        
                        <p>
                        	<label>Disabled Select</label>
                            <span class="field">
							<select name="select" disabled="disabled" class="uniformselect">
                            	<option value="">Choose One</option>
                                <option value="">Selection One</option>
                                <option value="">Selection Two</option>
                                <option value="">Selection Three</option>
                                <option value="">Selection Four</option>
                            </select>
                            </span>
                        </p>
                        
                        <p>
                        	<label>Multiple Select</label>
                            <span class="field">
                            <select name="select2" multiple="multiple" size="5">
                                <option value="">Selection One</option>
                                <option value="">Selection Two</option>
                                <option value="">Selection Three</option>
                                <option value="">Selection Four</option>
                                <option value="">Selection Five</option>
                                <option value="">Selection Six</option>
                                <option value="">Selection Seven</option>
                                <option value="">Selection Eight</option>
                            </select>
                            </span>
                        </p>
                        
                        <p>
                        	<label>Dual Select</label>
                            <span id="dualselect" class="dualselect">
                            	<select class="uniformselect" name="select3" multiple="multiple" size="10">
                                    <option value="">Selection One</option>
                                    <option value="">Selection Two</option>
                                    <option value="">Selection Three</option>
                                    <option value="">Selection Four</option>
                                    <option value="">Selection Five</option>
                                    <option value="">Selection Six</option>
                                    <option value="">Selection Seven</option>
                                    <option value="">Selection Eight</option>
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
                        
                        <p>
                        	<label>Select with Search</label>
                            <span class="formwrapper">
                            	<select data-placeholder="Choose a Country..." class="chzn-select" style="width:350px;" tabindex="2">
                                  <option value=""></option> 
                                
                                  <option value="Wallis and Futuna">Wallis and Futuna</option> 
                                  <option value="Western Sahara">Western Sahara</option> 
                                  <option value="Yemen">Yemen</option> 
                                  <option value="Zambia">Zambia</option> 
                                  <option value="Zimbabwe">Zimbabwe</option>
                                </select>
                            </span>
                        </p>
                        
                        <p>
                        	<label>Enhanced Multiple Select</label>
                            <span class="formwrapper">
                                <select data-placeholder="Choose a Country..." class="chzn-select" multiple="multiple" style="width:350px;" tabindex="4">
                                  <option value=""></option> 
                                 
                                  
                                  <option value="Western Sahara">Western Sahara</option> 
                                  <option value="Yemen">Yemen</option> 
                                  <option value="Zambia">Zambia</option> 
                                  <option value="Zimbabwe">Zimbabwe</option>
                                </select>
                            </span>
                        </p>
                      
                                                                        
                        <p>
                        	<label>Checkboxes</label>
                            <span class="formwrapper">
                            	<input type="checkbox" name="check2" /> Unchecked Checkbox<br />
                            	<input type="checkbox" name="check2" checked="checked" /> Checked Checkbox <br />
                                <input type="checkbox" name="check2" disabled="disabled" /> Disabled Checkbox <br /> 
                                <input type="checkbox" name="check2" disabled="disabled" checked="checked" /> Disabled Checked Checkbox
                            </span>
                        </p>
                        
                        <p>
                        	<label>File Upload</label>
                            <span class="field">
                            	<input type="file" name="filename" />
                            </span>
                        </p>
                        
                        <p>
                        	<label>Input Tags</label>
                            <span class="field">
                            	<input name="tags" id="tags" class="longinput" value="foo,bar,baz" />
                            </span>
                        </p>
                        
                         <p>
                        	<label>Spinner</label>
                            <span class="field"><input type="text" id="spinner" name="" class="width50 noradiusright" /></span>
                            <small class="desc">Try to use mouse wheel.</small>
                        </p>
                        
                        <br clear="all" /><br />
                        
                        <p class="stdformbutton">
                        	<button class="submit radius2">提交</button>
                            <input type="reset" class="reset radius2" value="重置" />
                        </p>
                        
                        
                    </form>
                    
                    <br />
                    
					<div class="contenttitle2">
                        <h3>个人信息</h3>
                    </div><!--contenttitle-->
                    
					<form class="stdform stdform2" method="post" action="">
                    	<p>
                        	<label>姓名</label>
                            <span class="field"><input type="text" name="firstname" id="firstname2" class="longinput" /></span>
                        </p>
                        
                        <p>
                        	<label>Last Name</label>
                            <span class="field"><input type="text" name="lastname" id="lastname2" class="longinput" /></span>
                        </p>
			
			<p>
                            <label>性别</label>
                            <span class="field">
                            	<input type="radio" name="radiofield" />男 &nbsp; &nbsp;
                            	<input type="radio" name="radiofield" checked="checked" />女 &nbsp; &nbsp;
                                <input type="radio" name="radiofield" disabled="disabled" /> Disabled Radio  &nbsp; &nbsp;
                                <input type="radio" name="radiofield" checked="checked" disabled="disabled" /> Disabled Radio 
                            </span>
                        </p>
                        
                        <p>
                        	<label>邮箱</label>
                            <span class="field"><input type="text" name="email" id="email2" class="longinput" /></span>
                        </p>
                        
                        <p>
                        	<label>Location <small>You can put your own description for this field here.</small></label>
                            <span class="field"><textarea cols="80" rows="5" name="location" id="location2" class="longinput"></textarea></span>
                        </p>
                        
                        <p>
                        	<label>年龄</label>
                            <span class="field"><select name="selection" id="selection2">
                            	<option value="">10岁以下</option>
                                <option value="1">10-30岁</option>
                                <option value="2">30-60岁</option>
                                <option value="3">60-90岁</option>
                                <option value="4">90岁以上</option>
                            </select></span>
                        </p>
                        
                        
                        <p class="stdformbutton">
                        	<button class="submit radius2">提交</button>
                            <input type="reset" class="reset radius2" value="重置" />
                        </p>
                    </form>
					
                    <br />

            </div><!--subcontent-->
            
            <div id="validation" class="subcontent" style="display: none">
            	
                    <form id="form1" class="stdform" method="post" action="">
                    	<p>
                        	<label>First Name</label>
                            <span class="field"><input type="text" name="firstname" id="firstname" class="longinput" /></span>
                        </p>
                        
                        <p>
                        	<label>Last Name</label>
                            <span class="field"><input type="text" name="lastname" id="lastname" class="longinput" /></span>
                        </p>
                        
                        <p>
                        	<label>Email</label>
                            <span class="field"><input type="text" name="email" id="email" class="longinput" /></span>
                        </p>
                        
                        <p>
                        	<label>Location</label>
                            <span class="field"><textarea cols="80" rows="5" name="location" class="mediuminput" id="location"></textarea></span> 
                        </p>
                        
                        <p>
                        	<label>Select</label>
                            <span class="field">
                            <select name="selection" id="selection">
                            	<option value="">Choose One</option>
                                <option value="1">Selection One</option>
                                <option value="2">Selection Two</option>
                                <option value="3">Selection Three</option>
                                <option value="4">Selection Four</option>
                            </select>
                            </span>
                        </p>
                        
                        <br />
                        
                        <p class="stdformbutton">
                        	<button class="submit radius2">提交</button>
                        </p>
                    </form>

            </div><!--subcontent-->
        
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->

    
    
</div><!--bodywrapper-->

</body>
</html>