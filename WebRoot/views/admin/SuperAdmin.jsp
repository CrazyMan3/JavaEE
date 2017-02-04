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
	<div data-options="region:'south',split:true" style="height:0px;"></div>
	<div data-options="region:'west',title:'�˵�',split:true"
		style="width:180px;">
		<ul id="tt" class="easyui-tree">
			<li><span>ϵͳ����</span>
				<ul>
					<li><span>�û�����</span></li>
					<li><span>Ȩ�޹���</span>
						<ul>
							<li>�û�Ȩ�޹���</li>
							<li>����ԱȨ�޹���</li>
						</ul></li>
					<li><span>�������</span>
						<ul>
							<li><span>���ž������</span></li>
							<li><span>������������</span></li>
						</ul></li>
				</ul></li>
			<li><span>��־����</span></li>
		</ul>
	</div>
	<!--<div data-options="region:'east',title:'East',split:true" style="width:100px;"></div>-->
	<div data-options="region:'center',title:''"
		style="padding:5px;background:#eee;">
		<!-- ��ӭҳ��start -->
		<div id="div_welcome">
			<span style="color:red;font-size: 22px;">��ӭʹ���������ι���ϵͳ</span>
		</div>
		<!-- ��ӭҳ��end  -->
		<div id="div_table" style="visibility: hidden;">
			<table id="dg" class="easyui-datagrid" title="ȫ���û�" style="width:100%;"
				data-options="singleSelect:true,toolbar:'#tb',collapsible:false,method:'get'">
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
							<th data-options="field:'registDate',width:120,halign:'center'">ע��ʱ��</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>
	<!--==============��ͷstart===================-->
	<div id="tb" style="padding:2px 5px;">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" id="addUser" onclick="addUser()">����û�</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" id="updateUser "onclick="updateUser()">�޸��û�</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove"
			plain="true" id="removeUser" onclick="removeUser()">ɾ���û�</a>
		<span style="color:red;" id="userCount"></span>
		<div style="float: right;margin-right: 6px;">
			<span>�û�����:</span> <select id="user_type" class="easyui-combobox"
				panelHeight="auto" style="width:100px;">
				<option value="normal_user">��ͨ�û�</option>
				<option value="vip_user">VIP�û�</option>
				<option value="adminator">����Ա</option>
			</select> <a href="#" class="easyui-linkbutton" iconCls="icon-search"
				id="search" >��ʼ����</a>
		</div>
	</div>
	<!--=============================��ͷend=============-->
	<script type="text/javascript">
		isHasUserView = false; // ����Ƿ�չʾ���û�����ҳ��

		/*  ��ȡָ�������û� */
		function getAllUsers() {
			var user_type = $("#user_type").val();
			if ("adminator" == user_type) {
				// ����Ա 
			} else if ("vip_user" == user_type) {
				// vip�û�
			} else if ("normal_user" == user_type) {
				// һ���û�
			}
		};
		// ��״����˵�����¼�
		$('#tt')
				.tree(
						{
							onClick : function(node) {
								//alert(node.text); 
								var nodeText = node.text;
								if ("�û�����" == nodeText) {
									if (isHasUserView) {
										$("#div_table").css("display", "block");
									} else {
										// ��������
										$
												.ajax({
													type : 'POST',
													url : "user_findAllUsers",
													dataType : 'json',
													success : function(data) {
														var obj = new Function(
																'return' + data)
																();
														var count = obj.no;
														// ��Ⱦ����
														$('#userCount').innerHTML='����'+count+'λ�û�';
														$('#dg').datagrid({
															data: obj.users
														});
													},
													error : function(error) {
														console.log(error);
													}
												});
									}
									isHasUserView = true;
									$("#div_table").css("display", "block");
									$("#div_table")
											.css("visibility", "visible");
									$("#div_welcome").css("display", "none");
								} else {
									$("#div_welcome").css("display", "none");
									$("#div_table").css("display", "none");
								}
							}
						});
		// ����û�
		function addUser(){
		};
		// �޸��û�
		function updateUser(){
			
		};
		// ɾ���û�
		function removeUser(){
			
		};
	</script>
</body>
</html>