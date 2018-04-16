package com.lei.movies.javabean;

import java.util.List;

import org.eclipse.jdt.internal.compiler.batch.Main;

import com.lei.movies.dao.BaseDAO;

public class MoviesOperate {
	//按照电影名称查询电影信息
	public List<Movies> findByMovieName(String movieName){
		//sql语句
		String sql="SELECT * FROM movies WHERE movieName like'%"+movieName+"%'";
		Object [] params= {};
		List<Movies> movies=BaseDAO.find(sql, params, Movies.class);
		return movies;
	}
	
	//按照导演信息查询电影
	public List<Movies> findByDirector(String director){
		//sql语句
		String sql="SELECT * FROM movies WHERE director='"+director+"'";
		Object [] params= {};
		List<Movies> movies=BaseDAO.find(sql, params, Movies.class);
		return movies;
	}
	
	//按照电影类型查询电影信息
	public List<Movies> findByTypeID(int typeID){
		//sql语句
		String sql="SELECT * FROM movies WHERE typeID="+typeID;
		Object [] params= {};
		List<Movies> movies=BaseDAO.find(sql, params, Movies.class);
		return movies;
	}
	
	//根据演员插叙电影信息
	public List<Movies> findByStardom(String stardom){
		//sql语句
		String sql="SELECT * FROM movies WHERE stardom LIKE '%"+stardom+"%'";
		Object [] params= {};
		List<Movies> movies=BaseDAO.find(sql, params, Movies.class);
		return movies;
	}
	
	//查询所有的电影方法
	public List<Movies> findAll(){
		String sql="SELECT * FROM movies";
		Object [] params= {};
		List<Movies> movies=BaseDAO.find(sql, params, Movies.class);
		return movies;
	}
}