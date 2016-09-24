<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@taglib prefix="s" uri="/struts-tags"%>
 <div class="topheader">
        <div class="left">
            <h1 class="logo">Team.<span>Manage</span></h1>
        
            <div class="search" >
            	<form action="" method="post">
                	<input type="text" name="keyword" id="keyword" value="请输入" />
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<!--<div class="notification">
                <a class="count" href="ajax/notifications.jsp"><span>9</span></a>
        	</div>-->
            <div class="userinfo">
            	<img src="${pageContext.request.contextPath}/images/thumbs/avatar.png" alt="" />
                <span>你好,<s:property value="username" />!</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<a href=""><img src="images/thumbs/avatarbig.png" alt="" /></a>
                    <div class="changetheme">
                    	
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a>
                    </div>
                </div><!--avatar-->
                <div class="userdata">
                	<h4><s:property value="username" /></h4>
                    <span class="email"><s:property value="member.emailAddress"/></span>
                    <ul>
                    	<li><a href="memberIndex">编辑资料</a></li>
                        
                        <li><a href="help.jsp">帮助</a></li>
                        <li><a href="loginOut">退出</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->