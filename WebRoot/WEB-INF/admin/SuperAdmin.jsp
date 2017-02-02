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
			data-options="singleSelect:true,toolbar:'#tb',collapsible:false,url:'${pageContext.request.contextPath}/json/datagrid_data1.json',method:'get'">
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
	<div data-options="region:'west',title:'�˵�',split:true" style="width:180px;">
    <ul id="tt" class="easyui-tree">
        <li>
            <span>ϵͳ����</span>
            <ul>
                <li>
                    <span>�û�����</span>
                </li>
                <li><span>Ȩ�޹���</span></li>
                <li><span>�������</span></li>
            </ul>
        </li>
        <!--<li><span>File21</span></li>-->
    </ul>
</div>
<!--��ͷ-->
<div id="tb" style="padding:2px 5px;">
    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">����û�</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">�޸��û�</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">ɾ���û�</a>
    <div style="float: right;margin-right: 6px;">
        <span>�û�����:</span>
        <select class="easyui-combobox" panelHeight="auto" style="width:100px;">
            <option value="normal_user">��ͨ�û�</option>
            <option value="vip_user">VIP�û�</option>
            <option value="adminator">����Ա</option>
        </select>
        <a href="#" class="easyui-linkbutton" iconCls="icon-search" id="search" onclick="getAllUsers()">��ʼ����</a>
    </div>
</div>
	<script type="text/javascript">
	 /*  ��ȡ�û� */
	 function getAllUsers() {
    $.ajax({
        type: 'POST',
        url: "user_findAllUsers",
        dataType: 'json',
        success: function (data) {
            console.log(data);
            
        },
        error: function (error) {
            console.log(error);
        }
    });
}


	
	</script>
</body>
</html>