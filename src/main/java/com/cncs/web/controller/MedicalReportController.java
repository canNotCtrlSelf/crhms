package com.cncs.web.controller;

import com.cncs.domain.MedicalReport;
import com.cncs.domain.UserRegister;
import com.cncs.service.IMedicalReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/medicalReport")
public class MedicalReportController {

    @Autowired
    private IMedicalReportService medicalReportService;

    /**
     * 查找体检报告
     * @param request
     * @param response
     */
    @RequestMapping("/findMedicalReport")
    public void findMedicalReport(HttpServletRequest request,HttpServletResponse response) throws IOException {
        System.out.println("findMedicalReport...");
        //从session中获取userRegister的Id
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) request.getSession().getAttribute("userRegister");
        //根据rgId查找
        List<MedicalReport> medicalReportList = medicalReportService.findMedicalReport(userRegister.getId());
        //存入session中
        System.out.println(medicalReportList);
        session.setAttribute("medicalReportList",medicalReportList);
        //重定向到medicalInfo页面
        response.sendRedirect("/crhms/pages/resident/medical-report.jsp");
    }

    /**
     * 插入一条体检报告
     * @param request
     * @param response
     * @param upload
     * @throws IOException
     */
    @RequestMapping("/insertOne")
    public void insertOne(HttpServletRequest request, HttpServletResponse response, MultipartFile upload, MedicalReport medicalReport) throws IOException {
        System.out.println("insertOne executing...");
        //获取userRegister
        UserRegister userRegister = (UserRegister) request.getSession().getAttribute("userRegister");
        //设置medicalReport的Id
//        medicalReport.setRegister_id(userRegister.getId());
        medicalReport.setRegister_id(1);
        //从上传文件中获取文件名
        String filename = upload.getOriginalFilename();
        System.out.println(filename);
        //取一个名称唯一的文件名
        String replace = UUID.randomUUID().toString().replace("-", "");
        filename = replace + filename;
        //设置medicalReport的picPath
        medicalReport.setPicpath("/img/uploads/"+filename);
        //插入一条数据
        medicalReportService.insertOne(medicalReport);


        //获取文件路径
        String path = request.getSession().getServletContext().getRealPath("/img/uploads");
        //获取文件操作类
        File file = new File(path);
        //判断文件是否存在
        if (!file.exists()) {
            //文件不存在，递归创建路径
            file.mkdirs();
        }
        //从旧文件创建新文件
        upload.transferTo(new File(file, filename));
        //跳转到注册结束
        System.out.println("medicalReport:"+medicalReport);
        response.sendRedirect("/crhms/pages/register/finish.jsp");

    }
}
