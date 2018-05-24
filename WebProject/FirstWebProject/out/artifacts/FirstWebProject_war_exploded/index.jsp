<%@ page import="static java.lang.System.out" %><%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/4/19
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="beans.Users" %>
<html>
  <head>
    <title>  FUCK YOU </title>
    <style type="text/css">
      body{
        color:springgreen;
      }
    </style>
  </head>
  <body>
  <h2>Javabeans 使用</h2><br><hr>
  <div>
    <%
      Users user1 = new Users();
      user1.setUsername("xiaoming");
      user1.setPassword("123456");
    %>
    user1 用户名：<%=user1.getUsername()%><br>
    user1 密码：<%=user1.getPassword()%><br>
  </div>
  </body>
</html>
