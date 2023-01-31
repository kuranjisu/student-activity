package com.example.studentactivity.controller;

import com.example.studentactivity.entity.Student;
import com.example.studentactivity.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController

@RequestMapping(path="/api")
public class StudentController {
    @Autowired
    private StudentService studentService;

    @PostMapping(path = "/student")
    public @ResponseBody String addStudent(@RequestParam String firstName,
                                           @RequestParam String lastName,
                                           @RequestParam String email,
                                           @RequestParam String course) {

        return studentService.addStudent(firstName, lastName, email, course);
    }

    @GetMapping(path = "/students")
    public @ResponseBody Iterable<Student> getAllStudents() {
        return studentService.getAllStudents();
    }

    @GetMapping(path = "/studentid")
    public ResponseEntity<List<Student>> getStudentById(@RequestParam int id) {
        return studentService.getStudentById(id);
    }


}
