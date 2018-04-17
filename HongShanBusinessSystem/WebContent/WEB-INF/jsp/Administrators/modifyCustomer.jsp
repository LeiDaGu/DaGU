<%--
  Created by IntelliJ IDEA.
  User: xxhh
  Date: 2018/4/3
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/adminiCustomer/modifyCustomer.do">
    <input type="hidden" name="customer_id" value="${customer.customer_id}">
    <input type="hidden" name="user_id" value="${customer.user_id}">
    <input type="hidden" name="create_time" value="${customer.create_time}">
    <table>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="customer_name" value="${customer.customer_name}"></td>
        </tr>
        <tr>
            <td>级别</td>
            <td>
                <select name="customer_grade" >
                    <option value="">请选择</option>
                    <option value="A" <c:if test="${customer.customer_grade eq 'A'}"> selected="selected" </c:if>>A</option>
                    <option value="B" <c:if test="${customer.customer_grade eq 'B'}"> selected="selected" </c:if>>B</option>
                    <option value="C" <c:if test="${customer.customer_grade eq 'C'}"> selected="selected" </c:if>>C</option>
                    <option value="D" <c:if test="${customer.customer_grade eq 'D'}"> selected="selected" </c:if>>D</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>来源</td>
            <td>
                <input type="text" name="customer_origin" value="${customer.customer_origin}"/>
            </td>
        </tr>
        <tr>
            <td>电话</td>
            <td>
                <input type="text" name="customer_telephone" value="${customer.customer_telephone}"/>
            </td>
        </tr>
        <tr>
            <td>手机</td>
            <td>
                <input type="text" name="customer_phone" value="${customer.customer_phone}"/>
            </td>
        </tr>
        <tr>
            <td>qq</td>
            <td>
                <input type="text" name="customer_qq" value="${customer.customer_qq}"/>
            </td>
        </tr>
        <tr>
            <td>微信</td>
            <td>
                <input type="text" name="customer_weixin" value="${customer.customer_weixin}"/>
            </td>
        </tr>
        <tr>
            <td>城市</td>
            <td><input type="text" name="customer_city" value="${customer.customer_city}"></td>
        </tr>
        <tr>
            <td>地址</td>
            <td><input type="text" name="customer_address" value="${customer.customer_address}"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit"></td>
        </tr>
    </table>
</form>
</body>
</html>
