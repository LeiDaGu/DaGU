<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示商务经理</title>
<style type="text/css">
table {
	border-collapse: collapse;
	width:800px;
}
th, td {
	border: 1px solid red;
	text-align: center;
}
</style>
</head>
<body>
	<h3>显示商务经理</h3>
	<form action="${pageContext.request.contextPath }/user/displayUserByMultiCondition.do">
		用户账号：<input type="text" name="user_account" />
		用户名：<input type="text" name="user_name" />
		是否被锁：<select name="user_islock">
			<option value="">请选择</option>
			<option value="1">已锁</option>
			<option value="0">未锁</option>
		</select>
		<input type="submit" value="提交" />
		<a href="${pageContext.request.contextPath }/user/doAddUser.do">添加商务经理</a>
	</form><br/>
	<table>
		<tr>
			<th>用户账号</th>
			<th>用户名</th>
			<th>用户密码</th>
			<th>是否被锁</th>
			<th>创建日期</th>
			<th>修改</th>
		</tr>
		<c:forEach var="user" items="${listUsers }">
			<c:if test="${user.role eq '1' }">
			<tr>
				<td>${user.user_account }</td>
				<td>${user.user_name }</td>
				<td>${user.user_password }</td>
			  <c:choose>  
    			 <c:when test="${user.user_islock == '0'}">
    				<td>未锁</td>    
    			 </c:when>  
   					<c:when test="${user.user_islock == '1'}">  
        			<td>已锁</td>  
    			 </c:when>  
			  </c:choose> 
				<td><fmt:formatDate value="${user.create_time }"
						pattern="yyyy-MM-dd" /></td>
				<td><a href="${pageContext.request.contextPath }/user/toUserModify.do?user_id=${user.user_id }">修改</a></td>
			</tr>
			</c:if>
		</c:forEach>
	</table>
</body>
</html>