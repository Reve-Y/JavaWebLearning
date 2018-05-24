<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/23
  Time: 0:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>已登录界面</title>
</head>
<body>
<jsp:useBean id="MyUsers" class="beans.Users" scope="request"/>
<h3>使用表单自动匹配属性:</h3>
    <jsp:setProperty name="MyUsers" property="*" />
    用户名：<%=MyUsers.getUsername()%><br>
    密码：<%=MyUsers.getPassword()%><br><hr>
<br>
<h3>通过url传参数来给属性赋值</h3>
    <jsp:setProperty name="MyUsers" property="password" param="mypass" />
    用户名：<%=MyUsers.getUsername()%><br>
    密码：<%=MyUsers.getPassword()%><br><hr>
<br>
<h3>通过jsp:getProperty得到属性值</h3>
    用户名：<jsp:getProperty name="MyUsers" property="username"/> <br>
    密码：<jsp:getProperty name="MyUsers" property="password"/> <br>
<hr>
<a href="scopeTest.jsp">点击此处转到scope作用域测试页面</a>
<%--用超链接实际相当于一次请求重定向 request被刷新了 --%>
<%--<%--%>
    <%--request.getRequestDispatcher("scopeTest.jsp").forward(request,response);--%>
<%--%>--%>
</body>
</html>
