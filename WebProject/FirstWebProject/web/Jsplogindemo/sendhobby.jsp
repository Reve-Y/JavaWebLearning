<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/20
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request test </title>
    <style type="text/css">
        body{
            color:rebeccapurple;
        }
    </style>
</head>
<body>
<h2>hobby submit and show </h2><hr>
<div>
    <form name="hobbylist" action="hobbylist.jsp" method="post">
        <table>
            <tr>
                <td>姓名：</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>爱好：</td>
                <td>
                    <input type="checkbox" name="hobbys" value="reading">读书
                    <input type="checkbox" name="hobbys" value="singing">唱歌
                    <input type="checkbox" name="hobbys" value="watching movies ">看电影
                    <input type="checkbox" name="hobbys" value="dage">打嗝
                </td>
            </tr>
            <tr><td colspan="2"><input type="submit" value="提交"> </td></tr>
        </table>
    </form>
    <br><br>
    <a href="hobbylist.jsp?username=紫色老太婆">测试url传参数</a>
</div>
</body>
</html>
