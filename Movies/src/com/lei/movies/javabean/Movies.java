package com.lei.movies.javabean;

public class Movies {
	private int movieID;//电影DVD 的ID
	private String movieName; // 电影DVD
	private String director;//电影的导演
	private int typeID; // 电影类型ID
	private String stardom; // 电影主演
	private String region; // 地区
	private String showtime; // 创建时间
	private String description; // 电影简介
	private String  image; // 图片路径
	private float price; //电影的价钱
	public Movies() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Movies(int movieID, String movieName, String director, int typeID, String stardom, String region,
			String showtime, String description, String image, float price) {
		super();
		this.movieID = movieID;
		this.movieName = movieName;
		this.director = director;
		this.typeID = typeID;
		this.stardom = stardom;
		this.region = region;
		this.showtime = showtime;
		this.description = description;
		this.image = image;
		this.price = price;
	}
	public int getMovieID() {
		return movieID;
	}
	public void setMovieID(int movieID) {
		this.movieID = movieID;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String i) {
		this.movieName = i;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public int getTypeID() {
		return typeID;
	}
	public void setTypeID(int typeID) {
		this.typeID = typeID;
	}
	public String getStardom() {
		return stardom;
	}
	public void setStardom(String stardom) {
		this.stardom = stardom;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getShowtime() {
		return showtime;
	}
	public void setShowtime(String showtime) {
		this.showtime = showtime;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	
}
