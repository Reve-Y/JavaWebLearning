<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/20
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hobbylists</title>
    <style type="text/css">
        body{
            color:mediumpurple;
        }
    </style>
</head>
<body>
    <h2>Informations</h2><br>
    <%
        request.setCharacterEncoding("UTF-8");
//        //并不能解决URL传递中文乱码的问题
        request.setAttribute("password","rzx110");
    %>
姓名：<%=request.getParameter("username")%><br>
爱好:    <%
            if(request.getParameterValues("hobbys")!=null) {
                String[] hobbies = request.getParameterValues("hobbys");
                for (String s : hobbies) {
                    out.println("&nbsp;&nbsp;"+s);
                }
            }
        %>
    <br>
密码：<%=request.getAttribute("password")%><br>
请求客户端的IP地址：<%=request.getRemoteAddr()%>     <!-- fake -->
</body>
</html>
