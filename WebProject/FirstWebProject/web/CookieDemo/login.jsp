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
    <title>登录界面</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String username = "";
    String password = "";

    Cookie[] cookies = request.getCookies();
    if (cookies!=null&&cookies.length>0){
        for(Cookie c:cookies){
            if(c.getName().equals("username")) {
                username = URLDecoder.decode(c.getValue(),"UTF-8");
            }
            if(c.getName().equals("password")) {
                password = URLDecoder.decode(c.getValue(),"UTF-8");
            }
        }
    }
%>

    <form name="userInfo" action="dologin.jsp" method="post">
        <table>
            <tr>
                <td>用户名</td>
                <td><input type="text" name="username" value="<%=username%>"></td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input type="password" name="password" value="<%=password%>"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="checkbox" name="isUseCookie" checked="checked" >十天内保存登录信息
                </td>
                <%--<td>十天内保存登录信息</td>--%>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="登录"></td>
            </tr>
        </table>
    </form>
</body>
</html>
