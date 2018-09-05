<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isErrorPage="true"%>

<!doctype html public "-//w3c//dtd html 4.01 transitional//en">
<html>
<head>
	<title>欢迎您！十分抱歉，服务器出错了 ！</title>
	<meta http-equiv=content-type content="text/html; charset=utf-8">
	<meta http-equiv="refresh" content="10;url=http://localhost:8080/estore">
	<style type=text/css>input {
		font-size: 12px
	}
	td {
		font-size: 12px
	}
	.p2 {
		font-size: 12px
	}
	.p6 {
		font-size: 12px; color: #1b6ad8
	}
	a {
		color: #1b6ad8; text-decoration: none
	}
	a:hover {
		color: red
	}
	</style>

	<meta content="microsoft frontpage 5.0" name=generator>
	<script type="text/javascript">
		var time = 9;
		window.onload = function(){
			window.setInterval("showTime()", 1000);
		}
		function showTime(){
			document.getElementById("s").innerHTML = time;
			time--;
		}
	</script>
	
	</head>
<body oncontextmenu="return false" onselectstart="return false">
	<p align=center>　</p>
	<p align=center>　</p>
	<table cellspacing=0 cellpadding=0 width=540 align=center border=0>
	  <tbody>
	  <tr>
	    <td valign=top height=270>
	      <div align=center><br><img height=211 src="images/error.gif" 
	      width=329><br><br>
	      <table cellspacing=0 cellpadding=0 width="80%" border=0>
	        <tbody>
	        <tr>
	          <td><font class=p2>&nbsp;&nbsp;&nbsp; <font color=#ff0000><img 
	            height=13 src="images/emessage.gif" 
	            width=12>&nbsp;无法访问本页的原因是：</font></font></td></tr>
	        <tr>
	          <td height=8></td>
	        <tr>
	          <td>
	            <p>
	            	<font color=#000000><br>　　服务器出现异常 ，异常信息...<span id="s" style="color: orange;font-size: 28px;">10</span>秒后跳转到首页</font>!<br/>
	            	<font color='red' size="5"><%=exception.getMessage() %></font>
	      　</p></td></tr></tbody></table></div></td></tr>
	  <tr>
	    <td height=5></td>
	  <tr>
	    <td align=middle>
	      <center>
	      <table cellspacing=0 cellpadding=0 width=480 border=0>
	        <tbody>
	        <tr>
	          <td width=6><img height=26 src="images/left.gif" 
	width=7></td>
	          <td background=images/bg.gif>
	            <div align=center>
	            <font class=p6>
	            	<a href="${pageContext.request.contextPath }/index.jsp">返回首页</a>　 　|　　 
	            	<a  href="${pageContext.request.contextPath }/login.jsp">返回登录页</a> 
	            </font>
	            </div></td>
	          <td width=7><img src="images/right.gif"></td></tr></tbody></table></center></td></tr></tbody></table>
	<p align=center>　</p>
	<p align=center>　</p>
</body>
</html>