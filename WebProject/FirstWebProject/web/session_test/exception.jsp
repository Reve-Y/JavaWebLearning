<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/22
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>异常状态信息打印</title>
    <style type="text/css">
        body{
            color:mediumpurple;
        }
    </style>
</head>
<body>
    异常消息：
    <%
        out.println(exception.getMessage()+"<br>");
    %>
    异常描述:<% out.println(exception.toString());%><br>
</body>
</html>
