<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/23
  Time: 19:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" import="java.net.*" language="java" %>
<html>
<head>
    <title>登录处理</title>
</head>
<body>
<h3>你已登录</h3><br>
<hr>
    <%
        // 首先判断用户是否选择保存登录信息
        String[] isUseCookies = request.getParameterValues("isUseCookie");

        request.setCharacterEncoding("UTF-8");

        if(isUseCookies!=null && isUseCookies.length>0){
            //  这种情况下用户选择保留登录信息

            String username = URLEncoder.encode(request.getParameter("username"),"UTF-8");
            String password = URLEncoder.encode(request.getParameter("password"),"UTF-8"); //   首先将用户信息从request对象中提出来

            Cookie usernameCookie = new Cookie("username",username);
            Cookie passwordCookie = new Cookie("password",password);   //   创建两个Cookie对象

            usernameCookie.setMaxAge(864000);
            passwordCookie.setMaxAge(864000);     //   设置Cookie有效时间为10天

            response.addCookie(usernameCookie);
            response.addCookie(passwordCookie);    //   写入Cookie对象
        }
        else{
            //  将以前可能保存过的有关Cookie失效

            Cookie[] cookies = request.getCookies();
            if (cookies!=null&&cookies.length>0){
                for(Cookie c:cookies){
                    if(c.getName().equals("username")||c.getName().equals("password")) {   //   如果有
                        c.setMaxAge(0);
                        response.addCookie(c);
                    }
                }
            }
        }
    %>
<a href="users.jsp">点此跳转到用户信息页面</a>
</body>
</html>
