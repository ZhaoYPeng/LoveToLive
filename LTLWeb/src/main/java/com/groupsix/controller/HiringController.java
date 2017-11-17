package com.groupsix.controller;

import com.groupsix.pojo.Resume;
import com.groupsix.service.AdvertiseService;
import com.groupsix.pojo.Advertise;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class HiringController {
    @Autowired
    private AdvertiseService advertiseService;

    //返回首页
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    //返回人才招聘页面
    @RequestMapping("/job")
    public ModelAndView advertise(){
        List<Advertise> advertises = advertiseService.selectAllMsg();
        return new ModelAndView("job","advertises",advertises);
    }

    //返回提交简历页面
    @RequestMapping("/showjob")
    public ModelAndView showJob (String id){
        Advertise advertise = advertiseService.selectById(id);
        return new ModelAndView("showjob","advertise",advertise);
    }
    //简历提交处理
    @RequestMapping("/resume")
    public String resume(Resume resume){
        advertiseService.addResume(resume);
        return "index";
    }
}
