package com.bjpowernode.service.impl;

import com.bjpowernode.dao.StudentDao;
import com.bjpowernode.domain.Student;
import com.bjpowernode.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class StudentServiceImpl implements StudentService {
    @Resource
    private StudentDao dao;
    @Override
    public int addStudent(Student student) {
        return dao.insertStudent(student);
    }

    @Override
    public List<Student> findStudents() {
        return dao.selectStudents();
    }
}
