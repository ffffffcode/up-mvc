package ex.aaronfae.controller;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {


    @RequestMapping(value = "/index")
    public String index() {
        SecurityUtils.getSubject().getSession().setAttribute("username", SecurityUtils.getSubject().getPrincipal());
        return "index";
    }
}
