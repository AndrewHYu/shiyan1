<%--
  Created by IntelliJ IDEA.
  User: Andrew
  Date: 2017/3/6
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<table width="202" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td width="202"><img src="../../image/7.jpg" width="202" height="39"></td>
    </tr>
</table>

<table width="202" border="0" cellpadding="0" cellspacing="0" background="../../image/8.jpg" >
    <tr>
        <td>
            <table width="91%"  height="87"  border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="32%" height="30" align="center" valign="bottom"><div align="right">用户名</div></td>
                    <td width="68%" align="center" valign="bottom"><input name="name" type="text" size="16" maxlength="20"></td>
                </tr>
                <tr>
                    <td height="30" align="center"><div align="right">密码</div></td>
                    <td height="20" align="center"><input type="password" name="password" size="16" maxlength="20"></td>
                </tr>
                <tr>
                    <td height="40" colspan="2" align="center" valign="middle">
                        <input type="submit" value="提交" name="login" onClick="return check1()">
                        &nbsp;<input type="reset" value="重置"><br><br>
                        <a href="register.jsp">新注册</a>
                        &nbsp;<a href="found.jsp">找回密码</a></td>
                </tr>
            </table>

            <table width="100" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td><img src="../../image/9.jpg" width="201" height="5"></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<img src="../../image/111.jpg" >
