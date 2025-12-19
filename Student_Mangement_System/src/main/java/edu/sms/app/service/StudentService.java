package edu.sms.app.service;

import java.util.List;

import edu.sms.app.model.Student;

public interface StudentService {

	
	public List<Student> getAllStudents();

	public void saveStudent(Student student);

	public Student getStudentById(int id);

	public void deleteStudent(int id);

}
