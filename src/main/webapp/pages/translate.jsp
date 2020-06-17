<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon shortcut bookmark" type="image/png" href="${ctx}/favicon.ico">
    <title>谷歌翻译引入</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${ctx}/static/plugins/layui/css/layui.css">
</head>
<body>
<div class="layui-container">
    <div class="layui-row" style="margin: 10px auto;">
        <button id="status1" type="button" class="layui-btn layui-btn-radius layui-btn-warm">英译汉</button>
        <button id="status2" type="button" class="layui-btn layui-btn-radius layui-btn-danger">汉译英</button>

        <button id="tranAction" type="button" class="layui-btn layui-btn-radius layui-btn-normal" style="float: right">翻译</button>

        <input id="tranType" type="button" class="layui-btn layui-btn-primary" style="float: right" value="汉译英">

    </div>
    <div class="layui-row" style="margin: 10px auto;">
        <div class="layui-col-xs12 layui-col-md6 ">
            <div class="layui-input-block" style="margin-left: 0">
                <textarea id="q" type="text" rows="40"
                          style="font-size: large;border-bottom-color: #999999;border-radius: 7px"
                          class="layui-textarea"  autofocus="autofocus"></textarea>
            </div>
        </div>
        <div class="layui-col-xs12 layui-col-md6 ">
            <div class="layui-input-block" style="margin-left: 0">
                <textarea  type="text" id="result" rows="40"
                           style="font-size: large;border-bottom-color: #999999;border-radius: 7px"
                           class="layui-textarea" readonly="readonly" ></textarea>
            </div>
        </div>
    </div>
</div>

<script src="${ctx}/static/plugins/layui/layui.js"></script>
<script>
    //一般直接写在一个js文件中
    layui.use(['layer', 'form','jquery','table'], function(){
        var layer = layui.layer
            ,form = layui.form;
        var $ = layui.jquery;
        var table = layui.table;

        var sl = "en";
        var tl = "zh"

        $("#status1").click(function () {
            $("#tranType").val($(this).text());
            sl = "en";
            tl = "zh";
        });

        $("#status2").click(function () {
            $("#tranType").val($(this).text());
            sl = "zh";
            tl = "en";
        });

        $("#tranAction").click(function () {
            alert(sl + " " + tl);
            $.ajax({
                url:"http://translate.google.cn/translate_a/single?client=gtx&dt=t&sl=" + sl + "&tl=" + tl + "&q=" + $("#q").val(),
                type:'get',
                dataType:"json",
                success:function (data) {
                    alert(data);
                }
            })
        })



    });

</script>
</body>
</html>
