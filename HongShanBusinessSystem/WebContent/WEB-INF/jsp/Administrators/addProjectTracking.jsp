<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xxhh
  Date: 2018/4/3
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/adminiProject/addProjectTracking.do">
    <input type="hidden" name="project_id" value="${project_id}">
    <table>
        <tr>
            <td>项目名称</td>
            <td><input type="text" value="${project_name}" disabled = "disabled"></td>
        </tr>
        <tr>
            <td>追踪详情</td>
            <td><input type="text" name="project_tracking_details"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit"></td>
        </tr>
    </table>
</form>
</body>
</html>
