<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="layui-header">
    <div class="layui-logo">${headerBean.platfomName}</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
        <c:if test="${headerBean.tabNameList != null}">
            <c:forEach items="${headerBean.tabNameList}" var="tabName">
                <li class="layui-nav-item"><a href="">${tabName}</a></li>
            </c:forEach>
        </c:if>

        <li class="layui-nav-item">
            <c:if test="${fn:length(headerBean.otherList) > 1}">
                <a href="javascript:;">${headerBean.otherList.get(0)}</a>
                <dl class="layui-nav-child">
                    <c:forEach begin="1" end="${headerBean.otherList.size()}" step="1" items="${headerBean.otherList}"
                               var="item">
                        <dd><a href="">${item}</a></dd>
                    </c:forEach>
                </dl>
            </c:if>
        </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
            <c:if test="${headerBean.userInfoBean != null}">
                <a href="javascript:;">
                    <img src="${headerBean.userInfoBean.logo}" class="layui-nav-img">
                        ${headerBean.userInfoBean.userName}
                </a>
            </c:if>

            <dl class="layui-nav-child">
                <c:forEach var="item" items="${headerBean.userSetList}">
                    <dd><a href="">${item}</a></dd>
                </c:forEach>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="">${headerBean.logoutName}</a></li>
    </ul>
</div>