package ex.aaronfae.controller;

import ex.aaronfae.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
public class UploadController {

    private final UploadService uploadService;

    @Autowired
    public UploadController(UploadService uploadService) {
        this.uploadService = uploadService;
    }

    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public String upload(String uper, MultipartFile homework, RedirectAttributes redirectAttributes, HttpServletRequest request) {
        //getSize()方法获取文件的大小来判断是否有上传文件
        if (homework.getSize() > 0) {
            //获取保存上传文件的file文件夹绝对路径
            String path = request.getSession().getServletContext().getRealPath("file");
            //获取上传文件名
            String fileName = homework.getOriginalFilename();
            File file = new File(path, fileName);
            try {
                homework.transferTo(file);
            } catch (IOException e) {
                e.printStackTrace();
            }
            uploadService.upload(uper, fileName);
            redirectAttributes.addFlashAttribute("msg", "上传成功");
            return "redirect:index";
        }
        redirectAttributes.addFlashAttribute("msg", "请上传文件，bro");
        return "redirect:index";
    }
}
