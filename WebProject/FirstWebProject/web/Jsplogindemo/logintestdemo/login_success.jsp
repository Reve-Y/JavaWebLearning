<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/22
  Time: 22:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">
        h2{
            color:grey;
        }
    </style>
    <title>登陆成功</title>
</head>
<body>
<%
    String loginuser = "";
    if(session.getAttribute("loginuser")!=null)
        loginuser = session.getAttribute("loginuser").toString(); //  此处返回的是Object 所以要转换成String
%>
    <h2>用户<%=loginuser%>已登录</h2>
</body>
</html>
