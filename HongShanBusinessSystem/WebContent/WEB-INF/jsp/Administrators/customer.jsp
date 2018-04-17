<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <form action="">
            请输入您想要搜索的字段
            <input type="text" placeholder="姓名" name="customer_name" value="${cus.customer_name}">
            <select name="customer_grade" >
                <option value="">请选择</option>
                <option value="A" <c:if test="${cus.customer_grade eq 'A'}"> selected="selected" </c:if>>A</option>
                <option value="B" <c:if test="${cus.customer_grade eq 'B'}"> selected="selected" </c:if>>B</option>
                <option value="C" <c:if test="${cus.customer_grade eq 'C'}"> selected="selected" </c:if>>C</option>
                <option value="D" <c:if test="${cus.customer_grade eq 'D'}"> selected="selected" </c:if>>D</option>
            </select>
            <input type="text" placeholder="来源" name="customer_origin" value="${cus.customer_origin}">
            <input type="text" placeholder="城市" name="customer_city" value="${cus.customer_city}">
            <input type="text" placeholder="地址" name="customer_address" value="${cus.customer_address}">
            <input type="submit" value="提交">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/adminiCustomer/toAddCustomer.do">添加</a>
        </form>
        <table class = "tabCss">
            <tr>
                <td>姓名</td>
                <td>分级</td>
                <td>来源</td>
                <td>电话</td>
                <td>qq</td>
                <td>微信</td>
                <td>城市</td>
                <td>具体地址</td>
                <td>创建时间</td>
                <td>操作</td>
            </tr>
            <c:forEach items="${customer}" var="cus">
            <tr>
                <td>${cus.customer_name}</td>
                <td>${cus.customer_grade}</td>
                <td>${cus.customer_origin}</td>
                <td title="${cus.customer_phone}">${cus.customer_phone}</td>
                <td title="${cus.customer_qq}">${cus.customer_qq}</td>
                <td title="${cus.customer_weixin}">${cus.customer_weixin}</td>
                <td title="${cus.customer_city}">${cus.customer_city}</td>
                <td title="${cus.customer_address}">${cus.customer_address}</td>
                <td title="<fmt:formatDate value="${cus.create_time }" pattern="yyyy:MM:dd HH:mm:ss"/>"><fmt:formatDate value="${cus.create_time }" pattern="yyyy:MM:dd HH:mm:ss"/></td>
                <td><a href="${pageContext.request.contextPath}/adminiCustomer/toModiftCustomer.do?customer_id=${cus.customer_id}">修改</a></td>
            </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
