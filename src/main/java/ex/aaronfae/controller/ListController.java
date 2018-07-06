package ex.aaronfae.controller;

import ex.aaronfae.dao.HomeworkDAO;
import ex.aaronfae.service.ListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ListController {

    private final ListService listService;
    @Autowired
    private HomeworkDAO homeworkDAO;

    @Autowired
    public ListController(ListService listService) {
        this.listService = listService;
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("HomeworkList", listService.list());
        return "list";
    }

    @RequestMapping(value = "/listWithPaging", method = RequestMethod.GET)
    public String listWithPaging(Model model, @RequestParam(name = "page", defaultValue = "1", required = false) int page) {
        model.addAttribute("HomeworkList", listService.listWithPaging(page));
        return "listWithPaging";
    }
}
