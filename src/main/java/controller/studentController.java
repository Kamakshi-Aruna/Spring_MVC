package controller;

import model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import repository.studentRepository;

import java.util.List;

@Controller
public class studentController {

    @Autowired
    studentRepository studentRepo;

//    Show insert form
    @GetMapping("/insertform")
    public String showInsertForm() {
        return "insert";
    }

//     Insert Student
    @PostMapping("/insert")
    public ModelAndView insertStudent(@ModelAttribute Student student) {
        ModelAndView modelAndView = new ModelAndView();
        studentRepo.save(student);
        modelAndView.setViewName("redirect:/success");
        return modelAndView;
    }

//     Show Success Page
    @GetMapping("/success")
    public ModelAndView showSuccessPage() {
        ModelAndView modelAndView = new ModelAndView("success");
        modelAndView.addObject("message", "Student Details Added Successfully!!");
        return modelAndView;
    }

//   Getting all the student list
    @GetMapping("/list")
    public String listStudents(Model model) {
        List<Student> students = studentRepo.findAll();
        model.addAttribute("students", students);
        return "list";
    }

//     Show Update Form
    @GetMapping("/update/{id}")
    public String updateStudentForm(@PathVariable int id, Model model) {
        Student student = studentRepo.findById(id).orElse(null);
        if (student == null) {
            return "redirect:/list";
        }
        model.addAttribute("student", student);
        return "update";
    }

// Update the Student
    @PostMapping("/update")
    public String updateStudent(@ModelAttribute Student student, Model model) {
        studentRepo.save(student); // Save the updated student
        model.addAttribute("message", "Updated Successfully!!");
        model.addAttribute("student", student);
        return "update";
    }

//    Delete the Student
    @GetMapping("/delete/{id}")
    @ResponseBody
    public String deleteStudent(@PathVariable int id) {
        studentRepo.deleteById(id);
        return "Data Deleted Successfully!!!";
    }
}
