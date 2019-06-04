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
  <legend>常规使用</legend>
</fieldset>

<div style="margin-left: 30px;">
  <div id="test1"></div>
  <div id="test2" style="margin-left: 30px;"></div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>表单赋值</legend>
</fieldset>

<div style="margin-left: 30px;">
  <form class="layui-form" action="">
    <div class="layui-form-item">
      <div class="layui-input-inline" style="width: 120px;">
        <input type="text" value="" placeholder="请选择颜色" class="layui-input" id="test-form-input">
      </div>
      <div class="layui-inline" style="left: -11px;">
        <div id="test-form"></div>
      </div>
    </div>
  </form>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>RGB / RGBA 色值</legend>
</fieldset>
<div style="margin-left: 30px;">
  <div id="test3"></div>
  <div id="test4" style="margin-left: 30px;"></div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>透明度选择</legend>
</fieldset>

<div style="margin-left: 30px;">
  <div id="test5"></div>
  <div id="test6" style="margin-left: 30px;"></div>
  <div id="test7" style="margin-left: 30px;"></div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>预定义颜色项</legend>
</fieldset>

<div style="margin-left: 30px;">
  <div id="test8"></div>
  <div id="test9" style="margin-left: 30px;"></div>
</div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>全功能和回调的使用</legend>
</fieldset>
<div style="margin-left: 30px;">
  <input type="hidden" name="color" value="" id="test-all-input">
  <div id="test-all"></div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>颜色框尺寸</legend>
</fieldset>

<div style="margin-left: 30px;">
  <div id="test10"></div>
  <div id="test11" style="margin-left: 30px;"></div>
  <div id="test12" style="margin-left: 30px;"></div>
</div>


<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('colorpicker', function(){
        var $ = layui.$
            ,colorpicker = layui.colorpicker;
        //常规使用
        colorpicker.render({
            elem: '#test1' //绑定元素
            ,change: function(color){ //颜色改变的回调
                layer.tips('选择了：'+ color, this.elem, {
                    tips: 1
                });
            }
        });

        //初始色值
        colorpicker.render({
            elem: '#test2'
            ,color: '#2ec770' //设置默认色
            ,done: function(color){
                layer.tips('选择了：'+ color, this.elem);
            }
        });

        //表单赋值
        colorpicker.render({
            elem: '#test-form'
            ,color: '#1c97f5'
            ,done: function(color){
                $('#test-form-input').val(color);
            }
        });

        //RGB 、RGBA
        colorpicker.render({
            elem: '#test3'
            ,color: 'rgb(68,66,66)'
            ,format: 'rgb' //默认为 hex
        });
        colorpicker.render({
            elem: '#test4'
            ,color: 'rgba(68,66,66,0.5)'
            ,format: 'rgb'
            ,alpha: true //开启透明度滑块
        });

        //开启透明度
        colorpicker.render({
            elem: '#test5'
            ,color: '#009688' //hex
            ,alpha: true //开启透明度
            ,format: 'rgb'
        });
        colorpicker.render({
            elem: '#test6'
            ,color: 'rgb(0,150,136,0.6)' //rgba
            ,alpha: true
            ,format: 'rgb'
        });
        colorpicker.render({ //无初始色值时
            elem: '#test7'
            ,alpha: true
            ,format: 'rgb'
        });

        //预定义颜色项
        colorpicker.render({
            elem: '#test8'
            ,color: '#c71585'
            ,predefine: true // 开启预定义颜色
        });
        colorpicker.render({
            elem: '#test9'
            ,color: '#9d8a0e'
            ,predefine: true // 开启预定义颜色
            ,colors: ['#ff8c00','#00ced1','#9d8a0e'] //自定义预定义颜色项
        });

        //开启全功能
        colorpicker.render({
            elem: '#test-all'
            ,color: 'rgba(7, 155, 140, 1)'
            ,format: 'rgb'
            ,predefine: true
            ,alpha: true
            ,done: function(color){
                $('#test-all-input').val(color); //向隐藏域赋值
                layer.tips('给指定隐藏域设置了颜色值：'+ color, this.elem);

                color || this.change(color); //清空时执行 change
            }
            ,change: function(color){
                //给当前页面头部和左侧设置主题色
                $('.header-demo,.layui-side .layui-nav').css('background-color', color);
            }
        });

        //设定颜色框尺寸
        colorpicker.render({
            elem: '#test10'
            ,size: 'lg' //大号下拉框
        });
        colorpicker.render({
            elem: '#test11'
            //,size: 'sm' //默认 sm
        });
        colorpicker.render({
            elem: '#test12'
            ,size: 'xs' //mini下拉框
        });
    });
</script>

</body>
</html>