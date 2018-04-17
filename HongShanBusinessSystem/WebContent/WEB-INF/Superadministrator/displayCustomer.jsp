<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>显示所有客户</title>
<style type="text/css">
table {
	border-collapse: collapse;
	width:1200px;
}
th, td {
	border: 1px solid red;
	text-align: center;
}
</style>
</head>
<body>
	<h3>显示所有客户</h3>
	<!-- 
	<jsp:useBean id="now" class="java.util.Date" scope="page"/>
	<fmt:formatDate value="${now}" pattern="yyyy年MM月dd日" />
	 -->
	<form action="${pageContext.request.contextPath }/customer/displayCustomerByMultiCondition.do">
	客户等级： 
	<select name="customer_grade">
		<option value="" >请选择</option>
		<option value="A">A</option>
		<option value="B">B</option>
		<option value="C">C</option>
		<option value="D">D</option>
	</select>
	客户姓名：
	<input type="text" name="customer_name" />
	客户来源：
	<input type="text" name="customer_origin" />
	城市：
	<input type="text" name="customer_city" />
	<input type="submit" value="提交" />
	</form><br/>
	<table>
		<tr>
			<th>客户分级</th>
			<th>客户姓名</th>
			<th>客户来源</th>
			<th>客户手机</th>
			<th>客户电话</th>
			<th>客户qq</th>
			<th>客户微信</th>
			<th>城市</th>
			<th>详细地址</th>
			<th>创建日期</th>
		</tr>
		<c:forEach var="customer" items="${listCustomer }">
			<tr>
				<td>${customer.customer_grade }</td>
				<td>
				<a href="${pageContext.request.contextPath }/project/dispalyProjectByCustomerID.do?project_customer_id=${customer.user_id}">
				${customer.customer_name }</a>
				</td>
				<td>${customer.customer_origin }</td>
				<td>${customer.customer_phone }</td>
				<td>${customer.customer_telephone }</td>
				<td>${customer.customer_qq }</td>
				<td>${customer.customer_weixin }</td>
				<td>${customer.customer_city }</td>
				<td>${customer.customer_address }</td>
				<td><fmt:formatDate value="${customer.create_time }"
						pattern="yyyy-MM-dd" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>