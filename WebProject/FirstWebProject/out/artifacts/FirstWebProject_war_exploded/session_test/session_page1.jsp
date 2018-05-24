<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/21
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.text.*" language="java" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>session and application</title>
    <style type="text/css">
        body{
            color:mediumpurple;
        }
    </style>
</head>
<body>
    <h2>session与application内置对象的使用</h2><hr>
    <%
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日：HH:mm:ss");
        Date date = new Date(session.getCreationTime());
        session.setAttribute("username","xionger");
        session.setAttribute("password","rzx110");
        session.setAttribute("girl","semi");
        application.setAttribute("flag","true");
    %>
session创建时间： <%=sdf.format(date)%><br>
session ID: <%=session.getId()%><br>
从此session中获取用户名：<%=session.getAttribute("username")%><br>
此session有效时间：<%=session.getMaxInactiveInterval()%><br><br><br>
<a href="session_page2.jsp" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;跳转到下一个session page页面</a>
<%
    pageContext.include("timepage.jsp");
%>
</body>
</html>

