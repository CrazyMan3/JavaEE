<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>����ϵͳ��̨����</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/icon.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
</head>
<body class="easyui-layout">
	<div data-options="region:'south',title:'South Title',split:true"
		style="height:100px;"></div>
	<!--<div data-options="region:'east',title:'East',split:true" style="width:100px;"></div>-->
	<div data-options="region:'center',title:''"
		style="padding:5px;background:#eee;">
		<table class="easyui-datagrid" title="ȫ���û�" style="width:100%;"
			data-options="singleSelect:true,collapsible:false,url:'datagrid_data1.json',method:'get'">
			<thead>
				<tr>
					<th data-options="field:'uid',width:100,align:'right'">���</th>
					<th
						data-options="field:'username',width:100,align:'right',halign:'center'">�û���</th>
					<th
						data-options="field:'usernick',width:180,align:'right',halign:'center'">�û��ǳ�</th>
					<th data-options="field:'sex',width:100,halign:'center'">�Ա�</th>
					<th
						data-options="field:'userdescription',width:100,align:'center',halign:'center'">�û��ȼ�</th>
				</tr>
			</thead>
		</table>

	</div>
	<div data-options="region:'west',title:'�˵�',split:true"
		style="width:180px;">
		<ul id="tt" class="easyui-tree">
			<li><span>ϵͳ����</span>
				<ul>
					<li><span>�û�����</span>
						<ul>
							<li><span><a href="#">VIP�û�</a></span></li>
							<li><span>��ͨ�û�</span></li>
							<li><span>ȫ���û�</span></li>
						</ul></li>
					<li><span>Ȩ�޹���</span></li>
					<li><span>�������</span></li>
				</ul></li>
			<!--<li><span>File21</span></li>-->
		</ul>
	</div>
</body>
</html>