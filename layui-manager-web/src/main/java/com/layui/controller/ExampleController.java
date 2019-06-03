package com.layui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ExampleController {

    @RequestMapping("button")
    public ModelAndView button(ModelAndView modelAndView) {
        modelAndView.setViewName("examples/button");
        return modelAndView;
    }

}
