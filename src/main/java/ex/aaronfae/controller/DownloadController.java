package ex.aaronfae.controller;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

@Controller
public class DownloadController {

    @RequestMapping("/download")
    public void downloadFile(String fileName, HttpServletRequest request,
                             HttpServletResponse response) {
        if (fileName != null) {
            //获取file绝对路径
            String realPath = request.getServletContext().getRealPath("file/");
            File file = new File(realPath, fileName);
            OutputStream out = null;
            if (file.exists()) {
//                response.setCharacterEncoding("UTF-8");
                //设置下载完毕不打开文件
//                response.setContentType("application/force-download;charset=UTF-8");
                response.setContentType("application/octet-stream;charset=UTF-8");
                //设置文件名
                try {
                    response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
                try {
                    out = response.getOutputStream();
                    out.write(FileUtils.readFileToByteArray(file));
                    out.flush();
                } catch (IOException e) {
                    e.printStackTrace();
                } finally {
                    if (out != null) {
                        try {
                            out.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }
}
