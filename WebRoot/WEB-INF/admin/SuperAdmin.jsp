<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>Bootstrap ʵ�� - ���Ʊ���</title>
	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<table class="table table-striped">
	<caption>���Ʊ��񲼾�</caption>
	<thead>
		<tr>
			<th>����</th>
			<th>����</th>
			<th>�ʱ�</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Tanmay</td>
			<td>Bangalore</td>
			<td>560001</td>
		</tr>
		<tr>
			<td>Sachin</td>
			<td>Mumbai</td>
			<td>400003</td>
		</tr>
		<tr>
			<td>Uma</td>
			<td>Pune</td>
			<td>411027</td>
		</tr>
	</tbody>
</table>

</body>
</html>