<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>zyyz.pro</title>
    <link rel="icon shortcut bookmark" type="image/png" href="${ctx}/favicon.ico">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${ctx}/static/plugins/layui/css/layui.css">
    <style>
        body{
            background-color: #f0f3ef;
        }
        .page-btn{
            width: 100%;
            margin-top: 20px;
            border-radius: 7px;

        }
        .page-btn:hover{
            color: darkred;
            border-color: darkred;
        }
        .small-name{
            width: 110px;
            text-overflow: ellipsis; //超出部分用....代替
            overflow: hidden;
        }
        .small-url{
            width: 200px;
            text-overflow: ellipsis; //超出部分用....代替
            overflow: hidden;
        }
        #mainInner h3{
            color: #999999;
        }
        fieldset{
            border: 0px;

        }
        legend{
            color: #999999;
        }
    </style>
</head>
<body>

<div class="layui-container">
    <div class="layui-row" style="margin: 40px auto;">
        <div class="layui-col-xs12 layui-col-md12 ">
            <div class="layui-form">
                <form class="layui-form" action="https://www.baidu.com/s" target="_blank">
                    <div class="layui-input-block" style="margin-left: 0">
                        <input type="text" name="wd" autocomplete="off"
                               style="height: 50px;font-size: large;border-bottom-color: #999999;border-radius: 7px"
                               class="layui-input"  autofocus="autofocus">
                        <button type="submit" class="layui-btn" style="visibility: hidden"><span class="layui-icon-search"></span></button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <fieldset>
        <legend>A常用</legend>
        <div class="layui-row">
            <c:forEach items="${pages}" var="obj">
                <c:set var="num" value="0" ></c:set>
                <c:if test="${obj.pageClass eq 'A'}">
                    <div class="layui-col-xs6 layui-col-md2">
                        <a href="${obj.pageUrl}" style="display: block" class="layui-btn layui-btn-primary page-btn" target="_blank">${obj.pageName}</a>
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </fieldset>

    <fieldset >
        <legend>B文档资料</legend>
        <div class="layui-row">
            <c:forEach items="${pages}" var="obj">
                <c:set var="num" value="0" ></c:set>
                <c:if test="${obj.pageClass eq 'B'}">
                    <div class="layui-col-xs6 layui-col-md2">
                        <a href="${obj.pageUrl}" style="margin-left: 0px" class="layui-btn layui-btn-primary page-btn" target="_blank">${obj.pageName}</a>
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </fieldset>

    <fieldset >
        <legend>C编程开发</legend>
        <div class="layui-row">
            <c:forEach items="${pages}" var="obj">
                <c:set var="num" value="0" ></c:set>
                <c:if test="${obj.pageClass eq 'C'}">
                    <div class="layui-col-xs6 layui-col-md2">
                        <a href="${obj.pageUrl}" style="margin-left: 0px" class="layui-btn layui-btn-primary page-btn" target="_blank">${obj.pageName}</a>
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </fieldset>

    <fieldset >
        <legend>D网站素材</legend>
        <div class="layui-row">
            <c:forEach items="${pages}" var="obj">
                <c:set var="num" value="0" ></c:set>
                <c:if test="${obj.pageClass eq 'D'}">
                    <div class="layui-col-xs6 layui-col-md2">
                        <a href="${obj.pageUrl}" style="margin-left: 0px" class="layui-btn layui-btn-primary page-btn" target="_blank">${obj.pageName}</a>
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </fieldset>

    <fieldset >
        <legend>E链接收藏</legend>
        <div class="layui-row">
            <c:forEach items="${pages}" var="obj">
                <c:set var="num" value="0" ></c:set>
                <c:if test="${obj.pageClass eq 'E'}">
                    <div class="layui-col-xs6 layui-col-md2">
                        <a href="${obj.pageUrl}" style="margin-left: 0px" class="layui-btn layui-btn-primary page-btn" target="_blank">${obj.pageName}</a>
                    </div>
                </c:if>
            </c:forEach>
        </div>
    </fieldset>

    <div class="layui-row">
        <div style="margin-top: 30px">
            <button id="oper" style="float: right;margin-bottom: 30px" class="layui-btn layui-btn-sm layui-btn-primary">
                <i class="layui-icon">&#xe642;</i>
            </button>
            <button id="page-add" style="float: right;margin-bottom: 30px;margin-right: 20px" class="layui-btn layui-btn-sm layui-btn-primary ">
                <i class="layui-icon">&#xe654;</i>
            </button>

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

        $('#searchInner').focus();

        $('#page-add').on('click', function(){
            layer.open({
                type: 1,
                area: ['600px', '360px'],
                shadeClose: true, //点击遮罩关闭
                content: '\<\div style="padding:20px;">' +
                    '<form action="${ctx}/page/add" class="layui-form">\n' +
                    '            <input type="text" class="layui-input" name="pageName" placeholder="网页名称"><br>\n' +
                    '            <input type="text" class="layui-input" name="pageUrl" placeholder="URL"><br>\n' +
                    '            <input type="text" class="layui-input" name="pageClass" placeholder="pageClass"><br>\n' +
                    '            <input type="password" class="layui-input" name="pageKey" placeholder="key"><br>\n' +
                    '            <button class="layui-btn" style="float: right" lay-submit lay-filter="formDemo">添加</button>\n' +
                    '            <button type="reset" class="layui-btn layui-btn-primary">重置</button>' +
                    '</form>' +
                    '</div>'
            });
        });

        $('#oper').on('click', function(){
            layer.open({
                type: 1,
                area: ['600px', '360px'],
                shadeClose: true, //点击遮罩关闭
                content: '<div style="padding:20px;">' +
                    '<table class="layui-table" style="width:560px" lay-filter = "edit">\n' +
                    '            <thead>\n' +
                    '                <tr>\n' +
                    '                    <th>id</th>\n' +
                    '                    <th>Name</th>\n' +
                    '                    <th>Class</th>\n' +
                    '                    <th>Operation</th>\n' +
                    '                </tr>\n' +
                    '            </thead>\n' +
                    '            <tbody>\n' +
                    '                    <c:forEach items="${pages}" var="obj" >\n' +
                    '                    <tr>\n' +
                    '                        <td>${obj.id}</td>\n' +
                    '                        <td class="small-name">${obj.pageName}</td>\n' +
                    '                        <td class="small-url">${obj.pageClass}</td>\n' +
                    '                        <td>\n' +
                    '                            <a href="#" class="layui-btn layui-btn-xs " onclick="editpage(${obj.id})">编辑</a>\n' +
                    '                            <a href="#" class="layui-btn layui-btn-xs layui-btn-danger" onclick="del(${obj.id})">删除</a>\n' +
                    '                        </td>\n' +
                    '                    </tr>\n' +
                    '                    </c:forEach>\n' +
                    '            </tbody>\n' +
                    '        </table>' +
                    '' +
                    '\<\/div>'
            });
        });

        window.editpage = function(data) {
            var id = data;
            $.ajax({
                url:'${ctx}/page/get/'+id,
                type:'get',
                success:function (data) {
                    layer.open({
                        type: 1,
                        area: ['600px', '360px'],
                        shadeClose: true, //点击遮罩关闭
                        content: '\<\div style="padding:20px;">' +
                            '<form action="${ctx}/page/update" class="layui-form">\n' +
                            '<input type="hidden" class="layui-input" name="id" value="'+id+'">' +
                            '            <input type="text" class="layui-input" name="pageName" value="'+data.pageName+'"><br>\n' +
                            '            <input type="text" class="layui-input" name="pageUrl" value="'+data.pageUrl+'" ><br>\n' +
                            '            <input type="text" class="layui-input" name="pageClass" value="'+data.pageClass+'" ><br>\n' +
                            '            <input type="password" class="layui-input" name="pageKey" placeholder="key"><br>\n' +
                            '            <button class="layui-btn" style="float: right" lay-submit lay-filter="formDemo">修改</button>\n' +
                            '<button type="reset" class="layui-btn layui-btn-primary">重置</button>' +
                            '        </form>' +
                            '\<\/div>'
                    });
                }
            })
        };

        window.del = function(data){
            var id = data;
            layer.open({
                type: 1,
                area: ['600px', '360px'],
                shadeClose: true, //点击遮罩关闭
                content: '\<\div style="padding:20px;">' +
                    '<form action="${ctx}/page/delete" method="post" class="layui-form">\n' +
                    '<input type="hidden" class="layui-input" name="id" value="'+id+'">' +
                    '            <input type="password" class="layui-input" name="pageKey" placeholder="key"><br>\n' +
                    '            <button class="layui-btn" style="float: right" lay-submit lay-filter="formDemo">删除</button>\n' +
                    '        </form>' +
                    '</div>'
            });
        };

    });

</script>
</body>
</html>
