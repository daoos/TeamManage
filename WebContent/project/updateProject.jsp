<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<jsp:include page="../frame/jsAndcss.jsp"></jsp:include>
</head>
<body class="withvernav">
	<div class="bodywrapper">
		<!--topheader-->
		<!--header-->
		<!--leftmenu-->
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
						<h3>项目更新</h3>
						<h3><s:property value="project.projectId"/></h3>
						
					</div>
					<!--contenttitle-->

					<form class="stdform" action="UpdateProject" method="post">
						<input name="projectId" type="hidden"
							value="<s:property value="project.projectId"/>" />
						<p>
							<label>项目名称</label> <span class="field"><input type="text"
								name="projectName"
								value="<s:property value="project.projectName"/>"
								class="smallinput" /></span> 
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
									name="projectBrief" cols="80" rows="5" class="longinput"><s:property
										value="project.projectBrief" /></textarea></span>
						</p>
					

						<p class="stdformbutton">
							<button class="submit radius2" type="submit">提交</button>
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