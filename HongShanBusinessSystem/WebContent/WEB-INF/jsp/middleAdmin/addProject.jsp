<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xxhh
  Date: 2018/4/3
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/middleProject/addProject.do">
    <table>
        <tr>
            <td>项目名称</td>
            <td><input type="text" name="project_name"></td>
        </tr>
        <tr>
            <td>项目平台</td>
            <td><input type="text" name="project_platform"/></td>
        </tr>
        <tr>
            <td>项目编号</td>
            <td>
                <input type="text" name="project_number"/>
            </td>
        </tr>
        <tr>
            <td>客户预算</td>
            <td>
                <input type="text" name="project_budget"/>
            </td>
        </tr>
        <tr>
            <td>报价</td>
            <td>
                <input type="text" name="project_quote"/>
            </td>
        </tr>
        <tr>
            <td>需求</td>
            <td>
                <textarea name="project_req" style="width: 350px;height: 100px">
                </textarea>
            </td>
        </tr>
        <tr>
            <td>项目状态</td>
            <td>
                <select name="customer_state" >
                    <option value="">请选择</option>
                    <option value="有合同">有合同</option>
                    <option value="无合同">无合同</option>
                </select>
            </td>
        </tr>
        <%--<tr>
            <td>负责人</td>
            <td><input type="text" name="project_manager"></td>
        </tr>--%>
        <tr>
            <td>所属客户</td>
            <td>
                <select name="customer_id">
                    <c:forEach items="${customers}" var="cus">
                        <option value="${cus.customer_id}">${cus.customer_name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit"></td>
        </tr>
    </table>
</form>
</body>
</html>
