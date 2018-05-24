<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/22
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="beans.*" %>
<html>
<head>
    <title>登录处理页面</title>
</head>
<body>
<jsp:useBean id="loginUser" class="beans.Users" scope="page"/>
<jsp:useBean id="userDao" class="beans.UserDao" scope="page"/>
<jsp:setProperty name="loginUser" property="*"/>
<%

    if (userDao.userLogin(loginUser)){
        session.setAttribute("loginuser",loginUser.getUsername());
        request.getRequestDispatcher("login_success.jsp").forward(request,response);
    }
    else
        response.sendRedirect("login_failed.jsp");
%>
</body>
</html>
