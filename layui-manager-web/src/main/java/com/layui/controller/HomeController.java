package com.layui.controller;

import com.layui.bean.HeaderBean;
import com.layui.service.IHeaderService;
import com.layui.service.INavgationLeftService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    @Autowired
    private IHeaderService headerService;
    @Autowired
    private INavgationLeftService navgationLeftService;

    @RequestMapping("home")
    public ModelAndView hello() {
        ModelAndView modelAndView = new ModelAndView("home");
        HeaderBean headerBean = headerService.getHeaderInfo();
        modelAndView.addObject("headerBean", headerBean);
        return modelAndView;
    }

    @RequestMapping(value = "nav_left", produces = "application/json; charset=utf-8")
    @ResponseBody
    public String getNavigationLeft(){
        return navgationLeftService.getNavigationLeft();
    }

}
