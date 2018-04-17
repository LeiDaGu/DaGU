<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>红杉商务系统登录</title>
</head>
<script src="static/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
    function login() {
        var account = $("#user_account").val();
        var password = $("#user_password").val();
		if(account==null||account==undefined||account==""){
		    alert("用户名不能为空");
		    return;
		}
		if(password==null||password==undefined||password==""){
			alert("密码不能为空");
			return;
		}
		$.ajax({
			async : false,
			url:"Login/login.do",
			type:"post",
			dataType:"json",
			data:{
			    "user_account":account,
				"user_password":password
			},
			success:function (result) {
			    if(result.key == 0){
			        alert("用户名不存在");
				}else if (result.key ==1){
					alert("用户名或密码错误");
				}else{
			        if(result.page=="superAdmin"){ //商务经理转到商务经理页面
                        window.location.href = "${pageContext.request.contextPath }/static/Superadministrator/index.jsp";
			        }else{							//转到主管界面
                        window.location.href="${pageContext.request.contextPath }/static/Administrators/index.jsp";
					}
                }
            }
		});

    }
</script>
<body>
<h2>红杉商务管理系统</h2>
<h3>登录</h3>
<form  method="post">
	用户名：<input type="text" name="user_account" id="user_account"/> <br />
	密&nbsp;&nbsp;&nbsp;码：<input type="text" id="user_password" /> <br />
	<input type="submit"  value="登录" onclick="login();return false"/>
</form>
</body>
</html>