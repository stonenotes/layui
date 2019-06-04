<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul id="navigation" class="layui-nav layui-nav-tree" lay-filter="test">
        </ul>
    </div>
</div>
<script src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<script>
    layui.use(['element', 'layer', 'jquery'], function () {
        var element = layui.element;
        // var layer = layui.layer;
        var $ = layui.$;


        $.ajax({
            url: "nav_left.do",
            type: "GET",
            dataType: "JSON",
            contentType: "application/json",
            // data:{},
            success: function (data) {
                let count = 0;
                $.each(data, function (index, item) {
                    // console.log(index + ", " + item.title + ", " + item.content);
                    var html = "";
                    if (count == 0) {
                        html += "<li class=\"layui-nav-item layui-nav-itemed\">";
                    } else {
                        html += "<li class=\"layui-nav-item\">";
                    }
                    html += "<a class=\"\" href=\"javascript:;\">" + item.title + " </a>";
                    html += "<dl class=\"layui-nav-child\">";
                    $.each(item.content, function (contentIndex, contentItem) {
                        // console.log(contentIndex + ", " + contentItem.name + ", " + contentItem.url);
                        html += " <dd><a class='nav_tabitem' href=\"javascript:;\" target=\"" + contentItem.url + "\">" + contentItem.name + "</a></dd>";
                    });
                    html += "</dl>";
                    html += "</li>";
                    // console.log(html);
                    $("#navigation").append(html);
                    count ++;
                });
                tabItemClick();
            },
            error: function (data) {
                layer.msg("服务器异常");
            }
        });

        function tabItemClick() {
            $('a.nav_tabitem').each(function () {
                $(this).on('click', function () {
                    let iframe = $(".myiframe");
                    let content = $(this).attr('target');
                    iframe.attr("src", content);
                    // iframe.location.reload();
                });
            });
        }

    });


</script>
