<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Andrew
  Date: 2017/3/6
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="/wuliu/js/jquery-1.8.1.min.js" language="JavaScript" ></script>

<table width="202" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="202"><img src="/wuliu/image/7.jpg" width="202" height="39"></td>
    </tr>
</table>

<table width="202" border="0" cellpadding="0" cellspacing="0" background="/wuliu/image/8.jpg" >
    <tr>
        <td id="loginBar">
            <div id="loginMsg"></div>
            <c:choose>
                <c:when test="${sessionScope.user==null}">
                    <%--<form method="POST"  name="form_u">--%>
                        <table width="91%"  height="87"  border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="32%" height="30" align="center" valign="bottom"><div align="right">用户名</div></td>
                                <td width="68%" align="center" valign="bottom"><input id = "name" name="name" type="text" size="16" maxlength="20"></td>
                            </tr>
                            <tr>
                                <td height="30" align="center"><div align="right">密码</div></td>
                                <td height="20" align="center"><input type="password" id = "password" name="password" size="16" maxlength="20"></td>
                            </tr>
                            <tr>
                                <td height="40" colspan="2" align="center" valign="middle">
                                    <button  id="login" name="login">提交</button>
                                    &nbsp;<button id="reset" >重置</button><br><br>
                                    <a href="/wuliu/user/register">新注册</a>
                                    &nbsp;<a href="/wuliu/jsp/found/found.jsp">找回密码</a></td>
                            </tr>
                        </table>
                    <%--</form>--%>
                </c:when>
                <c:otherwise>
                    <table width="92%" height="18"  border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td  height="18" align="center">欢迎${sessionScope.user.name}回来</td>
                        </tr>
                    </table>
                </c:otherwise>
            </c:choose>

            <table width="100" border="0" cellpadding="0" cellspacing="0" >
                <tr>
                    <td><img src="/wuliu/image/9.jpg" width="201" height="5"></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<img src="/wuliu/image/111.jpg" >
<script language="JavaScript">
    $('#login').click(function () {
        var name=$('#name').val();
        var password=$('#password').val();
        var data={userName:name,
                    password:password}
        $.ajax({
            type : "post",
            url : '/wuliu/user/login',
            data : data,
            success:function (datas) {

                datas=JSON.parse(datas);
                if(datas.resultCode===1){
                    window.location.reload();
                }else {
                    var $div=$('#loginMsg');
                    $div.empty();
                    var $li = $('<li style="color: red">登录失败</li>');
                    $li.appendTo($div)
                }

            },
            error: function () {
                window.alert("网路错误，请稍后再试")
            }
        })
    });
    $('#reset').click(function () {
        $('#name').val("");
        $('#password').val("");
    });
</script>