<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${fn:length(movies)<=0 }">
			<h1>没有电影信息请<a href="searchMovies.jsp">返回</a>继续查询</h1>
		</c:when>
		<c:otherwise>
		<table>
		<tr>
			<th>ID</th>
			<th>电影名称</th>
			<th>电影主编</th>
			<th>电影类型</th>
			<th>演员</th>
			<th>地区</th>
			<th>上映时间</th>
			<th>电影简介</th>
			<th>定价</th>
		</tr>
		
		<c:forEach var = "movies" items="${requestScope.movies }">
			<tr>
				<td>${movies.movieID }</td>
				<td>${movies.movieName }</td>
				<td>${movies.director }</td>
				<td>${movies.typeID }</td>
				<td>${movies.stardom }</td>
				<td>${movies.region }</td>
				<td>${movies.showtime }</td>
				<td>${movies.description }</td>
				<td>${movies.price }</td>
			</tr>
			
		</c:forEach>
	</table>
		</c:otherwise>
	</c:choose>
	
</body>
</html>