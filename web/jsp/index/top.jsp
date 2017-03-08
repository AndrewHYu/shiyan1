<%--
  Created by IntelliJ IDEA.
  User: Andrew
  Date: 2017/3/6
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<script src="/wuliu/js/jquery-1.8.1.min.js"></script>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
    <tr>
        <td  height="80" align="center" background="/wuliu/image/1.jpg">

            <table height="80" border="0" cellpadding="0" cellspacing="0" background="/wuliu/image/2.jpg">
                <tr>
                    <td width="787"></td>
                </tr>
            </table>

        </td>
    </tr>
</table>
<table width="100%" height="32" border="0" cellpadding="0" cellspacing="0" background="/wuliu/image/3.jpg">
    <tr>
        <td><table width="786"  border="0" align="center" cellpadding="0" cellspacing="0" background="/wuliu/image/4.jpg">
            <tr>
                <th width="189" height="31" align="center">

                    &nbsp; </th>
                <th width="597" height="31" align="center"><a href="index.jsp" class="a1">本站首页</a>&nbsp;|&nbsp;<a href="" class="a1">物流动态</a>&nbsp;|&nbsp;<a href="" class="a1">物流知识</a>&nbsp;|&nbsp;<a href="" class="a1">货物信息</a>&nbsp;|&nbsp;<a href="" class="a1">车辆信息</a>&nbsp;|&nbsp;<a href="" class="a1">企业信息</a>&nbsp;|&nbsp;<a href="" class="a1">辅助工具</a>&nbsp;|&nbsp;<a href="" id="logout" class="a1">退出</a>&nbsp;|&nbsp;<a href="/wuliu/user/manager" class="a1">管理</a></th>
            </tr>
        </table></td>
    </tr>
</table>
<table width="100%" height="115" border="0" cellpadding="0" cellspacing="0" background="/wuliu/image/5.jpg" >
    <tr>
        <td valign="top"><table width="787" height="151" border="0" align="center" cellpadding="0" cellspacing="0" background="/wuliu/image/6.jpg">
            <tr>
                <td><table width="585" align="right">
                    <tr>
                        <td width="577" height="109" valign="top"></td>
                    </tr>
                </table></td>
            </tr>
        </table></td> </tr>
</table>
<script>
    $('#logout').click(function(){
        $.get("/wuliu/user/logout",null,function () {
            window.location.reload()
        })
    })
</script>