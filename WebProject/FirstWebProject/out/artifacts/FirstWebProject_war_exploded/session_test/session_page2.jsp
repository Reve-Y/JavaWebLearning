<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: xiong
  Date: 2018/5/21
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>session and application的使用</title>
</head>
<body>
session ID: <%=session.getId()%><br>
从此session中获取用户名：<%=session.getAttribute("username")%><br>
此session包含的属性：<%
                        application.setAttribute("username",session.getAttribute("username"));
                       Enumeration <String> atts = session.getAttributeNames();
                       while(atts.hasMoreElements()){
                           out.println(atts.nextElement()+"&nbsp;&nbsp;");
                       }
                    %><br>
此application包含的属性：<%
                            Enumeration attributes = application.getAttributeNames();
                            while(attributes.hasMoreElements()){
                                out.println(attributes.nextElement()+"&nbsp;&nbsp");
                            }
                        %><br>
application用户名：<%=application.getAttribute("username")%><br>
application flag value: <%=application.getAttribute("flag")%><br>
jsp引擎版本号：<%=application.getServerInfo()%><br>
</body>
</html>
