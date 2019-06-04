<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>动画过程演示</legend>
</fieldset>

<ul class="site-doc-icon site-doc-anim">
    <li>
        <div class="layui-anim" data-anim="layui-anim-up">从最底部往上滑入</div>
        <div class="code">layui-anim-up</div>
    </li>
    <li>
        <div class="layui-anim" data-anim="layui-anim-upbit">微微往上滑入</div>
        <div class="code">layui-anim-upbit</div>
    </li>
    <li>
        <div class="layui-anim" data-anim="layui-anim-scale">平滑放大</div>
        <div class="code">layui-anim-scale</div>
    </li>
    <li>
        <div class="layui-anim" data-anim="layui-anim-scaleSpring">弹簧式放大</div>
        <div class="code">layui-anim-scaleSpring</div>
    </li>
</ul>
<ul class="site-doc-icon site-doc-anim">
    <li>
        <div class="layui-anim" data-anim="layui-anim-fadein">渐现</div>
        <div class="code">layui-anim-fadein</div>
    </li>
    <li>
        <div class="layui-anim" data-anim="layui-anim-fadeout">渐隐</div>
        <div class="code">layui-anim-fadeout</div>
    </li>
    <li>
        <div class="layui-anim" data-anim="layui-anim-rotate">360度旋转</div>
        <div class="code">layui-anim-rotate</div>
    </li>
    <li>
        <div class="layui-anim" data-anim="layui-anim-rotate layui-anim-loop">循环动画</div>
        <div class="code">追加：layui-anim-loop</div>
    </li>
</ul>


<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
</script>

</body>
</html>
