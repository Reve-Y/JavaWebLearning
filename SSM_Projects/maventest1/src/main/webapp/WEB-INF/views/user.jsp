<%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/8/29
  Time: 23:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <td>id</td>
        <td>name</td>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
