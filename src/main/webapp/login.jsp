<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
  </head>
  
  <body>
    <div class="wrap">
<!-- main begin-->
 <div class="main">
   <div class="sidebar">
     <p><img src="images/img1.jpg" width="443" height="314" alt="" /></p>
   </div>
   <div class="sidebarg">
     <form action="login.do" method="post" >
    <div class="login">
      <dl>
        <dt class="blues">用户登陆</dt>
        <dd><label for="name">用户名：</label><input type="text" class="inputh" value="" id="name" name="user_name"/></dd>
        <dd><label for="password">密 码：</label><input type="text" class="inputh" value="" id="password" name="user_password"/></dd>
        <dd>
           <label class="lf" for="passwords">验证码：</label>
           <input type="text" class="inputh inputs lf" id="passwords" name="yzm"/>
           <span class="wordp lf"><img src="getKaptcha.do" width="96" height="27" alt="" id="iii"/></span>
           <span class="blues lf"><a href="javascipt:void(0)" title="" onclick="change()">看不清</a></span>
        </dd>
        
        <script type="text/javascript">
        function change(){
        	var v = document.getElementById("iii");
        	v.src="getKaptcha.do?t="+new Date().getTime();
        }
        function toreg(){
        	location="/Auction/regist.jsp"
        }
        </script>
        
        <dd>
           <input name=""  type="checkbox" id="rem_u"  />
           <span for="rem_u">下次自动登录</span>
        </dd>
        <dd class="buttom">
           <input name="" type="submit" value="登 录" class="spbg buttombg f14 lf" />
           <input name="" type="button" value="注 册" class="spbg buttombg f14 lf" onclick="toreg()"/>
           <span class="blues  lf"><a href="" title="">忘记密码?</a></span>
           <div class="cl"></div>
        </dd>
       
      </dl>
    </div>
    </form>
   </div>
  <div class="cl"></div>
 </div>
<!-- main end-->
 
<!-- footer begin-->
</div>
 <!--footer end-->
 
</div>
  </body>
</html>
