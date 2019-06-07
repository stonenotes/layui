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
    <legend>基本演示</legend>
</fieldset>

<div id="test12" class="demo-tree-more"></div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>常规用法</legend>
</fieldset>

<div id="test1" class="demo-tree demo-tree-box"></div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>无连接线风格</legend>
</fieldset>
<div id="test13" class="demo-tree-more"></div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>仅节点左侧图标控制收缩</legend>
</fieldset>

<div id="test2" class="demo-tree"></div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>默认展开节点</legend>
</fieldset>

<div id="test3" class="demo-tree"></div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>手风琴模式</legend>
</fieldset>

<div id="test4" class="demo-tree"></div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>点击节点新窗口跳转</legend>
</fieldset>

<div id="test5" class="demo-tree"></div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>开启复选框</legend>
</fieldset>

<div id="test7" class="demo-tree"></div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>默认选中节点</legend>
</fieldset>

<div id="test8" class="demo-tree"></div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
    <legend>操作节点</legend>
</fieldset>

<div id="test9" class="demo-tree demo-tree-box" style="width: 200px; height: 300px; overflow: scroll;"></div>

<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use('tree', function () {
        var tree = layui.tree
            , layer = layui.layer

            //模拟数据
            , data = [{
                label: '一级1'
                , id: 1
                , children: [{
                    label: '二级1-1 可允许跳转'
                    , id: 3
                    , href: 'https://www.layui.com/'
                    , children: [{
                        label: '三级1-1-3'
                        , id: 23
                        , children: [{
                            label: '四级1-1-3-1'
                            , id: 24
                            , children: [{
                                label: '五级1-1-3-1-1'
                                , id: 30
                            }, {
                                label: '五级1-1-3-1-2'
                                , id: 31
                            }]
                        }]
                    }, {
                        label: '三级1-1-1'
                        , id: 7
                        , children: [{
                            label: '四级1-1-1-1 可允许跳转'
                            , id: 15
                            , href: 'https://www.layui.com/doc/'
                        }]
                    }, {
                        label: '三级1-1-2'
                        , id: 8
                        , children: [{
                            label: '四级1-1-2-1'
                            , id: 32
                        }]
                    }]
                }, {
                    label: '二级1-2'
                    , id: 4
                    , children: [{
                        label: '三级1-2-1'
                        , id: 9
                        , disabled: true
                    }, {
                        label: '三级1-2-2'
                        , id: 10
                    }]
                }, {
                    label: '二级1-3'
                    , id: 20
                    , children: [{
                        label: '三级1-3-1'
                        , id: 21
                    }, {
                        label: '三级1-3-2'
                        , id: 22
                    }]
                }]
            }, {
                label: '一级2'
                , id: 2
                , children: [{
                    label: '二级2-1'
                    , id: 5
                    , children: [{
                        label: '三级2-1-1'
                        , id: 11
                    }, {
                        label: '三级2-1-2'
                        , id: 12
                    }]
                }, {
                    label: '二级2-2'
                    , id: 6
                    , children: [{
                        label: '三级2-2-1'
                        , id: 13
                    }, {
                        label: '三级2-2-2'
                        , id: 14
                        , disabled: true
                    }]
                }]
            }, {
                label: '一级3'
                , id: 16
                , children: [{
                    label: '二级3-1'
                    , id: 17
                    , fixed: true
                    , children: [{
                        label: '三级3-1-1'
                        , id: 18
                    }, {
                        label: '三级3-1-2'
                        , id: 19
                    }]
                }, {
                    label: '二级3-2'
                    , id: 27
                    , children: [{
                        label: '三级3-2-1'
                        , id: 28
                    }, {
                        label: '三级3-2-2'
                        , id: 29
                    }]
                }]
            }]

            , data1 = [{
                label: '江西'
                , id: 1
                , children: [{
                    label: '南昌'
                    , id: 1000
                    , children: [{
                        label: '青山湖区'
                        , id: 10001
                    }, {
                        label: '高新区'
                        , id: 10002
                    }]
                }, {
                    label: '九江'
                    , id: 1001
                }, {
                    label: '赣州'
                    , id: 1002
                }]
            }, {
                label: '广西'
                , id: 2
                , children: [{
                    label: '南宁'
                    , id: 2000
                }, {
                    label: '桂林'
                    , id: 2001
                }]
            }, {
                label: '陕西'
                , id: 3
                , children: [{
                    label: '西安'
                    , id: 3000
                }, {
                    label: '延安'
                    , id: 3001
                }]
            }]

            , data2 = [{
                label: '早餐'
                , id: 1
                , children: [{
                    label: '油条'
                    , id: 5
                }, {
                    label: '包子'
                    , id: 6
                }, {
                    label: '豆浆'
                    , id: 7
                }]
            }, {
                label: '午餐'
                , id: 2
                , children: [{
                    label: '藜蒿炒腊肉'
                    , id: 8
                }, {
                    label: '西湖醋鱼'
                    , id: 9
                }, {
                    label: '小白菜'
                    , id: 10
                }, {
                    label: '海带排骨汤'
                    , id: 11
                }]
            }, {
                label: '晚餐'
                , id: 3
                , children: [{
                    label: '红烧肉'
                    , id: 12
                    , fixed: true
                }, {
                    label: '番茄炒蛋'
                    , id: 13
                }]
            }, {
                label: '夜宵'
                , id: 4
                , children: [{
                    label: '小龙虾'
                    , id: 14
                }, {
                    label: '香辣蟹'
                    , id: 15
                    , disabled: true
                }, {
                    label: '烤鱿鱼'
                    , id: 16
                }]
            }];

        //基本演示
        tree.render({
            elem: '#test12'
            , data: data
            , showCheckbox: true  //是否显示复选框
            , key: 'id'  //定义索引名称
            , checked: [1, 11, 12]  //选中节点(依赖于 showCheckbox 以及 key 参数)。
            , spread: [1, 2, 4, 5, 11]  //展开节点(依赖于 key 参数)
            //,accordion: true //是否开启手风琴模式
            , isJump: true //是否允许点击节点时弹出新窗口跳转
            , click: function (obj) {
                layer.msg('状态：' + obj.state + '<br>节点数据：' + JSON.stringify(obj.data)); //获取当前选中的节点数据
            }
        });

        //常规用法
        tree.render({
            elem: '#test1' //默认是点击节点可进行收缩
            , data: data1
        });

        //无连接线风格
        tree.render({
            elem: '#test13'
            , data: data1
            , showLine: false  //是否开启连接线
        });

        //仅节点左侧图标控制收缩
        tree.render({
            elem: '#test2'
            , data: data1
            , onlyIconControl: true  //是否仅允许节点左侧图标控制展开收缩
            , click: function (obj) {
                layer.msg(JSON.stringify(obj.data));
            }
        });

        //默认展开节点
        tree.render({
            elem: '#test3'
            , data: data
            , key: 'id' //默认为 id
            , spread: [2, 4, 5, 16] //依赖于 key 参数
        });

        //手风琴模式
        tree.render({
            elem: '#test4'
            , data: [{
                label: '优秀'
                , children: [{
                    label: '80 ~ 90'
                }, {
                    label: '90 ~ 100'
                }]
            }, {
                label: '良好'
                , children: [{
                    label: '70 ~ 80'
                }, {
                    label: '60 ~ 70'
                }]
            }, {
                label: '要努力奥'
                , children: [{
                    label: '0 ~ 60'
                }]
            }]
            , accordion: true
        });

        //点击节点新窗口跳转
        tree.render({
            elem: '#test5'
            , data: data
            , isJump: true  //link 为参数匹配
        });

        //开启复选框
        tree.render({
            elem: '#test7'
            , data: data2
            , showCheckbox: true
        });

        //默认选中节点
        tree.render({
            elem: '#test8'
            , key: 'id'
            , data: data2
            , showCheckbox: true
            , checked: [2, 14]  //依赖于 showCheckbox 以及 key 参数
        });

        //操作节点
        tree.render({
            elem: '#test9'
            , data: data1
            , edit: ['add', 'update', 'del'] //操作节点的图标
            , click: function (obj) {
                layer.msg(JSON.stringify(obj.data));
            }
        });
    });
</script>

</body>
</html>