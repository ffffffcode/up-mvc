package ex.aaronfae.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {

    private HttpServletRequest request;

    @Autowired
    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String password, @RequestParam(value = "remember", required = false) Boolean remember) {
        System.out.println("username:" + username);
        System.out.println("password:" + password);
        System.out.println("remember:" + remember);
        ModelAndView modelAndView = new ModelAndView("login");
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(username, password, remember != null);
        try {
            subject.login(token);
        } catch (UnknownAccountException e) {
            modelAndView.addObject("msg", "^-^账号不存在哦Up");
        } catch (IncorrectCredentialsException e) {
            modelAndView.addObject("msg", "^-^密码不正确哦Up");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("msg", "已退出");
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        request.setAttribute("msg", "已退出");
        return "redirect:index";
    }

    @RequestMapping("/home")
    public String home() {
        SecurityUtils.getSubject().getSession().setAttribute("username", SecurityUtils.getSubject().getPrincipal());
        return "home";
    }

    @RequestMapping("/my")
    public String my() {
        SecurityUtils.getSubject().getSession().setAttribute("username", SecurityUtils.getSubject().getPrincipal());
        return "my";
    }
}
