<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加商务经理</title>
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
<h3>添加商务经理</h3>
<form action="${pageContext.request.contextPath }/user/addUser.do">
	账号：<input id="user_account" type="text" name="user_account" onchange="findUser()" /><br/>
	用户名：<input id="user_name" type="text" name="user_name" /><br/>
	密码：<input type="password" name="user_password" /><br/>
	确认密码：<input type="password" name="password" /><br/>
	<input type="submit" value="添加主管" />
</form>
</body>
</html>