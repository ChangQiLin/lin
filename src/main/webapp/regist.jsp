<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regist.jsp' starting page</title>
    
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
  	<form action="<s:url namespace="/" action="user_regist"/>" method="post">
    <div class="wrap">
  <!-- main begin-->
      <div class="zclf login logns">
        <h1  class="blue">用户注册</h1>
          <dl>
            <dd>
              <label> <small>*</small>用户名</label>
              <input type="text" class="inputh lf" value="<s:property value="user.user_name"/>" name="user.user_name"/>
             <div class="lf red laba">用户名要求不低于6个字符</div>
            </dd>
            <dd>
              <label> <small>*</small>密码</label>
              <input type="text" class="inputh lf" value="<s:property value="user.user_password"/>" name="user.user_password"/>
              <div class="lf red laba">密码要求不低于6个字符</div>
            </dd>
            <dd>
              <label> <small>*</small>身份证号</label>
              <input type="text" class="inputh lf" value="<s:property value="user.user_card_no"/>" name="user.user_card_no"/>
              <div class="lf red laba">身份证号必填</div>
            </dd>
            <dd>
              <label> <small>*</small>电话</label>
              <input type="text" class="inputh lf" value="<s:property value="user.user_tel"/>" name="user.user_tel"/>
              <div class="lf red laba">电话号码必填</div>
            </dd>
            <dd>
              <label> <small>*</small>住址</label>
              <input type="text" class="inputh lf" value="<s:property value="user.user_address"/>" name="user.user_address"/>
            </dd>
            <dd>
              <label> <small>*</small>邮政编码</label>
              <input type="text" class="inputh lf" value="<s:property value="user.user_post_number"/>" name="user.user_post_number"/>
            </dd>
            <dd class="hegas">
              <label> <small>*</small>验证码</label>
              <input type="text" class="inputh inputs lf" name="yzm"/>
               <span class="wordp lf"><img src="/Auction/yzm.servlet" width="96" height="27" alt="" id="iii"/></span>
               <span class="blues lf"><a href="javascript:void(0)" title="" onclick="change()">看不清</a></span>
            </dd>
             <script type="text/javascript">
       			 function change(){
        			var v = document.getElementById("iii");
        			v.src="/Auction/yzm.servlet?a="+Math.random();
       			 }
        </script>
            <dd class="hegas">
              <label>&nbsp;</label>
               <input name=""  type="checkbox" id="rem_u"   />
              <label for="rem_u" class="labels">我同意<span class="blues">《服务条款》</span></label>
            </dd>
            <dd class="hegas">
              <label>&nbsp;</label>
              <input name="" type="submit" value="立即注册" class="spbg buttombg buttombgs f14 lf" />
            </dd>
          </dl>
    </div>
<!-- main end-->
<!-- footer begin-->

</div>
 <!--footer end-->
</div>
</form>
  </body>
</html>
