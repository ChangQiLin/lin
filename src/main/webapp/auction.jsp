<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'auction.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
	<link href="${pageContext.request.contextPath }/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
    <div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
  <div class="items sg-font lf">
      <ul class="rows">
        <li>名称：</li>
        <li class="borderno">${auction.auction_name }</li>
      </ul>
      <ul class="rows">
        <li>描述：</li>
        <li class="borderno">${auction.auction_desc }</li>
      </ul>
      <ul class="rows">
        <li>开始时间：</li>
        <li class="borderno"><f:formatDate value="${auction.auction_start_time }" pattern="yyyy-MM-dd hh:mm:ss"/></li>
      </ul>
      <ul class="rows">
        <li>结束时间：</li>
        <li class="borderno"><f:formatDate value="${auction.auction_end_time }" pattern="yyyy-MM-dd hh:mm:ss"/></li>
      </ul>
      <ul class="rows border-no">
        <li>起拍价：</li>
        <li class="borderno" id="startprice">${auction.auction_start_price }</li>
      </ul>
  </div>
  <div class="rg borders"><img src="upimg/${auction.auction_pic }" width="270" height="185" alt="" /></div>
  <div class="cl"></div>
  
  
  
  <div class="top10 salebd">
       <form action="addRecord.do" method="post" onsubmit="return check()">
       <p>
       <label for="sale">出价：</label>
       <input type="text"  class="inputwd" id="sale" value="" name="myprice"/>
       <input type="hidden" name="id" value="${auction.auction_id }"/>
       <input name="" type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" />
       <span id="message" style="color:red"></span>
       </p>
       </form>
       <p class="f14 red">不能低于最高竞拍价</p>
  </div>
  <script type="text/javascript">
  	function check(){
  		var v = $("#sale").val();
  		if(v.length==0){
  			$("#message").html("请输入竞拍价格！");
  			return false;
  		}
  		var p = $(".price");
  		if(p.length!=0){
  			var c = p[0].innerHTML;
  			var price = parseInt(c);
  			if(v<price){
  				$("#message").html("您输入的价格没有高于当前最高竞拍价！");
  				return false;
  			}
  		}else{
  			//没有记录
  			var c = $("#startprice").html();
  			var startprice = parseInt(c);
  			if(v<startprice){
  				$("#message").html("价格没有高于起拍价！");
  				return false;
  			}
  		}
  		return true;
  	}
  </script>
  
  
  
  <form action="" method="post">
  <div class="top10">
    <input name="" type="submit" value="刷 新" class="spbg buttombg f14" />
    <input name="" type="button" value="返回列表" class="spbg buttombg f14" onclick="back()"/>
  </div>
  </form>
  
  <script type="text/javascript">
  	function back(){
  		location="/SSMAuction/main.do";
  	}
  </script>
  <div class="offer">
    <h3>出价记录</h3>
    <div class="items sg-font">
      <ul class="rows even strong">
        <li>竞拍时间</li>
        <li>竞拍价格</li>
        <li class="borderno">竞拍人</li>
      </ul>
      <c:forEach items="${reList }" var="r" varStatus="sta">
      <c:if test="${sta.index%2==0}">
      	<ul class="rows">
      </c:if>
       <c:if test="${sta.index%2!=0}">
     	 <ul class="rows even">
      </c:if>
        	<li>${r.auction_time}</li>
       		<li class="price">${r.auction_price}</li>
       	 	<li class="borderno">${r.user_name}</li>
     	 </ul>
    </c:forEach>
      
  </div>
  </div>
<!-- main end-->
</div>
  </body>
</html>
