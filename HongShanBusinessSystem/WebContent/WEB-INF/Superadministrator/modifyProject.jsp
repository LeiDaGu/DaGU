<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>修改项目</title>
<style type="text/css">
	span{
		color:red;
	}
</style>
</head>
<body>
	<h3>修改项目</h3>
	<form action="${pageContext.request.contextPath }/project/modifyProject.do">
		<input type="hidden" name="project_id" value="${project.project_id }" />
			<span>项目名称:</span>${project.project_name }<br/>
			<span>项目平台:</span>${project.project_platform }<br/>
			<span>项目编号:</span>${project.project_number }<br/>
			<span>项目预算:</span>${project.project_budget }<br/>
			<span>项目报价:</span>${project.project_quote }<br/>
			<span>项目需求:</span>${project.project_req }<br/>
			<span>项目状态:</span>${project.project_state }<br/>
			<span>创建日期:</span><fmt:formatDate value="${project.create_time }" pattern="yyyy-MM-dd" /><br/> 
			<span>项目经理:</span>
			<input type="text" name="project_manager" value="${project.project_manager }"/><br/>
		<input type="submit" value="提交" />
	</form>
</body>
</html>