<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="${pageContext.request.contextPath }/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
       function toadd(){
          window.location="/SSMAuction/add.jsp";
        }
   </script>
  </head>
  
  <body>
  	<div class="wrap">
<!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <c:if test="${sessionScope.user!=null }">
    <div class="logout right"><font color="red">${sessionScope.user.user_name} </font></div>
    <div class="logout right"><a href="logout.do" title="注销">注销</a></div>
    </c:if>
    <c:if test="${sessionScope.user==null }">
     <div class="logout right"><a href="login.jsp" title="注销">登录</a></div>
     <div class="logout right"><a href="#" title="注销">注册</a></div>
     </c:if>
  </div>
  <form action="main.do" method="post">
  <div class="forms">
    <label for="name">名称</label>
    <input name="auction_name" type="text" class="nwinput" id="name"/>
    <label for="names">描述</label>
    <input name="auction_desc" type="text" id="names" class="nwinput"/>
    <label for="time">开始时间</label>
    <input name="auction_start_time" type="text" id="time" class="nwinput"/>
    <label for="end-time">结束时间</label>
    <input name="auction_end_time" type="text" id="end-time" class="nwinput" />
    <label for="price">起拍价</label>
    <input name="auction_start_price" type="text" id="price" class="nwinput" />
    <input name="" type="submit"  value="查询" class="spbg buttombg f14  sale-buttom"/>
    <input type="button"  value="发布" class="spbg buttombg f14  sale-buttom buttomb" onclick="toadd()"/>
  </div>
  </form>
  <div class="items">
      <ul class="rows even strong">
        <li>名称</li>
        <li class="list-wd">描述</li>
        <li>开始时间</li>
        <li>结束时间</li>
        <li>起拍价</li>
        <li class="borderno">操作</li>
      </ul>
      
      
      <c:forEach items="${list }" var="a" varStatus="sta">
     <c:if test="${sta.index%2==0}">
            	<ul class="rows">
      </c:if>
      <c:if test="${sta.index%2!=0}">
     	 <ul class="rows even">
      </c:if>
        <li><a href="#" title="">${a.auction_name}</a></li>
        <li class="list-wd">${a.auction_desc}</li>
        <li><f:formatDate value="${a.auction_start_time}" pattern="yyy-MM-dd hh:mm:ss"/></li>
        <li><f:formatDate value="${a.auction_end_time}" pattern="yyy-MM-dd hh:mm:ss"/></li>
        <li>${a.auction_start_price}</li>
        <li class="borderno red">
           <a href="auctionPage.do?id=${a.auction_id}">竞拍</a>
           <c:if test="${sessionScope.user.user_is_admin==1 }">
		   		<a href="toUpdate.do?id=${a.auction_id}&name=${a.auction_pic}" title="修改" onclick="dele();">修改</a>|
         	 	<a href="delete.do?id=${a.auction_id}" title="删除" onclick="abc();">删除</a>
          </c:if>
        </li>
      </ul>
     </c:forEach>
      
      
     <%--  <div class="page">
        <a href="#" title="">首页</a>
        <a href="#" title="">上一页</a>
        <span class="red">前5页</span>
        <a href="#" title="">1</a> 
        <a href="#" title="">2</a> 
        <a href="#" title="">3</a> 
        <a href="#" title="">4</a>
        <a href="#" title="">5</a> 
        <a href="#" title="">下一页</a>
        <a href="#" title="">尾页</a> 
      </div> --%>
  </div>
  <script>
   function abc(){
	   
	   if(confirm("你真的确认要删除吗？请确认")){
	    
		   return true;
		 }
		 else{
			 return false;
			 }
			 
	   };
	   function dele(){
		   if(confirm("你真的确认要修改吗？请确认")){
			   return true;
			   }
			   else{
				   return false;
				   }
		 }
  </script>
<!-- main end-->
</div>
  </body>
</html>
