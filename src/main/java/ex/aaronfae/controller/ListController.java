package ex.aaronfae.controller;

import ex.aaronfae.service.ListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListController {

    private final ListService listService;

    @Autowired
    public ListController(ListService listService) {
        this.listService = listService;
    }

    @RequestMapping("/list")
    public String list(Model model) {
        model.addAttribute("HomeworkList", listService.list());
        return "list";
    }
}
