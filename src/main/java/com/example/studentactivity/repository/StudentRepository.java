package com.example.studentactivity.repository;

import com.example.studentactivity.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface StudentRepository extends JpaRepository<Student, Long> {
    List<Student> findById(int id);
}