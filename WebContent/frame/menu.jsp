<%@ page contentType="text/html; charset=GBK" language="java"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>

<div class="header">
	<ul class="headermenu">
		<!-- Ҫ���Ʊ�ǩҳ�����ƶ� -->
		<li class="current"><a href="dashboard.jsp"><span
				class="icon icon-flatscreen"></span>��Ŀ����</a></li>
		<li><a href="SeeProject"><span class="icon icon-pencil"></span>�ҵ���Ŀ</a></li>
		<li><a href="messages.jsp"><span class="icon icon-message"></span>�鿴��Ϣ</a></li>
		<li><a href="reports.jsp"><span class="icon icon-chart"></span>�������</a></li>
	</ul>
	<div class="headerwidget">
		<div class="earnings">
			<div class="one_half">
				<h4>��ǰ����</h4>
				<div id="time">
					<script>
						document.getElementById('time').innerHTML = new Date()
								.toLocaleString()
								+ ' ����' + '��һ����������'.charAt(new Date().getDay());
						setInterval(
								"document.getElementById('time').innerHTML=new Date().toLocaleString()+' ����'+'��һ����������'.charAt(new Date().getDay());",
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