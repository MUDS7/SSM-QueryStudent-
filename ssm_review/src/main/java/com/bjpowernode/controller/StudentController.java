package com.bjpowernode.controller;

import com.bjpowernode.domain.Student;
import com.bjpowernode.service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Resource
    private StudentService service;
    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student){
        ModelAndView mv=new ModelAndView();
        String tips="注册成功";
        int count = service.addStudent(student);
        if (count!=1){
            tips="注册失败";
        }
        mv.addObject("tips",tips);
        mv.setViewName("result");
        return mv;
    }
    //查询所有学生
    @RequestMapping("/queryStudent")
    @ResponseBody
    public List<Student> queryStudent(){
        return service.findStudents();
    }
}
