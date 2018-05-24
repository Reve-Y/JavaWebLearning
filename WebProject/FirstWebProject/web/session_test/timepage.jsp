<%@ page import="java.util.Date,java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/22
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<hr>
<br>
<%
    Date date = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
    String s = sdf.format(date);
    out.println(s);
%>
<br>
