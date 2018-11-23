package com.lin.ssm.controller;

import com.lin.ssm.entity.Record;
import com.lin.ssm.entity.User;
import com.lin.ssm.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class RecordController {
	
	@Autowired
	private RecordService recordService;
	
	@RequestMapping("addRecord")
	public String addRecord(double myprice,int id,HttpSession session){
		User u = (User)session.getAttribute("user");
		int uid = u.getUser_id();
		Record r = recordService.getCheck(uid,id);
		if(r!=null){
			recordService.updateRecordPrice(uid, id, myprice);
		}else{
			Record record = new Record(uid, id, myprice);
			recordService.addRecord(record);
		}
		return "redirect:/auctionPage.do?id="+id;
	}
	
	
	
	
}
