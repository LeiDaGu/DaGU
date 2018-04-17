<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示所有项目</title>
<style type="text/css">
table {
	border-collapse: collapse;
}
th, td {
	border: 1px solid red;
}
</style>
</head>
<body>
	<h3>显示所有项目</h3>
	<form action="${pageContext.request.contextPath }/project/dispalyProjectByMultiCondition.do">
		项目名称：<input type="text" name="project_name" />
		项目平台：<input type="text" name="project_platform" />
		项目状态：<select name="project_state">
			<option value="">请选择</option>
			<option value="无合同">无合同</option>
			<option value="有合同">有合同</option>
		</select>
		项目经理：<input type="text" name="project_manager" />
		<input type="submit" value="提交" />
	</form><br/>
	<table>
		<tr>
			<th>项目名称</th>
			<th>项目平台</th>
			<th>项目编号</th>
			<th>项目预算</th>
			<th>项目报价</th>
			<th>项目需求</th>
			<th>项目状态</th>
			<th>项目经理</th>
			<th>创建日期</th>
			<th>修改</th>
		</tr>
		<c:forEach var="project" items="${listProject }">
			<tr>
				<td>
				<a href="${pageContext.request.contextPath }/projectTracking/displayProjectTracking.do?project_id=${project.project_id }&project_name=${project.project_name}">${project.project_name }</a>
				</td>
				<td>${project.project_platform }</td>
				<td>${project.project_number }</td>
				<td>${project.project_budget }</td>
				<td>${project.project_quote }</td>
				<td>${project.project_req }</td>
				<td>${project.project_state }</td>
				<td>${project.project_manager }</td>
				<td><fmt:formatDate value="${project.create_time }"
						pattern="yyyy-MM-dd" /></td>
				<td><a href="${pageContext.request.contextPath }/project/toModifyProject.do?project_id=${project.project_id }">修改</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>