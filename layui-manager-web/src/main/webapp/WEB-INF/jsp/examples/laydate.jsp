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

<blockquote class="layui-elem-quote">
  layDate 是目前 layui 独立维护的三大组件（即：layer、layim、layDate）之一。在 layui 2.0 的版本中，layDate 完成了一次巨大的逆袭。
  <a class="layui-btn layui-btn-normal" href="http://www.layui.com/laydate/" target="_blank">layDate官网</a>
</blockquote>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>常规用法</legend>
</fieldset>

<div class="layui-form">
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">中文版</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test1" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">国际版</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test1-1" placeholder="yyyy-MM-dd">
      </div>
    </div>
  </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>其它选择器</legend>
</fieldset>

<div class="layui-form">
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">年选择器</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test2" placeholder="yyyy">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">年月选择器</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test3" placeholder="yyyy-MM">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">时间选择器</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test4" placeholder="HH:mm:ss">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">日期时间选择器</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test5" placeholder="yyyy-MM-dd HH:mm:ss">
      </div>
    </div>
  </div>
</div>

<!-- 示例-970 -->
<ins class="adsbygoogle" style="display:inline-block;width:970px;height:90px" data-ad-client="ca-pub-6111334333458862" data-ad-slot="3820120620"></ins>


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>范围选择</legend>
</fieldset>

<div class="layui-form">
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">日期范围</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test6" placeholder=" - ">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">年范围</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test7" placeholder=" - ">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">年月范围</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test8" placeholder=" - ">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">时间范围</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test9" placeholder=" - ">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">日期时间范围</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test10" placeholder=" - ">
      </div>
    </div>
  </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>自定义格式</legend>
</fieldset>

<div class="layui-form">
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">请选择日期</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test11" placeholder="yyyy年MM月dd日">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">请选择日期</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test12" placeholder="dd/MM/yyyy">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">请选择月份</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test13" placeholder="yyyyMMdd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">请选择时间</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test14" placeholder="H点m分">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">请选择范围</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test15" placeholder=" ~ ">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">请选择范围</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test16" placeholder="开始 到 结束">
      </div>
    </div>
  </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>公历节日和自定义重要日子</legend>
</fieldset>

<div class="layui-form">
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">开启公历节日</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test17" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">自定义重要日</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test18" placeholder="yyyy-MM-dd">
      </div>
    </div>
  </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>控制可选的日期与时间</legend>
</fieldset>

<div class="layui-form">
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">限定可选日期</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test-limit1" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">前后若干天可选</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test-limit2" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">限定可选时间</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test-limit3" placeholder="HH:mm:ss">
      </div>
      <div class="layui-form-mid layui-word-aux">
        这里以控制在9:30-17:30为例
      </div>
    </div>
  </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>同时绑定多个</legend>
</fieldset>

<div class="layui-form">
  <div class="layui-form-item">
    <div class="layui-inline">
      <input type="text" class="layui-input test-item" placeholder="yyyy-MM-dd">
    </div>
    <div class="layui-inline">
      <input type="text" class="layui-input test-item" placeholder="yyyy-MM-dd">
    </div>
    <div class="layui-inline">
      <input type="text" class="layui-input test-item" placeholder="yyyy-MM-dd">
    </div>
  </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>其它功能示例</legend>
</fieldset>

<div class="layui-form">
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">初始赋值</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test19" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">选中后的回调</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test20" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">日期切换的回调</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test21" placeholder="yyyy-MM-dd">
      </div>
    </div>

    <div class="layui-inline">
      <label class="layui-form-label">不出现底部栏</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test22" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">只出现确定按钮</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test23" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">自定义事件</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test24" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label" id="test25-1">点我触发</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test25" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label" id="test26-1">双击我触发</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test26" placeholder="yyyy-MM-dd">
      </div>
    </div>

    <div class="layui-inline">
      <label class="layui-form-label">日期只读</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test27" readonly="" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">非input元素</label>
      <div class="layui-input-inline">
        <div id="test28" style="height: 38px; line-height: 38px; cursor: pointer; border-bottom: 1px solid #e2e2e2;"></div>
      </div>
    </div>
  </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>其它主题</legend>
</fieldset>

<div class="layui-form">
  <div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">墨绿主题</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test29" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">自定义颜色主题</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test30" placeholder="yyyy-MM-dd">
      </div>
    </div>
    <div class="layui-inline">
      <label class="layui-form-label">格子主题</label>
      <div class="layui-input-inline">
        <input type="text" class="layui-input" id="test31" placeholder="yyyy-MM-dd">
      </div>
    </div>
  </div>
</div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>直接嵌套显示</legend>
</fieldset>

<div class="site-demo-laydate">
  <div class="layui-inline" id="test-n1"></div>
  <div class="layui-inline" id="test-n2"></div>
  <div class="layui-inline" id="test-n3"></div>
  <div class="layui-inline" id="test-n4"></div>
</div>


<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        //常规用法
        laydate.render({
            elem: '#test1'
        });

        //国际版
        laydate.render({
            elem: '#test1-1'
            ,lang: 'en'
        });

        //年选择器
        laydate.render({
            elem: '#test2'
            ,type: 'year'
        });

        //年月选择器
        laydate.render({
            elem: '#test3'
            ,type: 'month'
        });

        //时间选择器
        laydate.render({
            elem: '#test4'
            ,type: 'time'
        });

        //日期时间选择器
        laydate.render({
            elem: '#test5'
            ,type: 'datetime'
        });

        //日期范围
        laydate.render({
            elem: '#test6'
            ,range: true
        });

        //年范围
        laydate.render({
            elem: '#test7'
            ,type: 'year'
            ,range: true
        });

        //年月范围
        laydate.render({
            elem: '#test8'
            ,type: 'month'
            ,range: true
        });

        //时间范围
        laydate.render({
            elem: '#test9'
            ,type: 'time'
            ,range: true
        });

        //日期时间范围
        laydate.render({
            elem: '#test10'
            ,type: 'datetime'
            ,range: true
        });

        //自定义格式
        laydate.render({
            elem: '#test11'
            ,format: 'yyyy年MM月dd日'
        });
        laydate.render({
            elem: '#test12'
            ,format: 'dd/MM/yyyy'
        });
        laydate.render({
            elem: '#test13'
            ,format: 'yyyyMMdd'
        });
        laydate.render({
            elem: '#test14'
            ,type: 'time'
            ,format: 'H点m分'
        });
        laydate.render({
            elem: '#test15'
            ,type: 'month'
            ,range: '~'
            ,format: 'yyyy-MM'
        });
        laydate.render({
            elem: '#test16'
            ,type: 'datetime'
            ,range: '到'
            ,format: 'yyyy年M月d日H时m分s秒'
        });

        //开启公历节日
        laydate.render({
            elem: '#test17'
            ,calendar: true
        });

        //自定义重要日
        laydate.render({
            elem: '#test18'
            ,mark: {
                '0-10-14': '生日'
                ,'0-12-31': '跨年' //每年的日期
                ,'0-0-10': '工资' //每月某天
                ,'0-0-15': '月中'
                ,'2017-8-15': '' //如果为空字符，则默认显示数字+徽章
                ,'2099-10-14': '呵呵'
            }
            ,done: function(value, date){
                if(date.year === 2017 && date.month === 8 && date.date === 15){ //点击2017年8月15日，弹出提示语
                    layer.msg('这一天是：中国人民抗日战争胜利72周年');
                }
            }
        });

        //限定可选日期
        var ins22 = laydate.render({
            elem: '#test-limit1'
            ,min: '2016-10-14'
            ,max: '2080-10-14'
            ,ready: function(){
                ins22.hint('日期可选值设定在 <br> 2016-10-14 到 2080-10-14');
            }
        });

        //前后若干天可选，这里以7天为例
        laydate.render({
            elem: '#test-limit2'
            ,min: -7
            ,max: 7
        });

        //限定可选时间
        laydate.render({
            elem: '#test-limit3'
            ,type: 'time'
            ,min: '09:30:00'
            ,max: '17:30:00'
            ,btns: ['clear', 'confirm']
        });

        //同时绑定多个
        lay('.test-item').each(function(){
            laydate.render({
                elem: this
                ,trigger: 'click'
            });
        });

        //初始赋值
        laydate.render({
            elem: '#test19'
            ,value: '1989-10-14'
            ,isInitValue: true
        });

        //选中后的回调
        laydate.render({
            elem: '#test20'
            ,done: function(value, date){
                layer.alert('你选择的日期是：' + value + '<br>获得的对象是' + JSON.stringify(date));
            }
        });

        //日期切换的回调
        laydate.render({
            elem: '#test21'
            ,change: function(value, date){
                layer.msg('你选择的日期是：' + value + '<br><br>获得的对象是' + JSON.stringify(date));
            }
        });
        //不出现底部栏
        laydate.render({
            elem: '#test22'
            ,showBottom: false
        });

        //只出现确定按钮
        laydate.render({
            elem: '#test23'
            ,btns: ['confirm']
        });

        //自定义事件
        laydate.render({
            elem: '#test24'
            ,trigger: 'mousedown'
        });

        //点我触发
        laydate.render({
            elem: '#test25'
            ,eventElem: '#test25-1'
            ,trigger: 'click'
        });

        //双击我触发
        lay('#test26-1').on('dblclick', function(){
            laydate.render({
                elem: '#test26'
                ,show: true
                ,closeStop: '#test26-1'
            });
        });

        //日期只读
        laydate.render({
            elem: '#test27'
            ,trigger: 'click'
        });

        //非input元素
        laydate.render({
            elem: '#test28'
        });

        //墨绿主题
        laydate.render({
            elem: '#test29'
            ,theme: 'molv'
        });

        //自定义颜色
        laydate.render({
            elem: '#test30'
            ,theme: '#393D49'
        });

        //格子主题
        laydate.render({
            elem: '#test31'
            ,theme: 'grid'
        });


        //直接嵌套显示
        laydate.render({
            elem: '#test-n1'
            ,position: 'static'
        });
        laydate.render({
            elem: '#test-n2'
            ,position: 'static'
            ,lang: 'en'
        });
        laydate.render({
            elem: '#test-n3'
            ,type: 'month'
            ,position: 'static'
        });
        laydate.render({
            elem: '#test-n4'
            ,type: 'time'
            ,position: 'static'
        });
    });
</script>

</body>
</html>