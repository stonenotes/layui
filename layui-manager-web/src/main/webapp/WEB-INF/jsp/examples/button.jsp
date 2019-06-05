<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>按钮 - layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <style>
        body {
            padding: 10px;
        }
    </style>
</head>
<body>


<span>按钮色系：</span>

<a href="" class="layui-btn layui-btn-primary">原始按钮</a>
<a href="" class="layui-btn">默认按钮</a>
<button class="layui-btn layui-btn-normal">百搭按钮</button>
<button class="layui-btn layui-btn-warm">暖色按钮</button>
<button class="layui-btn layui-btn-danger">警告按钮</button>
<button class="layui-btn layui-btn-disabled">禁用按钮</button>

<br><br>

<span>按钮图标：</span>

<button class="layui-btn"><i class="layui-icon">&#xe603;</i></button>
<button class="layui-btn"><i class="layui-icon">&#xe602;</i></button>
<button class="layui-btn"><i class="layui-icon">&#xe654;</i></button>
<button class="layui-btn"><i class="layui-icon">&#xe642;</i></button>
<button class="layui-btn"><i class="layui-icon">&#xe640;</i></button>
<button class="layui-btn"><i class="layui-icon">&#xe641;</i></button>


<br><br>

<span>按钮尺寸：</span>


<button class="layui-btn layui-btn-big">大型按钮</button>
<button class="layui-btn">默认按钮</button>
<button class="layui-btn layui-btn-small">小型按钮</button>
<button class="layui-btn layui-btn-mini">迷你按钮</button>
<button class="layui-btn layui-btn-primary layui-btn-big">大型按钮</button>
<button class="layui-btn layui-btn-primary">默认按钮</button>
<button class="layui-btn layui-btn-primary layui-btn-small">小型按钮</button>
<button class="layui-btn layui-btn-primary layui-btn-mini">迷你按钮</button>

<br><br>

<span>按钮圆角：</span>

<button class="layui-btn layui-btn-primary layui-btn-radius">原始按钮</button>
<button class="layui-btn layui-btn-radius">默认按钮</button>
<button class="layui-btn layui-btn-normal layui-btn-radius">百搭按钮</button>
<button class="layui-btn layui-btn-warm layui-btn-radius">暖色按钮</button>
<button class="layui-btn layui-btn-danger layui-btn-radius">警告按钮</button>
<button class="layui-btn layui-btn-disabled layui-btn-radius">禁用按钮</button>

<br><br>

<span>按钮图文：</span>

<button class="layui-btn layui-btn-big layui-btn-primary layui-btn-radius">大型加圆角</button>
<button id="btn_click" class="layui-btn layui-btn-small layui-btn-normal"><i class="layui-icon">&#xe640;</i> 删除</button>
<button class="layui-btn layui-btn-mini layui-btn-disabled"><i class="layui-icon">&#xe641;</i> 禁分享</button>
<button id="btn_switch_status" class="layui-btn layui-btn-mini layui-btn-disabled"><i class="layui-icon"><img width="20px" height="20px" src="http://pic3.16pic.com/00/19/73/16pic_1973735_b.jpg"></i> 禁分享</button>
<br><br>

<span>按钮组：</span>

<div class="layui-btn-group">
    <button class="layui-btn">增加</button>
    <button class="layui-btn ">编辑</button>
    <button class="layui-btn">删除</button>
</div>

<div class="layui-btn-group">
    <button class="layui-btn layui-btn-small"><i class="layui-icon">&#xe654;</i></button>
    <button class="layui-btn layui-btn-small"><i class="layui-icon">&#xe642;</i></button>
    <button class="layui-btn layui-btn-small"><i class="layui-icon">&#xe640;</i></button>
    <button class="layui-btn layui-btn-small"><i class="layui-icon">&#xe602;</i></button>
</div>

<div class="layui-btn-group">
    <button class="layui-btn layui-btn-primary layui-btn-small"><i class="layui-icon">&#xe654;</i></button>
    <button class="layui-btn layui-btn-primary layui-btn-small"><i class="layui-icon">&#xe642;</i></button>
    <button class="layui-btn layui-btn-primary layui-btn-small"><i class="layui-icon">&#xe640;</i></button>
    <button class="layui-btn layui-btn-primary layui-btn-small"><i class="layui-icon">&#xe602;</i></button>
</div>

<br><br><br>


<script>
    layui.use(['element', 'layer', 'jquery'], function () {
        var element = layui.element;
        var layer = layui.layer;
        var $ = layui.$;
        $('#btn_click').on('click', function () {
            var classContent = $('#btn_switch_status').attr('class');
            let a = "layui-btn layui-btn-mini layui-btn-disabled";
            let b = "layui-btn layui-btn-mini";
            if (classContent == a) {
                $('#btn_switch_status').removeClass(a).addClass(b);
            }  else {
                $('#btn_switch_status').removeClass(b).addClass(a);
            }

            layer.msg(classContent);
        });
    });
</script>
</body>
</html>
