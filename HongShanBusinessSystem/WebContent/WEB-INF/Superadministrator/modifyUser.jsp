<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改主管</title>
</head>
<body>
	<h3>修改主管</h3>
	<form action="${pageContext.request.contextPath }/user/userModify.do" method="post">
		<input type="hidden" name="user_id" value="${SIDuser.user_id }" /> <input
			type="hidden" name="role" value="${SIDuser.role }" /> <input
			type="hidden" name="user_account" value="${SIDuser.user_account }" />
		<input type="hidden" name="create_time"
			value="${SIDuser.create_time }" /> 账户：${SIDuser.user_account } <br />
		用户名： <input type="text" name="user_name" value="${SIDuser.user_name }" />
		<br /> 密码： <input type="text" name="user_password"
			value="${SIDuser.user_password }" /> <br /> 当前状态：
		<c:choose>
			<c:when test="${SIDuser.user_islock == '0'}">
				<td>未锁</td>
			</c:when>
			<c:when test="${SIDuser.user_islock == '1'}">
				<td>已锁</td>
			</c:when>
		</c:choose>
		<br /> 是否锁： <select name="user_islock">
			<option value="0">否</option>
			<option value="1">是</option>
		</select><br />
		<input type="submit" value="修改" />
	</form>
</body>
</html>