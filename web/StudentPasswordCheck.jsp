<%--
  Created by IntelliJ IDEA.
  User: DroidEye
  Date: 2017/6/11
  Time: 1:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String URL = request.getParameter("URL");
    String thisStudentPssword = (String) session.getAttribute("ThisStudentPassword");
    if (thisStudentPssword.equals("123456")) {
%>
<script language='javascript'>alert('当前密码为默认密码，不允许其他操作。请更改密码后重试！')</script>
<%
        response.setHeader("refresh", "0;URL=StudentChangePassword.jsp");
    } else {
        response.setHeader("refresh", "0;URL=" + URL);
    }

%>
</body>
</html>
