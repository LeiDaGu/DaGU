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
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function findUser(){
		var user_account = $("#user_account").val();
		$.ajax({
			type:'POST',
			url:'${pageContext.request.contextPath }/sameUser/findUserByName.do',
			data: {
				"user_account":user_account,
			},
			success: function(data) {
				if(data.key == "0"){
					alert(data.value);
					$("#user_account").focus()
				}
			}
		})
	}
</script>
</head>
<body>
<form action="${pageContext.request.contextPath}/middleAdmin/addAdmin.do">
    <table>
        <tr>
            <td>姓名</td>
            <td><input type="text" name="user_name"></td>
        </tr>
        <tr>
            <td>登录账号</td>
            <td><input id="user_account" type="text" name="user_account" onchange="findUser()" /></td>
        </tr>
        <tr>
            <td>密码</td>
            <td>
                <input type="text"  name="user_password" value="111111" disabled = "disabled"/>
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit"></td>
        </tr>
    </table>
</form>
</body>
</html>
