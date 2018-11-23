package com.lin.ssm.service;

import com.lin.ssm.entity.Record;
import com.lin.ssm.entity.Retable;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecordService {
	public List<Retable> getAllRecord(int auction_id);
	public void addRecord(Record record);
	public Record getCheck(@Param("uid") int uid, @Param("aid") int aid);
	public void updateRecordPrice(@Param("uid") int uid, @Param("aid") int aid, @Param("price") Double price);
	public void deleteRecord(int id);
}
