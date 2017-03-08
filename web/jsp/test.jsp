<%--
  Created by IntelliJ IDEA.
  User: Andrew
  Date: 2017/3/7
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="../js/jquery-1.8.1.min.js" language="JavaScript"></script>
<script language="JavaScript">
    $("#waitWork").click(function(){
        var url = "请求地址";
        var data = {type:1};
        $.ajax({
            type : "get",
            async : false, //同步请求
            url : url,
            data : data,
            timeout:1000,
            success:function(dates){
                //alert(dates);
                $("#mainContent").html(dates);//要刷新的div
                $("#mainContent").empty()

                var $ul = $('<ul></ul>');
                data.forEach(function (item) {
                    var $li = $('<li>item.city</li>');
                    $li.appendTo($ul);
                })
                $ul.appendTo($("#mainContent"))
            },
            error: function() {
                // alert("失败，请稍后再试！");
            }
        });
    });
</script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<button id="waitWork"></button>
<div id="mainContent" class="jj" >
<script>
    $('.jj')
    $('#mainContent')
</script>s
</div>
</body>
</html>
