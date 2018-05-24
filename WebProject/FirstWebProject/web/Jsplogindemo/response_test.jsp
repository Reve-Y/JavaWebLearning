<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/20
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setContentType("text/html;charset=utf-8");

    out.println("<h2>内置对象之response </h2><hr>");
//    out.flush();//这样会让out输出的在前面

    PrintWriter outer = response.getWriter();
    outer.println("this is an output stream by response ");
    // response.sendRedirect("hobbylist.jsp");   //  请求重定向：打开此页面会自动跳转到目标页面
    //request.getRequestDispatcher("hobbylist.jsp").forward(request,response); //  请求转发
%>
