package edu.sms.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import edu.sms.app.model.Student;
import edu.sms.app.service.StudentService;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    StudentService sr;
    
    @RequestMapping("/")
    public String root()
    {
    	return "login";
    }

    @RequestMapping("/login")
    public String loginPage() {
        return "login";
    }
    
    @RequestMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }

    
    @RequestMapping("/addStudent")
    public String addStudent(Model model) {
        model.addAttribute("student", new Student());
        return "add-student";
    }

    
    @RequestMapping("/saveStudent")
    public String saveStudent(@ModelAttribute Student student) {
        sr.saveStudent(student);
        return "redirect:/admin/viewStudents";
    }

    
    @RequestMapping("/viewStudents")
    public String viewStudents(Model model) {
        model.addAttribute("students", sr.getAllStudents());
        return "view-student";
    }

    @RequestMapping("/updateStudent")
    public String updateStudent( @RequestParam int id,Model m) {
        m.addAttribute("student");
        return "update-student";
    }
    
    @RequestMapping ("/deleteStudent/{id}")
    public String deleteStudent(@RequestParam int id) {
        sr.deleteStudent(id);
        return "redirect:/admin/viewStudents";
    }
}