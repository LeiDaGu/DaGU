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
    <form action="">
        请输入您想要搜索的字段
        <input type="text" placeholder="项目名称" name="project_name" value="${pro.project_name}"/>
        <input type="text" placeholder="项目平台" name="project_platform" value="${pro.project_platform}"/>
        <input type="text" placeholder="项目编号" name="project_number" value="${pro.project_number}"/>
        <input type="text" placeholder="客户名称" name="customer_name" value="${customer_name}"/>
        <select name="project_state" >
            <option value="">请选择</option>
            <option value="有合同" <c:if test="${pro.project_state eq '有合同'}"> selected="selected" </c:if>>有合同</option>
            <option value="无合同" <c:if test="${pro.project_state eq '无合同'}"> selected="selected" </c:if>>无合同</option>
        </select>
        <input type="text" placeholder="负责人" name="project_manager" value="${pro.project_manager}"/>
        <input type="submit" value="提交"/>
        <a href="${pageContext.request.contextPath}/adminiProject/toAddProject.do">添加</a>
    </form>
    <table class = "tabCss">
        <tr>
            <td style="width: 200px">项目名称</td>
            <td>项目平台</td>
            <td>项目编号</td>
            <td>客户姓名</td>
            <td>客户预算</td>
            <td>报价</td>
            <td>需求</td>
            <td>状态</td>
            <td>跟踪记录</td>
            <td>负责人</td>
            <td>创建时间</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${projects}" var="pro">
            <tr>
                <td title="${pro.project_name}">${pro.project_name}</td>
                <td>${pro.project_platform}</td>
                <td>${pro.project_number}</td>
                <td>${pro.customer_name}</td>
                <td>${pro.project_budget}</td>
                <td>${pro.project_quote}</td>
                <td title="${pro.project_req}">${pro.project_req}</td>
                <td>${pro.project_state}</td>
                <td><a href="${pageContext.request.contextPath}/adminiProject/findProjectTrackingByProjectID.do?project_id=${pro.project_id}">项目跟踪记录</a></td>
                <td>${pro.project_manager}</td>
                <td title="<fmt:formatDate value="${pro.create_time }" pattern="yyyy:MM:dd HH:mm:ss"/>"><fmt:formatDate value="${pro.create_time }" pattern="yyyy:MM:dd HH:mm:ss"/></td>
                <td><a href="${pageContext.request.contextPath}/adminiProject/toModifyProject.do?project_id=${pro.project_id}">修改</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
