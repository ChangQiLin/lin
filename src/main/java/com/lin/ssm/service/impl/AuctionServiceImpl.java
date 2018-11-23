package com.lin.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lin.ssm.dao.AuctionDao;
import com.lin.ssm.entity.Auction;
import com.lin.ssm.service.AuctionService;

@Service
public class AuctionServiceImpl implements AuctionService {
	
	@Autowired
	private AuctionDao auctionDao ;

	@Override
	public List<Auction> getAllAuction(Auction auction) {
		return auctionDao.getAllAuction(auction);
	}

	@Override
	public Auction getOneAuction(int id) {
		return auctionDao.getOneAuction(id);
	}

	@Override
	public void addAuction(Auction auction) {
		auctionDao.addAuction(auction);
	}

	@Override
	public void update(Auction auction) {
		auctionDao.update(auction);
	}

	@Override
	public void delete(int id) {
		auctionDao.delete(id);
	}

}
