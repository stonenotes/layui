package com.layui.controller;

import com.layui.bean.UserInfoBean;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;


/**
 * @Author: javan
 * @Date: 2019/6/7
 */
@Controller
@RequestMapping(value = "/swagger")
@Api(value = "用户信息", description = "用户信息")
public class SwaggerController {

    @RequestMapping(value = "findAllUsers", method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "查询所有用户", notes = "查询用户", produces = MediaType.APPLICATION_JSON_VALUE)
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "信息id",paramType = "header", dataType = "String", required = true),
            @ApiImplicitParam(name = "page", value = "跳转到的页数", paramType = "query", dataType = "Long"),
            @ApiImplicitParam(name = "size", value = "每页显示的记录数", paramType = "query", dataType = "Long")
    })
    public List<UserInfoBean> findAllUsers(HttpServletRequest request, Integer page, Integer size) {
        String id = request.getHeader("id");
        List<UserInfoBean> list = new ArrayList<>();
        for (int i = 0; i < 20; i++) {
            list.add(new UserInfoBean("swagger " + i, "http://baidu.com?id="+id));
        }
        return list;
    }

}
