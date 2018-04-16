<%@page import="com.lei.movies.javabean.Movies"%>
<%@page import="java.util.List"%>
<%@page import="com.lei.movies.javabean.MoviesOperate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>调用方法查找信息</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		//获取请求参数
		String type=request.getParameter("type");
		String enterName=request.getParameter("enterName");
		
		MoviesOperate moviesOperate=new MoviesOperate();
		List <Movies> moviesList=null;
		if(type.equals("all")){
			moviesList=moviesOperate.findAll();
		}else if (type.equals("movieName")){
			moviesList=moviesOperate.findByMovieName(enterName);
		}else if (type.equals("director")){
			moviesList=moviesOperate.findByDirector(enterName);
		}else if (type.equals("typeID")){
			moviesList=moviesOperate.findByTypeID(Integer.parseInt(enterName));
		}else if (type.equals("stardom")){
			moviesList=moviesOperate.findByStardom(enterName);
		}
		
		request.setAttribute("movies", moviesList);
		//转发到result.jsp页面
		request.getRequestDispatcher("/result.jsp").forward(request,response);
	%>
</body>
</html>