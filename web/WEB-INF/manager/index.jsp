<%--
  Created by IntelliJ IDEA.
  User: andrew
  Date: 2017/3/6
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="/wuliu/css/style.css">
    <title>Manager_index page</title>
</head>
<body bgcolor="#ffffff">
<%
    String username=(String)session.getAttribute("tsoft");
%>

<jsp:include page="mtop.jsp" flush="true"></jsp:include>

<table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" background="/wuliu/image/bg-8.jpg" >
    <tr>
        <td><div align="center"><img src="/wuliu/image/bg-7.jpg" width="793" height="493"></div></td>
    </tr>
</table>
</body>
</html>
