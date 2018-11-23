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
    
    <title>My JSP 'update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="${pageContext.request.contextPath }/js/jquery-1.8.3.js"></script>
	<link href="${pageContext.request.contextPath }/css/common.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
   <form action="update.do" method="post" enctype="multipart/form-data">
    <div class="wrap">
  <!-- main begin-->
  <div class="sale">
    <h1 class="lf">在线拍卖系统</h1>
    <div class="logout right"><a href="#" title="注销">注销</a></div>
  </div>
      <div class="login logns produce">
        <h1 class="blues">拍卖品信息</h1>
          <dl>
            <dd >
              <label>名称：</label>
              <input type="hidden" name="auction_id" value="${a.auction_id}"/>
              <input type="text" class="inputh lf" value="${a.auction_name}" name="auction_name"/>
              <div class="xzkbg spbg lf"></div>
            </dd>
            <dd>
              <label>起拍价：</label>
              <input type="text" class="inputh lf" value="${a.auction_start_price}" name="auction_start_price"/>
              <div class="lf red laba">必须为数字</div>
            </dd>
            <dd>
              <label>底价：</label>
              <input type="text" class="inputh lf" value="${a.auction_upset}" name="auction_upset"/>
              <div class="lf red laba">必须为数字</div>
            </dd>
            <!-- <dd>
              <label>开始时间：</label>
              <input type="text" class="inputh lf" value="" name="auction.auction_start_time"/>
              <div class="lf red laba">格式：2010-05-05 12:30:00</div>
            </dd> -->
            <dd>
              <label>结束时间：</label>
              <input type="text" class="inputh lf" value="${a.auction_end_time}" name="auction_end_time"/>
              <input type="hidden" name="auction_pic" value="${a.auction_pic}"/> 
              <div class="lf red laba">格式：2010-05-06 16:30:00</div>
            </dd>
            <dd class="dds">
              <label>拍卖品图片：</label>
               <div class="lf salebd"><a href="#"><img src="upimg/${a.auction_pic}" width="100" height="100" /></a></div>
              <input  type="file" class="offset10 lf" name="picture"/>
             
            </dd>
             <dd class="dds">
              <label>描述：</label>
              <textarea  cols="" rows="" class="textarea" name="auction_desc">${a.auction_desc}</textarea>
            </dd>
            <dd class="hegas">
                <input name="" type="submit" value="保 存" class="spbg buttombg buttombgs buttomb f14 lf" />
                <input name="" type="button" value="取 消" class="spbg buttombg buttombgs buttomb f14 lf" onclick="goback()"/>
            </dd>
            <script type="text/javascript">
            	function goback(){
            		window.location="/Auction/index.jsp";	
            	}
            	$(function(){
        			// 文件上传(文件域)的改变事件
        			$(':file').change(function(event) {
        				//  HTML5 js 对象的获取
           				var files = event.target.files, file;  
        				if(files && files.length > 0){
        					// 获取目前上传的文件
             		 		file = files[0];
             		 		// 文件的限定类型什么的道理是一样的
             		 		if(file.size > 1024 * 1024 * 2) {
        	       			 	alert('图片大小不能超过 2MB!');
        	        			return false;
             				}
              				// file对象生成可用的图片
              				var URL = window.URL || window.webkitURL;
              				// 通过 file 生成目标 url
              				var imgURL = URL.createObjectURL(file);
              				// 用这个 URL 产生一个 <img> 将其显示出来
              				$("img").attr('src', imgURL);
        				}
        			});
        		});

            </script>
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
