<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>非模块化方式使用layui</title>
    <link rel="stylesheet" href="${request.contextPath}/layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="common/header.jsp"/>
    <jsp:include page="common/nav.jsp"/>
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;height:100%">
            <iframe id="option" class="myiframe" name="option" src="http://www.baidu.com" style="overflow: visible;" scrolling="yes"
                    frameborder="no" width="100%" height="100%"></iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.demo.com - 底部固定区域
    </div>
</div>

<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script>
    //一般直接写在一个js文件中
    layui.use(['layer', 'form', 'element'], function () {
        var layer = layui.layer
            , form = layui.form
            , element = layui.element;

        // layer.msg('Hello World');
    });
</script>
</body>
</html>