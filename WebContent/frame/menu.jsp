<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>

<div class="header">
	<ul class="headermenu">
		<!-- 要控制标签页才能移动 -->
		<li class="current"><a href="dashboard.jsp"><span
				class="icon icon-flatscreen"></span>项目操作</a></li>
		<li><a href="SeeProject"><span class="icon icon-pencil"></span>我的项目</a></li>
		<li><a href="messages.jsp"><span class="icon icon-message"></span>查看信息</a></li>
		<li><a href="reports.jsp"><span class="icon icon-chart"></span>报表分析</a></li>
	</ul>
	<div class="headerwidget">
		<div class="earnings">
			<div class="one_half">
				<h4>当前日期</h4>
				<div id="time">
					<script>
						document.getElementById('time').innerHTML = new Date()
								.toLocaleString()
								+ ' 星期' + '日一二三四五六'.charAt(new Date().getDay());
						setInterval(
								"document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
								1000);
					</script>
				</div>
			</div>
			<!--one_half-->

		</div>
		<!--earnings-->
	</div>
	<!--headerwidget-->
</div>
</div>
<!--header-->