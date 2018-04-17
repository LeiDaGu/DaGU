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
	function findCustomer(){
		var customer_name = $("#customer_name").val();
		$.ajax({
			type:'POST',
			url:'${pageContext.request.contextPath }/sameCustomer/findCustomerByName.do',
			data: {
				"customer_name":customer_name,
			},
			success: function(data) {
				if(data.key == "0"){
					alert(data.value);
					$("#customer_name").focus()
				}
			}
		})
	}
</script>
</head>
<body>
    <form action="${pageContext.request.contextPath}/adminiCustomer/addCustomer.do">
        <table>
            <tr>
                <td>姓名</td>
                <td><input id="customer_name" type="text" name="customer_name" onchange="findCustomer()" ></td>
            </tr>
            <tr>
                <td>级别</td>
                <td>
                    <select name="customer_grade" >
                        <option value="">请选择</option>
                        <option value="A">A</option>
                        <option value="B">B</option>
                        <option value="C">C</option>
                        <option value="D">D</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>来源</td>
                <td>
                    <input type="text" name="customer_origin"/>
                </td>
            </tr>
            <tr>
                <td>电话</td>
                <td>
                    <input type="text" name="customer_telephone"/>
                </td>
            </tr>
            <tr>
                <td>手机</td>
                <td>
                    <input type="text" name="customer_phone"/>
                </td>
            </tr>
            <tr>
                <td>qq</td>
                <td>
                    <input type="text" name="customer_qq"/>
                </td>
            </tr>
            <tr>
                <td>微信</td>
                <td>
                    <input type="text" name="customer_weixin"/>
                </td>
            </tr>
            <tr>
                <td>城市</td>
                <td><input type="text" name="customer_city"></td>
            </tr>
            <tr>
                <td>地址</td>
                <td><input type="text" name="customer_address"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit"></td>
            </tr>
        </table>
    </form>
</body>
</html>
