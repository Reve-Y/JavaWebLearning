<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/23
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="beans.Users" %>
<html>
<head>
    <title>Scope作用域范围测试</title>
    <style type="text/css">
        h2,h3{
            color:salmon;
        }
    </style>
</head>
<body>
    <h2>scope作用域范围测试</h2>
    <br>
<hr>
    <jsp:useBean id="MyUsers" class="beans.Users" scope="request"/>
<%--<h3>使用application内置对象获取属性</h3>--%>
    <%--用户名：<%=((Users)application.getAttribute("MyUsers")).getUsername()%><br>--%>
    <%--密码：<%=((Users)application.getAttribute("MyUsers")).getPassword()%><br><hr>--%>
<%--<h3>使用session内置对象获取属性</h3>--%>
    <%--用户名：<%=((Users)session.getAttribute("MyUsers")).getUsername()%><br>--%>
    <%--密码：<%=((Users)session.getAttribute("MyUsers")).getPassword()%><br><hr>--%>
<h3>使用request内置对象获取属性</h3>
    用户名：<%=((Users)request.getAttribute("MyUsers")).getUsername()%><br>
    密码：<%=((Users)request.getAttribute("MyUsers")).getPassword()%><br><hr>
</body>
</html>
