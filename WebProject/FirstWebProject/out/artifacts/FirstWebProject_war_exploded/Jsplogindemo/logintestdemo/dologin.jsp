<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/22
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录处理页面</title>
</head>
<body>
<%
    String username = "";
    String password = "";
    request.setCharacterEncoding("utf-8");

    username = request.getParameter("username");
    password = request.getParameter("password");

    if("admin".equals(username) && "admin".equals(password)){
        session.setAttribute("loginuser",username);
        request.getRequestDispatcher("login_success.jsp").forward(request,response);
    }
    else
        response.sendRedirect("login_failed.jsp");
%>
</body>
</html>
