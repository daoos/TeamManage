<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<jsp:include page="../frame/jsAndcss.jsp"></jsp:include>
<script type="text/javascript">
	function foo() {
		var len = document.getElementById("select4").options.length;
		var sel = document.getElementById("select4").options;
		var t2 = new Array();
		for (var i = 0; i < Number(len); i++) {
			t2[i] = sel[i].value;
		}
		document.getElementById("joinMemberList").value = t2;
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
            <h1 class="pagetitle"><s:property value="project.projectName"></s:property></h1>
          
            
            <ul class="hornav blogmenu">
                <li class="current"><a href="">任务</a></li>
            
            </ul>
     
                    </div><!--contenttitle-->
                     <table cellpadding="0" cellspacing="0" border="0" id="table2" class="stdtable stdtablecb">
                    <colgroup>
                        <col class="con0" style="width: 20%" />
                        <col class="con1"  style="width: 20%" />
                        <col class="con2"  style="width: 20%" />
                        <col class="con3"  style="width: 20%" />
                         <col class="con3"  style="width: 20%" />
                        
                    </colgroup>
                    <thead>
                        <tr>
                        <th class="head0">任务id</th>
                        	<th class="head0">任务名称</th>
							<th class="head1">任务内容</th>
							<th class="head2">任务状态</th>
							<th class="head3">截止时间</th>
							
                        </tr>
                    </thead>
                    <tbody>
						 
			<tr>
				  <td><s:property value="task.taskId"/></td>
			  <td><s:property value="task.taskName"/></td><!--严格遵循大小写  -->
			  <td><s:property value="task.taskContent"/></td>
			  <td><s:property value="task.state"/></td>
			  <td><s:property value="task.deadline"/></td>
		
			
			 </tr>
			 <tr> <a href="TaskIndex" class="submit radius2">返回 </a></tr>
			
                    </tbody>
                </table>
                
            </div><!--subcontent-->
        </div><!--pageheader-->
        <div id="contentwrapper" class="contentwrapper">
        </div><!--contentwrapper-->
    </div><!--centercontent-->



	</div>
	<!--bodywrapper-->

</body>
</html>