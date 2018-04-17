<%--
  Created by IntelliJ IDEA.
  User: xxhh
  Date: 2018/4/2
  Time: 13:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
    <frameset cols="200,*">
        <frame src="${pageContext.request.contextPath }/static/Administrators/leftNav.jsp">
        <frame src="${pageContext.request.contextPath }/static/public/rightNav.jsp" name="right_frame">
    </frameset>
</html>
