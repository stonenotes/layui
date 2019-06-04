package com.layui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ExampleController {

    @RequestMapping("grid")
    public ModelAndView grid(ModelAndView modelAndView) {
        modelAndView.setViewName("examples/grid");
        return modelAndView;
    }

    @RequestMapping("button")
    public ModelAndView button(ModelAndView modelAndView) {
        modelAndView.setViewName("examples/button");
        return modelAndView;
    }

    @RequestMapping("nav")
    public ModelAndView nav(ModelAndView modelAndView) {
        modelAndView.setViewName("examples/nav");
        return modelAndView;
    }

    @RequestMapping("form")
    public ModelAndView form(){
        ModelAndView modelAndView = new ModelAndView("examples/form");
        return modelAndView;
    }

    @RequestMapping("table")
    public ModelAndView table(){
        ModelAndView modelAndView = new ModelAndView("examples/table");
        return modelAndView;
    }

    @RequestMapping("tab")
    public ModelAndView tab(){
        ModelAndView modelAndView = new ModelAndView("examples/tab");
        return modelAndView;
    }

    @RequestMapping("progress")
    public ModelAndView progress(){
        ModelAndView modelAndView = new ModelAndView("examples/progress");
        return modelAndView;
    }

    @RequestMapping("panel")
    public ModelAndView panel(){
        ModelAndView modelAndView = new ModelAndView("examples/panel");
        return modelAndView;
    }

    @RequestMapping("badge")
    public ModelAndView badge(){
        ModelAndView modelAndView = new ModelAndView("examples/badge");
        return modelAndView;
    }

    @RequestMapping("imeline")
    public ModelAndView imeline(){
        ModelAndView modelAndView = new ModelAndView("examples/imeline");
        return modelAndView;
    }

    @RequestMapping("table-element")
    public ModelAndView tableElement(){
        ModelAndView modelAndView = new ModelAndView("examples/table-element");
        return modelAndView;
    }

    @RequestMapping("anim")
    public ModelAndView anim(){
        ModelAndView modelAndView = new ModelAndView("examples/anim");
        return modelAndView;
    }

    @RequestMapping("auxiliar")
    public ModelAndView auxiliar(){
        ModelAndView modelAndView = new ModelAndView("examples/auxiliar");
        return modelAndView;
    }

    @RequestMapping("layer")
    public ModelAndView layer(){
        ModelAndView modelAndView = new ModelAndView("examples/layer");
        return modelAndView;
    }

    @RequestMapping("laydate")
    public ModelAndView laydate(){
        ModelAndView modelAndView = new ModelAndView("examples/laydate");
        return modelAndView;
    }

    @RequestMapping("layim")
    public ModelAndView layim(){
        ModelAndView modelAndView = new ModelAndView("examples/layim");
        return modelAndView;
    }

    @RequestMapping("laypage")
    public ModelAndView laypage(){
        ModelAndView modelAndView = new ModelAndView("examples/laypage");
        return modelAndView;
    }

    @RequestMapping("upload")
    public ModelAndView upload(){
        ModelAndView modelAndView = new ModelAndView("examples/upload");
        return modelAndView;
    }

    @RequestMapping("transfer")
    public ModelAndView transfer(){
        ModelAndView modelAndView = new ModelAndView("examples/transfer");
        return modelAndView;
    }

    @RequestMapping("tree")
    public ModelAndView tree(){
        ModelAndView modelAndView = new ModelAndView("examples/tree");
        return modelAndView;
    }

    @RequestMapping("colorpicker")
    public ModelAndView colorpicker(){
        ModelAndView modelAndView = new ModelAndView("examples/colorpicker");
        return modelAndView;
    }

    @RequestMapping("slider")
    public ModelAndView slider(){
        ModelAndView modelAndView = new ModelAndView("examples/slider");
        return modelAndView;
    }

    @RequestMapping("rate")
    public ModelAndView rate(){
        ModelAndView modelAndView = new ModelAndView("examples/rate");
        return modelAndView;
    }

    @RequestMapping("carousel")
    public ModelAndView carousel(){
        ModelAndView modelAndView = new ModelAndView("examples/carousel");
        return modelAndView;
    }

    @RequestMapping("flow")
    public ModelAndView flow(){
        ModelAndView modelAndView = new ModelAndView("examples/flow");
        return modelAndView;
    }

    @RequestMapping("util")
    public ModelAndView util(){
        ModelAndView modelAndView = new ModelAndView("examples/util");
        return modelAndView;
    }

}
