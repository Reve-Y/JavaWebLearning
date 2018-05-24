<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/22
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <style type="text/css">
        h2{
            color:purple;
            font-family: Arial;
        }
    </style>
</head>
<body>
<h2>阶段测试：用户登录</h2><br><hr>
<div>
    <form action="dologin.jsp" method="post">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr><td colspan="2"><input type="submit" value="登录" ></td></tr>
        </table>
    </form>
</div>
</body>
</html>
