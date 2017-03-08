<%--
  Created by IntelliJ IDEA.
  User: Andrew
  Date: 2017/3/7
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        regist_config
    </title>
</head>
<body bgcolor="#ffffff">





<ul id="result" class="a1" style="visibility: hidden;">${result.resultCode}</ul>
<ul id="msg" class="a1" style="visibility: hidden;">${result.errorMSG}</ul>

</body>
<script language="javascript">

    var  result = document.getElementById("result");
    var code=result.innerHTML;
    if(code=="1"){
        alert("操作成功");
        location.href = "/wuliu/jsp/index/index.jsp"
    }else {
        alert("操作失败,"+${result.errorMSG});
        history.go(-2);
    }

</script>
</html>
