<%--
  Created by IntelliJ IDEA.
  User: Andrew
  Date: 2017/3/7
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login_config</title>
</head>

<jsp:forward page="../index/index.jsp"/>

<script language="javascript">
    alert("登录成功！！！");
    window.location.href="/wuliu/WEB-INF/index.jsp";
</script>

<script language="javascript">
    alert("登录失败！！！");
    history.back();
</script>

<body bgcolor="#ffffff">
</body>
</html>
