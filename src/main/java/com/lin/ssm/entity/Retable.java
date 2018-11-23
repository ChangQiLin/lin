package com.lin.ssm.entity;

public class Retable {
	private String auction_time;
	private Double auction_price;
	private String user_name;
	public Retable(String auction_time, Double auction_price, String user_name) {
		super();
		this.auction_time = auction_time;
		this.auction_price = auction_price;
		this.user_name = user_name;
	}
	public Retable() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getAuction_time() {
		return auction_time;
	}
	public void setAuction_time(String auction_time) {
		this.auction_time = auction_time;
	}
	public Double getAuction_price() {
		return auction_price;
	}
	public void setAuction_price(Double auction_price) {
		this.auction_price = auction_price;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	@Override
	public String toString() {
		return "Retable [auction_time=" + auction_time + ", auction_price="
				+ auction_price + ", user_name=" + user_name + "]";
	}
	
	
	
}
