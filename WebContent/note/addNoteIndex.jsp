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
     <jsp:include page="../frame/header.jsp" />

	<jsp:include page="../frame/menu.jsp" />

	   <jsp:include page="../frame/leftmenu.jsp" />
  
    <div class="centercontent">
    <div class="contentitle">
        <div class="pageheader">
            <ul class="hornav blogmenu">
                <li class="current">笔记</li>
        
            </ul>
          </div><!--pageheader-->
          </div>          
                    <form class="stdform" action="AddNote" method="post">
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
						<%--  <s:iterator value="projectList" status="index">
                         <p>
                        	<label>项目id</label>
                            <span class="field"><input type="text" name="projectId" readonly="<s:property value="project.projectId"/>" class="smallinput" />
                           
                            </span>
                        </p>
                        </s:iterator>	 --%>
                        <p>
                        	<label>笔记名称</label>
                            <span class="field"><input type="text" name="title" value="<s:property value="project.projectName"/>" class="smallinput" /></span>
                        </p>
                          <p>
                        	<label>笔记内容</label>
                            <span class="field"><textarea name="content" cols="80" rows="5" class="longinput"></textarea></span> 
                        </p>
                        <p class="stdformbutton">
                        	<button class="submit radius2" type="submit">提交</button>
                            <input type="reset" class="reset radius2" value="重置" />
                        </p>
                    </form>
                   
           
       
    </div><!--centercontent-->
</div><!--bodywrapper-->

</body>
</html>