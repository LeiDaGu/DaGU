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
    <title>商务经理</title>
<style type="text/css">
	body{
		text-align: center;
	}
</style>
</head>
<body>
	<a href="JavaScript:parent.window.location.href='../../login.jsp'">用户退出</a><br/><br/>
	<a href="${pageContext.request.contextPath }/user/displayUserGroup.do" target="right_frame">团队经理</a><br/><br/>
    <a href="${pageContext.request.contextPath }/user/displayUser.do" target="right_frame">商务经理</a><br/><br/>
    <a href="${pageContext.request.contextPath }/customer/displayCustomer.do" target="right_frame">客户管理</a><br/><br/>
    <a href="${pageContext.request.contextPath }/project/dispalyProject.do" target="right_frame">项目管理</a><br/><br/>
</body>
</html>
