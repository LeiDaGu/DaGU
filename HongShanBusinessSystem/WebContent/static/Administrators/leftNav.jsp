<%--
  Created by IntelliJ IDEA.
  User: xxhh
  Date: 2018/4/2
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href=${pageContext.request.contextPath}"/static/css/tab.css" type="text/css">
</head>
<body>
    <div class="leftNav" style="text-align: center">
    	<a href="JavaScript:parent.window.location.href='../../login.jsp'">用户退出</a><br/><br/>
        <a href="${pageContext.request.contextPath}/adminiCustomer/findCustomerByUserID.do" target="right_frame">客户管理</a><br>
        <br/>
        <a href="${pageContext.request.contextPath}/adminiProject/findProjectByUserID.do" target="right_frame">项目管理</a>
    </div>
</body>
</html>
