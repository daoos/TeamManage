<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>团队管理系统首页</title>
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
<script language="javascript" type="text/javascript">
	function foo() {
		var object=document.getElementById("select4");
		var len = object.options.length;
		var sel = object.options;
		var t2 = new Array();
		for (var i = 0; i < Number(len); i++) {
			t2[i] = sel[i].value;
		}
		document.getElementById("relatedMemberId").value = t2;
		//alter(t2);
	}
</script>
</head>
<body class="withvernav">
	<div class="bodywrapper">
	 <jsp:include page="../frame/header.jsp" />

	<jsp:include page="../frame/menu.jsp" />

	   <jsp:include page="../frame/leftmenu.jsp" />

<div class="centercontent">

			<div class="pageheader">
				<h1 class="pagetitle">Forms</h1>
			

				<ul class="hornav">
					<li class="current"><a href="#basicform">Basic</a></li>
					<!-- <li><a href="#validation">Validation</a></li> -->
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">

				<div id="basicform" class="subcontent">

					<div class="contenttitle2">
						<h3>用户资料更新</h3>
						
						
					</div>
					<!--contenttitle-->

					<form class="stdform" action="memberUpdate" method="post">
						
						<p>
							<label>用户名</label> 
							<span class="field"><input type="text"
								name="name"
								value="<s:property value="member.name"/>"
								class="smallinput" /></span> 
						</p>
						

						<p>
							<label>用户密码</label>
							<span class="field"><input type="password"
								name="password"
								value="<s:property value=""/>"
								class="smallinput" /></span> 
						</p>

						<p>
							<label>用户邮箱</label>
							<span class="field"><input type="text"
								name="email"
								value="<s:property value="member.emailAddress"/>"
								class="smallinput" /></span> 
						</p>
					
					<p>
							<label>成员添加</label> <span id="dualselect" class="dualselect">
								<select name="select3" multiple="multiple" size="10">
									<s:iterator value="members">
										<option value=<s:property value="memberId"/>><s:property
												value="name" /></option>
									</s:iterator>

							</select> <span class="ds_arrow"> <span class="arrow ds_prev">&laquo;</span>
									<span class="arrow ds_next">&raquo;</span>
							</span> <select id="select4" multiple="multiple" size="10"
								class="uniformselect">

							</select>
							</span>
						</p>
					

						<p class="stdformbutton">
							<input type="hidden" name="relatedMemberList" id="relatedMemberId" />
							<button class="submit radius2" type="submit" onclick="foo()">提交</button>
							<input type="reset" class="reset radius2" value="重置" />
						</p>


					</form>

					

				</div>
				<!--subcontent-->

			</div>
			<!--contentwrapper-->

		</div>
		<!-- centercontent -->
		

	</div>
	<!--bodywrapper-->

</body>
</html>