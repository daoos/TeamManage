<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看消息页面</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.alerts.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>
<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/messages.js"></script>
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
<div class="bodywrapper">
    <jsp:include page="frame/header.jsp" />

		<jsp:include page="frame/menu.jsp" />

		<jsp:include page="frame/leftmenu.jsp" />
    
    <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle">消息</h1>
           
            
            <ul class="hornav">
                <li class="current"><a href="#inbox">消息箱</a></li>
                <li><a href="#compose">最近事件</a></li>
            </ul>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
             
             <div id="inbox" class="subcontent">
             
                <div class="msghead">
                    <ul class="msghead_menu">
                        <li><a class="reportspam">Report Spam</a></li>
                        <li class="marginleft5 dropdown" id="actions">
                            <a class="dropdown_label" href="#actions">
                            Actions
                            <span class="arrow"></span>
                            </a>
                            <ul>
                                <li><a href="">Mark as Read</a></li>
                                <li><a href="">Mark as Unread</a></li>
                                <li><a href="">Move to Folder</a></li>
                                <li><a href="">Add Star</a></li>
                            </ul>
                        </li>
                        <li class="marginleft5"><a class="msgtrash" title="Trash"></a></li>
                    	<li class="right"><a class="next"></a></li>
                        <li class="right"><a class="prev prev_disabled"></a></li>
                        <li class="right"><span class="pageinfo">1-10 of 2,139</span></li>
                    </ul>
                    <span class="clearall"></span>
                </div><!--msghead-->
                
                <table cellpadding="0" cellspacing="0" border="0" class="stdtable mailinbox">
                    <colgroup>
                        <col class="con1" width="4%"/>
                        <col class="con0" width="8%" />
                        <col class="con1" width="15%"/>
                        <col class="con0" width="63%"/>
                        <col class="con1" width="4%"/>
                        <col class="con1" width="10%"/>
                    </colgroup>
                    <thead>
                    <tr>
                        <th width="20" class="head1 aligncenter"><input type="checkbox" name="checkall" class="checkall" /></th>
                        <th class="head0">标记</th>
                        <th class="head1">发送者</th>
                        <th class="head0">事件</th>
                        <th class="head1 attachement">&nbsp;</th>
                        <th class="head0">日期</th>
                    </tr>
                    </thead>
                   
                    <tbody>
                        <tr class="unread">
                            <td class="aligncenter"><input type="checkbox" name="" /></td>
                            <td class="star"><a class="msgstar"></a></td>
                            <td>发送者1</td>
                            <td><a href="" class="title">事件1</a></td>
                            <td class="attachment"><img src="images/icons/attachment.png" alt="" /></td>
                            <td class="date">July 1</td>
                        </tr>
                        <tr class="unread">
                            <td class="aligncenter"><input type="checkbox" name="" /></td>
                            <td class="star"><a class="msgstar"></a></td>
                            <td>发送者2</td>
                            <td><a href="" class="title">事件2</a></td>
                            <td class="attachment"></td>
                            <td class="date">June 30</td>
                        </tr>
                        <tr>
                            <td class="aligncenter"><input type="checkbox" name="" /></td>
                            <td class="star"><a class="msgstar"></a></td>
                            <td>发送者3</td>
                            <td><a href="" class="title">事件3</a></td>
                            <td class="attachment"></td>
                            <td class="date">June 28</td>
                        </tr>
                        <tr class="unread">
                            <td class="aligncenter"><input type="checkbox" name="" /></td>
                            <td class="star"><a class="msgstar"></a></td>
                            <td>发送者4</td>
                            <td><a href="" class="title">事件4</a></td>
                            <td class="attachment"><img src="images/icons/attachment.png" alt="" /></td>
                            <td class="date">July 1</td>
                        </tr>
                        <tr>
                            <td class="aligncenter"><input type="checkbox" name="" /></td>
                            <td class="star"><a class="msgstar starred"></a></td>
                            <td>发送者5</td>
                            <td><a href="" class="title">事件5</a></td>
                            <td class="attachment"></td>
                            <td class="date">June 19</td>
                        </tr>

                    </tbody>
                </table>             
             </div>
             <div id="compose" class="subcontent" style="display: none">&nbsp;</div>
        </div><!--contentwrapper-->
    
    </div><!--centercontent-->
    
    
</div><!--bodywrapper-->

</body>
</html>