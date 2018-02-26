<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="CONTENT-TYPE" content="text/html;charset=UTF-8">
    <title>dwr test</title>
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <script type= "text/javascript" src ="dwr/util.js"></script>
    <script type="text/javascript" src= "dwr/engine.js"></script >
    <script type="text/javascript" src= "dwr/interface/dwrPush.js" ></script>

</head>

<script type="text/javascript">
    $(document).ready(
        function () {
            //页面加载时，进行激活反转
            dwr.engine.setActiveReverseAjax(true);

            $("#sign").click(function () {
                console.log($("#msg").val());
                //点击事件时调用java类生成的js类,并将文本框内容发送到后台
                dwrPush.Send($("#msg").val());
            });
        }
    );

    function callback(msg) {
        $("#ul").html($("#ul").html() + "</br>" + msg);
    }

</script>


<body>
<ul id="ul" style="color: red;font-size: 60px;"></ul>

<input type="text" name="msg" id="msg" size="30" style="height: 60px;font-size: 35px"/>
<input type="button" id="sign" value="发布信息"/>
</body>
</html>
