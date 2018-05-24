<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/23
  Time: 19:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.net.*" language="java" %>
<html>
<head>
    <title>用户信息</title>
</head>
<body>
<h2>此页面用于显示用户信息</h2><br><br><hr>
<%
    request.setCharacterEncoding("UTF-8");

    String username = "";
    String password = "";


    Cookie[] cookies = request.getCookies();
    if (cookies!=null&&cookies.length>0){
        for(Cookie c:cookies){
            if(c.getName().equals("username")) {
                username = URLDecoder.decode(c.getValue(),"UTF-8");
            }
            if(c.getName().equals("password")) {
                password = URLDecoder.decode(c.getValue(),"UTF-8");
            }
        }
    }
%>
用户名：<%=username%><br>
密码：<%=password%>
</body>
</html>
