package com.lin.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lin.ssm.dao.RecordDao;
import com.lin.ssm.entity.Record;
import com.lin.ssm.entity.Retable;
import com.lin.ssm.service.RecordService;

@Service
public class RecordServiceImpl implements RecordService {

	@Autowired
	private RecordDao recordDao;
	
	@Override
	public List<Retable> getAllRecord(int auction_id) {
		return recordDao.getAllRecord(auction_id);
	}
	
	
	@Override
	public void addRecord(Record record) {
		recordDao.addRecord(record);
	}


	@Override
	public Record getCheck(int uid, int aid) {
		return recordDao.getCheck(uid, aid);
	}


	@Override
	public void updateRecordPrice(int uid, int aid, Double price) {
		recordDao.updateRecordPrice(uid, aid, price);
	}


	@Override
	public void deleteRecord(int id) {
		recordDao.deleteRecord(id);
	}

}
