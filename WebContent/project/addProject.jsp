<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<jsp:include page="../frame/jsAndcss.jsp"></jsp:include>
<script type="text/javascript" src="js/custom/forms.js"></script>
<script type="text/javascript" src="js/plugins/charCount.js"></script>
<script type="text/javascript" src="js/plugins/ui.spinner.min.js"></script>
<script type="text/javascript" src="js/plugins/chosen.jquery.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.tagsinput.min.js"></script>
<script language="javascript" type="text/javascript">
	function foo() {
		var object=document.getElementById("select4");
		var len = object.options.length;
		var sel = object.options;
		var t2 = new Array();
		for (var i = 0; i < Number(len); i++) {
			t2[i] = sel[i].value;
		}
		document.getElementById("joinMemberList").value = t2;
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
				<h1 class="pagetitle">表单</h1>


				<ul class="hornav">
					<li class="current"><a href="#basicform">表单</a></li>
					<li><a href="#validation">校验</a></li>
				</ul>
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper">

				<div id="basicform" class="subcontent">

					<div class="contenttitle2">

						<h3>创建项目</h3>

					</div>
					<!--contenttitle-->
					<form class="stdform" action="AddProject" method="post">
						<p>
							<label>项目名称</label> <span class="field"><input type="text"
								name="projectName" class="smallinput" /></span>
						</p>
					

						<p>
							<label>项目类型</label> <span class="field"> <select
								name="projectType" class="uniformselect">
									<option value="1">媒体项目</option>
									<option value="2">设计项目</option>
									<option value="3">教育项目</option>
									<option value="4">互联网项目</option>
									<option value="5">移动应用项目</option>
									<option value="6">其他项目</option>
							</select>
							</span>
						</p>

						<p>
							<label>项目归属</label> <span class="field"> <select
								name="ownershipType" class="uniformselect">
									<option value="1">企业项目</option>
									<option value="2">个人项目</option>
							</select>
							</span>
						</p>
						<p>
							<label>项目简介</label> <span class="field"><textarea
									name="projectBrief" cols="80" rows="5" class="longinput"></textarea></span>
						</p>
						<p>
							<label>成员添加移除</label> <span id="dualselect" class="dualselect">
								<select name="select3" multiple="multiple" size="10">
									<s:iterator value="memberList">
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
							<input type="hidden" name="joinMemberList" id="joinMemberList" />
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