<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--
  Created by IntelliJ IDEA.
  User: xxhh
  Date: 2018/4/2
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/tab.css" type="text/css">
</head>
<body>
<div>
    <a href="${pageContext.request.contextPath}/adminiProject/toAddProjectTracking.do?project_name=${project_name}&project_id=${project_id}">添加</a>
    <table class = "tabCss">
        <tr>
            <td>项目名称</td>
            <td>跟踪详情</td>
            <td>跟踪时间</td>

        </tr>
        <c:forEach items="${projectTrackings}" var="pro">
            <tr>
                <td>${pro.project_name}</td>
                <td>${pro.project_tracking_details}</td>
                <td><fmt:formatDate value="${pro.create_time}" pattern="yyyy:MM:dd HH:mm:ss"/></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
