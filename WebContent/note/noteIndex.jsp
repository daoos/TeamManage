<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>团队协作管理系统</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript"
	src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.flot.min.js"></script>
<script type="text/javascript"
	src="js/plugins/jquery.flot.resize.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.slimscroll.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/dashboard.js"></script>
<script language="javascript" type="text/javascript"
	src="js/plugins/excanvas.min.js"></script>
<script language="javascript">
	function ConfirmDel() {
		if (confirm("真的要删除该任务吗？")) {
			return true;
		} else {
			return false;
		}
	}

	function validate() {
		var page = document.getElementsByName("page")[0].value;

		if (page > <s:property value="#request.pageBean.totalPage"/>) {
			alert("你输入的页数大于最大页数，页面将跳转到首页！");

			window.document.location.href = "noteIndex";

			return false;
		}

		return true;
	}
</script>

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
				<a href="SeeProjectIndex?projectId=<s:property value="projectId"/>">任务</a>
				<a href="">文件</a> <a
					href="ScheduleIndex?projectId=<s:property value="projectId"/>">日程</a>

				<table cellspacing="25" border="1" bordercolor="yellow">

					<tr>
						<th>所属工程ID</th>
						<th>笔记标题</th>
						<th>笔记内容</th>
						<th>发布时间</th>
						<th>发布作者</th>
					</tr>


					<s:iterator value="#request.pageBean.list" id="note">

						<tr>
							<td><s:property value="#note.project.projectId" /></td>

							<th><s:property value="#note.title" /></th>
							<th><s:property value="#note.content" /></th>
							<td><s:property value="#note.PublishTime" /></td>
							<td><s:property value="member.name" /></td>
							<td><a
								href="SeeNote?noteId=<s:property value="#note.noteId"/>">查看详细</a></td>
							<td><a
								href="DeleteNote?noteId=<s:property value="#note.noteId"/>"
								onclick="javascript:return ConfirmDel();">删除笔记</a></td>
						</tr>

					</s:iterator>

				</table>



				<font size="5">共<font color="red"><s:property
							value="#request.pageBean.totalPage" /></font>页
				</font>&nbsp;&nbsp; <font size="5">共<font color="red"><s:property
							value="#request.pageBean.allRows" /></font>条记录
				</font><br> <br>

				<s:if test="#request.pageBean.currentPage == 1">
            首页&nbsp;&nbsp;&nbsp;上一页
        </s:if>

				<s:else>
					<a href="noteIndex">首页</a>
            &nbsp;&nbsp;&nbsp;
            <a
						href="noteIndex?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
				</s:else>

				<s:if
					test="#request.pageBean.currentPage != #request.pageBean.totalPage">
					<a
						href="noteIndex?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
            &nbsp;&nbsp;&nbsp;
            <a
						href="noteIndex?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
				</s:if>

				<s:else>
            下一页&nbsp;&nbsp;&nbsp;尾页
        </s:else>


				<br>



				<form action="noteIndex" onsubmit="return validate();">
					<font size="4">跳转至</font> <input type="text" size="2" name="page"
						class="smallinput">页 <input type="submit" value="跳转">
				</form>

				<div class="widgetbox">
					<div class="title">
						<h3>最新笔记</h3>
					</div>
					<div class="widgetcontent">
						<div id="accordion" class="accordion">

							<s:iterator value="#request.pageBean.list" id="note">


								<h3>
									<s:property value="#note.title" />
								</h3>
								<div>
									<p>
										<s:property value="#note.PublishTime" />
									</p>
									<p>
										<s:property value="#note.content" />
									</p>
								</div>
							</s:iterator>


						</div>
					</div>
					<!--widgetcontent-->
				</div>
				<!--widgetbox-->

				<!--contenttitle-->
			</div>
			<!--pageheader-->

			<div id="contentwrapper" class="contentwrapper"></div>
			<!--contentwrapper-->
		</div>
		<!--centercontent-->


	</div>
	<!--bodywrapper-->

</body>
</html>