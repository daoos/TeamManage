<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
//pageContext.request.contextPath();
//System.out.println(request.getContextPath()); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript">
	function ConfirmDel() {
		if (confirm("真的要删除该项目吗")) {
			return true;
		} else {
			return false;
		}
	}
</script>
<jsp:include page="../frame/jsAndcss.jsp"></jsp:include>
</head>
<body class="withvernav">
	<div class="bodywrapper">
			 <jsp:include page="../frame/header.jsp" />

	<jsp:include page="../frame/menu.jsp" />

	   <jsp:include page="../frame/leftmenu.jsp" />

		<div class="centercontent">

			<div class="pageheader">
				<h1 class="pagetitle">项目情况</h1>
		
                
                <div class="contenttitle2">
                	<h3>项目操作</h3>
                </div><!--contenttitle-->
                <div class="tableoptions">
                	
                    <select class="radius3">
                    	<option value="">显示所有</option>
                        <option value="">Rendering Engine</option>
                        <option value="">Platform</option>
                    </select> &nbsp;
                   
                </div><!--tableoptions-->	
				 <table cellpadding="0" cellspacing="0" border="0" id="table2" class="stdtable stdtablecb">
                    <colgroup>
                        <col class="con0" style="width: 4%" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                    </colgroup>
                    <thead>
                        <tr>
                        	<th class="head0">项目id</th>
							<th class="head1">项目名</th>
							<th class="head2">项目类型</th>
							<th class="head3">归属类型</th>
							<th class="head4">创建时间</th>
                        </tr>
                    </thead>
                  
                    <tbody>

                        <s:iterator value="projectList" status="index">
							<tr>
								<td><s:property value="projectId" /></td>
								<td><s:property value="projectName" /></td>
								<td><s:property value="projectType" /></td>
								<td><s:property value="ownershipType" /></td>
								<td><s:property value="createTime" /></td>
							
								

								<td><a href="AddProjectIndex">创建</a>
								<a href="updateProjectIndex?projectId=<s:property value="projectId"/>">更新</a>
								<a 
								href="DeleteProject?projectId=<s:property value="projectId"/>" 
								onclick="javascript:return ConfirmDel();">删除</a> 
								   
								</td><!--不能相同url  -->
								
							</tr>
						</s:iterator>
                    </tbody>
                </table>
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