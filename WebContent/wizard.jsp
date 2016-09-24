<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证提示页面</title>
<!--起到注册流程作用-->
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.smartWizard-2.0.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.colorbox-min.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function(){
		// Smart Wizard 	
  		jQuery('#wizard').smartWizard({onFinish: onFinishCallback});
      	jQuery('#wizard2').smartWizard({onFinish: onFinishCallback});
		jQuery('#wizard3').smartWizard({onFinish: onFinishCallback});
		jQuery('#wizard4').smartWizard({onFinish: onFinishCallback});
		
		function onFinishCallback(){
			alert('Finish Clicked');
		} 
		
		jQuery(".inline").colorbox({inline:true, width: '60%', height: '500px'});
		
		jQuery('select, input:checkbox').uniform();
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
<div class="bodywrapper"><!--topheader--><!--header-->
    <jsp:include page="frame/header.jsp" />

		<jsp:include page="frame/menu.jsp" /><!--leftmenu-->
        
		<jsp:include page="frame/leftmenu.jsp" />
    <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle">Forms</h1>
            <span class="pagedesc">The content below are loaded using inline data</span>
            
            <ul class="hornav">
                <li class="current"><a href="#default">Default</a></li>
                <li><a href="#tabbed">Tabbed</a></li>
                <li><a href="#vertical">Vertical</a></li>
            </ul>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
        
        	<div id="default" class="subcontent">
                    <!-- START OF DEFAULT WIZARD -->
                    <form class="stdform" method="post" action="">
                    <div id="wizard" class="wizard">
                    	<br />
                        <ul class="hormenu">
                            <li>
                            	<a href="#wiz1step1">
                                	<span class="h2">Step 1</span>
                                    <span class="dot"><span></span></span>
                                    <span class="label">Basic Information</span>
                                </a>
                            </li>
                            <li>
                            	<a href="#wiz1step2">
                                	<span class="h2">Step 2</span>
                                    <span class="dot"><span></span></span>
                                    <span class="label">Account Information</span>
                                </a>
                            </li>
                            <li>
                            	<a href="#wiz1step3">
                                	<span class="h2">Step 3</span>
                                    <span class="dot"><span></span></span>
                                    <span class="label">Terms of Agreement</span>
                                </a>
                            </li>
                        </ul>
                        
                        <br clear="all" /><br /><br />
                        	
                        <div id="wiz1step1" class="formwiz">
                        	<h4>Step 1: Basic Information</h4>
                        	
                                <p>
                                    <label>First Name</label>
                                    <span class="field"><input type="text" name="firstname" id="firstname" class="longinput" /></span>
                                </p>
                                
                                <p>
                                    <label>Last Name</label>
                                    <span class="field"><input type="text" name="lastname" id="lastname" class="longinput" /></span>
                                </p>
                                                                
                                <p>
                                    <label>Gender</label>
                                    <span class="field"><select name="selection" id="selection">
                                        <option value="">Choose One</option>
                                        <option value="1">Female</option>
                                        <option value="2">Male</option>
                                    </select></span>
                                </p>
                                
                        	
                            
                        </div><!--#wiz1step1-->
                        
                        <div id="wiz1step2" class="formwiz">
                        	<h4>Step 2: Account Information</h4>
                            
                                <p>
                                    <label>Account No</label>
                                    <span class="field"><input type="text" name="lastname" class="longinput" /></span>
                                </p>
                                <p>
                                    <label>Address</label>
                                    <span class="field"><textarea cols="80" rows="5" name="location"></textarea></span>
                                </p>
                                                                                               
                        </div><!--#wiz1step2-->
                        
                        <div id="wiz1step3">
                        	<h4>Step 3: Terms of Agreement</h4>
                            <div class="par terms">
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                                <p><input type="checkbox"  /> I agree with the terms and agreement...</p>
                            </div>
                        </div><!--#wiz1step3-->
                        
                    </div><!--#wizard-->
                    </form>
                    <!-- END OF DEFAULT WIZARD -->
                    
                    <br /><br />
                    
            </div><!-- #default -->
            
            
            <div id="tabbed" class="subcontent" style="display: none">
            
                    <!-- START OF TABBED WIZARD -->
                    <form class="stdform" method="post" action="">
                    <div id="wizard2" class="wizard">
                    	
                        <ul class="tabbedmenu">
                            <li>
                            	<a href="#wiz1step2_1">
                                	<span class="h2">STEP 1</span>
                                    <span class="label">Basic Information</span>
                                </a>
                            </li>
                            <li>
                            	<a href="#wiz1step2_2">
                                	<span class="h2">STEP 2</span>
                                    <span class="label">Account Information</span>
                                </a>
                            </li>
                            <li>
                            	<a href="#wiz1step2_3">
                                	<span class="h2">STEP 3</span>
                                    <span class="label">Terms of Agreement</span>
                                </a>
                            </li>
                        </ul>
                        
                        <br clear="all" /><br /><br />
                        	
                        <div id="wiz1step2_1" class="formwiz">
                        	<h4>Step 1: Basic Information</h4>
                        	
                                <p>
                                    <label>First Name</label>
                                    <span class="field"><input type="text" name="firstname" class="longinput" /></span>
                                </p>
                                
                                <p>
                                    <label>Last Name</label>
                                    <span class="field"><input type="text" name="lastname" class="longinput" /></span>
                                </p>
                                                                
                                <p>
                                    <label>Gender</label>
                                    <span class="field"><select name="selection">
                                        <option value="">Choose One</option>
                                        <option value="1">Female</option>
                                        <option value="2">Male</option>
                                    </select></span>
                                </p>
                                
                        	
                            
                        </div><!--#wiz1step2_1-->
                        
                        <div id="wiz1step2_2" class="formwiz">
                        	<h4>Step 2: Account Information</h4> 
                            
                                <p>
                                    <label>Account No</label>
                                    <span class="field"><input type="text" name="lastname" class="longinput" /></span>
                                </p>
                                <p>
                                    <label>Address</label>
                                    <span class="field"><textarea cols="80" rows="5" name="location"></textarea></span>
                                </p>
                                                                                               
                        </div><!--#wiz1step2_2-->
                        
                        <div id="wiz1step2_3">
                        	<h4>Step 3: Terms of Agreement</h4>
                            <div class="par terms">
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                                <p><input type="checkbox"  /> I agree with the terms and agreement...</p>
                            </div>
                        </div><!--#wiz1step2_3-->
                        
                    </div><!--#wizard-->
                    </form>
                                        
                    <!-- END OF TABBED WIZARD -->
                                
            </div><!-- #tabbed -->
            
            <div id="vertical" class="subcontent" style="display: none">
            
                    <!-- START OF VERTICAL WIZARD -->
                    <form class="stdform" method="post" action="">
                    <div id="wizard3" class="wizard verwizard">
                    	
                        <ul class="verticalmenu">
                            <li>
                            	<a href="#wiz1step3_1">
                                    <span class="label">Step 1: Basic Information</span>
                                </a>
                            </li>
                            <li>
                            	<a href="#wiz1step3_2">
                                    <span class="label">Step 2: Account Information</span>
                                </a>
                            </li>
                            <li>
                            	<a href="#wiz1step3_3">
                                    <span class="label">Step 3: Terms of Agreement</span>
                                </a>
                            </li>
                        </ul>
                                                	
                        <div id="wiz1step3_1" class="formwiz">
                        	<h4>Step 1: Basic Information</h4> 
                        	
                                <p>
                                    <label>First Name</label>
                                    <span class="field"><input type="text" name="firstname" class="longinput" /></span>
                                </p>
                                
                                <p>
                                    <label>Last Name</label>
                                    <span class="field"><input type="text" name="lastname" class="longinput" /></span>
                                </p>
                                                                
                                <p>
                                    <label>Gender</label>
                                    <span class="field"><select name="selection">
                                        <option value="">Choose One</option>
                                        <option value="1">Female</option>
                                        <option value="2">Male</option>
                                    </select></span>
                                </p>
                                
                        	
                            
                        </div><!--#wiz1step3_1-->
                        
                        <div id="wiz1step3_2" class="formwiz">
                        	<h4>Step 2: Account Information</h4> 
                            
                                <p>
                                    <label>Account No</label>
                                    <span class="field"><input type="text" name="lastname" class="longinput" /></span>
                                </p>
                                <p>
                                    <label>Address</label>
                                    <span class="field"><textarea cols="80" rows="5" name="location" class="longinput"></textarea></span>
                                </p>
                                                                                               
                        </div><!--#wiz1step3_2-->
                        
                        <div id="wiz1step3_3">
                        	<h4>Step 3: Terms of Agreement</h4>
                            <div class="par terms">
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
                                <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                                <p><input type="checkbox"  /> I agree with the terms and agreement...</p>
                            </div>
                        </div><!--#wiz1step3_3-->
                        
                    </div><!--#wizard-->
                    </form>
                    
                    <br clear="all" /><br />
                    
                    <!-- END OF VERTICAL WIZARD -->
                    
            </div><!--#vertical-->
            
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>