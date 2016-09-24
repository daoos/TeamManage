<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <script type="text/javascript">
    
        function validate()
        {
            var page = document.getElementsByName("page")[0].value;
                
            if(page > <s:property value="#request.pageBean.totalPage"/>)
            {
                alert("你输入的页数大于最大页数，页面将跳转到首页！");
                
                window.document.location.href = "SeeNote";
                
                return false;
            }
            
            return true;
        }
    
    </script>

</head>
<body>
 <table border="1" align="center" bordercolor="yellow" width="50%">
    
        <tr>
            <th>1</th>
            <th>2</th>
            <th>3</th>
        </tr>
    
    
    <s:iterator value="#request.pageBean.list" id="note">
    
        <tr>
            <th><s:property value="#note.id"/></th>
            <th><s:property value="#note.title"/></th>
            <th><s:property value="#note.content"/></th>        
        </tr>
    
    </s:iterator>
    
    </table>
    
    <center>
    
        <font size="5">共<font color="red"><s:property value="#request.pageBean.totalPage"/></font>页 </font>&nbsp;&nbsp;
        <font size="5">共<font color="red"><s:property value="#request.pageBean.allRows"/></font>条记录</font><br><br>
        
        <s:if test="#request.pageBean.currentPage == 1">
            首页&nbsp;&nbsp;&nbsp;上一页
        </s:if>
        
        <s:else>
            <a href="SeeNote">首页</a>
            &nbsp;&nbsp;&nbsp;
            <a href="SeeNote?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
        </s:else>
        
        <s:if test="#request.pageBean.currentPage != #request.pageBean.totalPage">
            <a href="SeeNote?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
            &nbsp;&nbsp;&nbsp;
            <a href="SeeNote?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
        </s:if>
        
        <s:else>
            下一页&nbsp;&nbsp;&nbsp;尾页
        </s:else>
    
    </center><br>
    
    <center>
        
        <form action="SeeNote" onsubmit="return validate();">
            <font size="4">跳转至</font>
            <input type="text" size="2" name="page">页
            <input type="submit" value="跳转">
        </form>
        
    </center>
</body>
</html>