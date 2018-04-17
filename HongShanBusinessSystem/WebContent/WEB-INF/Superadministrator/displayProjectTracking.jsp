<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示时间跟踪</title>
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
<h3>显示时间跟踪</h3>
项目：${project_name }
<table>
		<tr>
			<th>跟踪详情</th>
			<th>项目跟踪时间</th>
		</tr>
		<c:forEach var="projectTracking" items="${listProjectTracking }">
			<tr>
				<td>${projectTracking.project_tracking_details }</td>
				<td><fmt:formatDate value="${projectTracking.create_time }"
						pattern="yyyy-MM-dd" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>