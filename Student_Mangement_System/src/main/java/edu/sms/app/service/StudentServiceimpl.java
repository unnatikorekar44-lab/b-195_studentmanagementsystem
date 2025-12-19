package edu.sms.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.sms.app.model.Student;
import edu.sms.app.repository.StudentRepository;

@Service
public class StudentServiceimpl implements StudentService{

	@Autowired
	StudentRepository sr;

	
    @Override
    public void saveStudent(Student student) {
        sr.save(student);
    }

    @Override
    public List<Student> getAllStudents() {
        return sr.findAll();
    }

    @Override
    public Student getStudentById(int id) {
        return sr.findById(id).get();
    }

    @Override
    public void deleteStudent(int id) {
        sr.deleteById(id);
    }

	
}
