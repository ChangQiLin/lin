package com.lin.ssm.controller;

import com.lin.ssm.entity.Auction;
import com.lin.ssm.entity.Retable;
import com.lin.ssm.service.AuctionService;
import com.lin.ssm.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Map;


@Controller
public class AuctionController {
	@Autowired
	private AuctionService auctionService;
	
	@Autowired
	private RecordService recordService;
	
	
	@RequestMapping("/main")
	public String main(Auction auction, Map<String, List<Auction>> map){
		map.put("list", auctionService.getAllAuction(auction));
		return "main";
	}
	
	@RequestMapping("/add")
	public String add(Auction auction,MultipartFile picture,HttpServletRequest request) throws Exception{
		String fileName = picture.getOriginalFilename();
		fileName = new Date().getTime()+"_"+fileName;
		String realPath = request.getRealPath("upimg");
		picture.transferTo(new File(realPath+"\\"+fileName));
		auction.setAuction_pic(fileName);
		auctionService.addAuction(auction);
		return "redirect:/main.do";
	}
	
	@RequestMapping("/toUpdate")
	public String toUpdate(int id,Map<String,Auction> map){
		Auction auction = auctionService.getOneAuction(id);
		map.put("a", auction);
		return "update";
	}
	
	@RequestMapping("/update")
	public String update(Auction auction,MultipartFile picture,HttpServletRequest request) throws Exception{
		if(picture!=null){
			String fileName = picture.getOriginalFilename();
			fileName = new Date().getTime()+"_"+fileName;
			String realPath = request.getRealPath("upimg");
			File oldFile = new File(realPath+"\\"+auction.getAuction_pic());
			oldFile.delete();
			picture.transferTo(new File(realPath+"\\"+fileName));
			auction.setAuction_pic(fileName);
		}
		auctionService.update(auction);
		return "redirect:/main.do";
	}
	
	@RequestMapping("/delete")
	public String delete(int id,String name,HttpServletRequest request){
		String realPath = request.getRealPath("upimg");
		File oldFile = new File(realPath+"\\"+name);
		oldFile.delete();
		auctionService.delete(id);
		recordService.deleteRecord(id);
		return "redirect:/main.do";
	}
	
	@RequestMapping("/auctionPage")
	public String auctionPage(int id,Map map){
		Auction auction = auctionService.getOneAuction(id);
		List<Retable> reList = recordService.getAllRecord(id);
		map.put("auction", auction);
		map.put("reList", reList);
		return "auction";
	}
	
	
}
