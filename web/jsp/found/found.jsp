<%--
  Created by IntelliJ IDEA.
  User: Andrew
  Date: 2017/3/7
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>
        找回密码
    </title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <link href="/wuliu/css/style.css" type="text/css" rel="stylesheet">
</head>
<script language="javascript">
    function check(){
        if(form1.name.value==""){
            alert("请输入你的用户名");
            form1.name.focus();
            return false;
        }

        if(form1.email.value==""){
            alert("请输入你的Email址");
            form1.email.focus();
            return false;
        }


        if(form1.question.value==""){
            alert("输入密码提示问题");
            form1.question.focus;
            return false;
        }
        if(form1.answer.value==""){
            alert("请输入回答问题的答案");
            form1.answer.focus();
            return false;
        }
    }
</script>
<body ><center>
    <form method="POST" action="/wuliu/user/password/check" name="form1">

        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
            <tr>
                <td  height="80" align="center" background="/wuliu/image/1.jpg">

                    <table height="80" border="0" cellpadding="0" cellspacing="0" background="/wuliu/image/2.jpg">
                        <tr>
                            <td width="787"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="100%" height="75">
                                <param name="movie" value="/wuliu/top.swf" />
                                <param name="quality" value="high" />
                                <param name="wmode" value="transparent" />
                                <embed src="/wuliu/image/top.swf" width="100%" height="75" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
                            </object></td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table>

        <table width="100%" height="42" border="0" cellpadding="0" cellspacing="0" background="/wuliu/image/20.jpg">
            <tr>
                <td valign="bottom"><table width="100" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td><img src="/wuliu/image/21.jpg" width="791" height="35"></td>
                    </tr>
                </table></td>
            </tr>
        </table>
        <table width="791" border="0" cellpadding="0" cellspacing="0" background="/wuliu/image/22.jpg">
            <tr>
                <td height="63"><div align="center">
                    <p><b>找回密码</b></p>
                </div></td>
            </tr>
        </table>
        <table width="791" height="205" border="0" cellpadding="0" cellspacing="0" background="/wuliu/image/23.jpg">
            <tr>
                <td width="46%" align="left" height="27"><div align="right">用户名：</div></td>
                <td width="54%" align="left"><input type="text" name="name" size="20"></td>
            </tr>

            <tr>
                <td width="46%" height="27">
                    <p align="right">Email：</p>    </td>
                <td width="54%"><input type="text" name="email" size="20"></td>
            </tr>
            <tr>
                <td width="46%" height="27">
                    <p align="right">找回密码问题：</p>    </td>
                <td width="54%"><input type="text" name="question" size="20"></td>
            </tr>
            <tr>
                <td width="46%" height="27"><div align="right">问题答案：   </div></td>
                <td width="54%"><input type="text" name="answer" size="20"></td>
            </tr>
            <tr>
                <td height="16" colspan="2">
                    <div align="center">
                        <input type="submit" value="重置"  name="Submit"onClick="return check()"> 　
                        &nbsp;&nbsp;<a href="/wuliu/jsp/index/index.jsp">返回主页</a>
                    </div></td>
            </tr>
        </table>
        <table width="100" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td><img src="/wuliu/image/24.jpg" width="791" height="203"></td>
            </tr>
        </table></form>
</center>
</body>
</html>
