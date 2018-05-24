<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/22
  Time: 23:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<h2>setProperty的使用</h2>
<hr>
<form name="userData" action="dologin.jsp?mypass=rzx110" method="post">
    <table>
        <tr>
            <td>用户名</td>
            <td><input type="text" name="username" ></td>
        </tr>
        <tr>
            <td>密码</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="登录" ></td>
        </tr>
    </table>
</form>
</body>
</html>
