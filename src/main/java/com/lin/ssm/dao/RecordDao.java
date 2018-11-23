package com.lin.ssm.dao;

import com.lin.ssm.entity.Retable;
import com.lin.ssm.entity.Record;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface RecordDao {
	public void addRecord(Record record);
	public List<Retable> getAllRecord(int auction_id);
	public Record getCheck(@Param("uid") int uid, @Param("aid") int aid);
	public void updateRecordPrice(@Param("uid") int uid, @Param("aid") int aid, @Param("price") Double price);
	public void deleteRecord(int id);
}
