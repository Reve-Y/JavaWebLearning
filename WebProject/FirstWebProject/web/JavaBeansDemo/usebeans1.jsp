<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/22
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用jsp动作标签useBean来创建实例 使用javaBean</title>
</head>
<body>
<h2>useBean动作标签</h2>
    <jsp:useBean id="MyUsers" class="beans.Users" scope="page"/><br>
    <jsp:setProperty name="MyUsers" property="username" value="kangge" />
    <%--<jsp:setProperty name="MyUsers" property="password" value="888888" />--%>
    用户名：<%=MyUsers.getUsername()%><br>
    密码： <%=MyUsers.getPassword()%><br>
</body>
</html>
