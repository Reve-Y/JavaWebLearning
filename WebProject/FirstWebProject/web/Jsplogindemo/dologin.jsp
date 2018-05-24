<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/20
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>dologin</title>
    <style type="text/css">
        div{
            color:purple;
        }
    </style>
</head>
<body>
<h3>登录</h3><hr>
<div>
    <form name="loginForm" action="login.jsp" method="post">
        <%--浏览者输入的数据被传送到的地方--%>
        <table>
            <tr>
                <td>用户名:</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="登录"></td>
                <%--colspan 属性规定单元格可横跨的列数--%>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
