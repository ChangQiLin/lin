package com.lin.ssm.service;

import com.lin.ssm.entity.Auction;

import java.util.List;

public interface AuctionService {
	public List<Auction> getAllAuction(Auction auction);
	public Auction getOneAuction(int id);
	public void addAuction(Auction auction);
	public void update(Auction auction);
	public void delete(int id);
}
