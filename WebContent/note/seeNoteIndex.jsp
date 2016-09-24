<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>博客管理页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.alerts.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/blog.js"></script>
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
<div class="bodywrapper"><!--topheader--><!--header--><!--leftmenu-->
   <jsp:include page="../frame/header.jsp" />

	<jsp:include page="../frame/menu.jsp" />

	   <jsp:include page="../frame/leftmenu.jsp" />
    <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle"><s:property value="project.projectName"></s:property></h1>
          
            
            <ul class="hornav blogmenu">
                <li class="current"><a href="">笔记</a></li>
            
            </ul>
     
                    </div><!--contenttitle-->
                     <table cellpadding="0" cellspacing="0" border="0" id="table2" class="stdtable stdtablecb">
                    <colgroup>
                        <col class="con0" style="width: 25%" />
                        <col class="con1"  style="width: 25%" />
                        <col class="con2"  style="width: 25%" />
                        <col class="con3"  style="width: 25%" />
                        
                        
                    </colgroup>
                    <thead>
                        <tr>
                        	<th class="head0">笔记名称</th>
							<th class="head1">笔记内容</th>
							<th class="head2">作者名称</th>
							<th class="head3">发布时间</th>
							
                        </tr>
                    </thead>
                    <tbody>
							<tr>
								<td><s:property value="note.title"/></td>
								<td><s:property value="note.content" /></td>
								<td><s:property value="note.member.name"/></td>
								<td><s:property value="note.PublishTime" /></td>
								<a href="noteIndex?projectId=<s:property value="projectId"/>" class="submit radius2">返回 </a>
							</tr>
                    </tbody>
                </table>
                  
                      
            </div><!--subcontent-->
        </div><!--pageheader-->
        <div id="contentwrapper" class="contentwrapper">
        </div><!--contentwrapper-->
    </div><!--centercontent-->
</div><!--bodywrapper-->

</body>
</html>