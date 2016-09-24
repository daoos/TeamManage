<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../frame/jsAndcss.jsp"></jsp:include>
<script language="javascript">
  function ConfirmDel() {
		if (confirm("真的要删除该文件吗？")){
				return true;
		}else{
			return false;
	}
	}
</script>

</head>
<body class="withvernav">
<div class="bodywrapper"><!--topheader--><!--header--><!--leftmenu-->
    <jsp:include page="../frame/header.jsp" />

		<jsp:include page="../frame/menu.jsp" />

		<jsp:include page="../frame/leftmenu.jsp" />
    <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle"><s:property value="project.projectName"></s:property></h1>
 
                    <form action="AddResourceIndex?projectId=<s:property value="projectId"/>" method="post" enctype="multipart/form-data"> 
                     <p>
							<label>用户项目Id</label> <span class="field">
							<!-- 提交的额是select的值 -->
							 <select
								name="projectId" class="uniformselect">
								<s:iterator value="projectList" status="index">
										<option value="<s:property value="projectId" />"><s:property value="projectId" /></option>
							
							</s:iterator>		
							</select>
							</span>
						
						</p>   
                    &nbsp&nbsp&nbsp上传文件:<input type="file" name="file"><br>
                    &nbsp&nbsp&nbsp<button type="submit">提交</button>
                   </form> 
                  
               <table  cellspacing="25">
			  <tr>
			    <th >文件标题</th>
			    <th >上传时间</th>
			    <th >上传作者</th>
			  </tr>
			  <s:iterator value="resourceList" >
			  <tr>
			  <td><s:property value="fileName"/></td>
			  <td><s:property value="uploadTime"/></td>
			  <td><s:property value="member.name"/></td>
			  <td><a href="DownloadResource?resourceId=<s:property value="resourceId"/>">
	点击下载</a></td>
			  <td><a href="DeleteResource?resourceId=<s:property value="resourceId"/>" 
			  onclick="javascript:return ConfirmDel();">删除文件</a></td>
			  </tr>
			  </s:iterator>
                </table>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
        </div><!--contentwrapper-->
    </div><!--centercontent-->
    
    
</div><!--bodywrapper-->

</body>
</html>