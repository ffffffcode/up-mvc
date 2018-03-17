package ex.aaronfae.controller;

import ex.aaronfae.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListController {

    private final UploadService uploadService;

    @Autowired
    public ListController(UploadService uploadService) {
        this.uploadService = uploadService;
    }

    @RequestMapping("/list")
    public String list(Model model) {
        model.addAttribute("HomeworkList", uploadService.list());
        return "list";
    }
}
