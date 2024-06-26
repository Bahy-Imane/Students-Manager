package controller;

import modeles.Student;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Controller
public class StudentController {
    private final List<Student> students = new ArrayList<>();

    @PostConstruct
    public void init() {
        students.add(new Student(1, "bahy", "imane", "imane@gmail.com"));
        students.add(new Student(2, "jalal", "ilham", "jalal@gmail.com"));
        students.add(new Student(3, "bahy", "rihab", "rihab@gmail.com"));
    }

    @RequestMapping(value = "/")
    public String homePage(BufferedCodeBuilder.Model model) {
        model.addAttribute("students", students);
        return "student-list";
    }

    @GetMapping("/addstudent")
    public String showAddForm() {
        return "add-student";
    }

    @PostMapping("/addstudent")
    public String saveStudent(@ModelAttribute Student student) {
        students.add(student);
        return "redirect:/";
    }

    @GetMapping("/editStudent/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        Student studentToEdit = null;
        for (Student student : students) {
            if (student.getId() == id) {
                studentToEdit = student;
                break;
            }
        }
        if (studentToEdit != null) {
            model.addAttribute("student", studentToEdit);
            return "edit-student";
        } else {
            return "redirect:/";
        }
    }

    @PostMapping("/updateStudent")
    public String updateStudent(@ModelAttribute Student updatedStudent) {
        for (Student student : students) {
            if (student.getId() == updatedStudent.getId()) {
                student.setLastName(updatedStudent.getLastName());
                student.setName(updatedStudent.getName());
                student.setEmail(updatedStudent.getEmail());
                break;
            }
        }
        return "redirect:/";
    }

    @GetMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable("id") int id) {
        Iterator<Student> iterator = students.iterator();
        while (iterator.hasNext()) {
            Student student = iterator.next();
            if (student.getId() == id) {
                iterator.remove();
                break;
            }
        }
        return "redirect:/";
    }

//    @GetMapping("/search")
//    public String searchStudents(@RequestParam("keyword") String keyword, Model model) {
//        List<Student> searchResults = new ArrayList<>();
//        for (Student student : students) {
//            if (student.getLastName().contains(keyword) || student.getName().contains(keyword)) {
//                searchResults.add(student);
//            }
//        }
//        model.addAttribute("students", searchResults);
//        return "student-list";
//    }



    @GetMapping("/search")
    public String searchStudents(@RequestParam("keyword") String keyword, Model model) {
        List<Student> searchResults = new ArrayList<>();
        for (Student student : students) {
            if (student.getLastName().contains(keyword) || student.getName().contains(keyword)) {
                searchResults.add(student);
            }
        }
        model.addAttribute("students", searchResults);

        model.addAttribute("keyword", keyword);
        return "student-list";
    }
        return "student-list";
    }


}
