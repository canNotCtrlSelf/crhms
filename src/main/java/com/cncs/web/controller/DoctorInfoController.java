package com.cncs.web.controller;

import com.cncs.domain.DoctorInfo;
import com.cncs.domain.DoctorInfo;
import com.cncs.domain.UserRegister;
import com.cncs.service.IDoctorInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/doctorInfo")
public class DoctorInfoController {

    @Autowired
    private IDoctorInfoService doctorInfoService;

    /**
     * 更新医生信息
     * @param request
     * @param response
     * @param doctorInfo
     * @throws IOException
     */
    @RequestMapping("/update")
    public void updateDoctorInfo(HttpServletRequest request, HttpServletResponse response, DoctorInfo doctorInfo) throws IOException {
        System.out.println("update...");
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        doctorInfo.setRegister_id(userRegister.getId());
        //通过register_id更新
        System.out.println(doctorInfo);
        doctorInfoService.update(doctorInfo);

        //转发到/findDoctorInfo
        response.sendRedirect("/crhms/doctorInfo/findDoctorInfo.do");
    }
    
    
    /**
     * 查询医生信息
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping("/findDoctorInfo")
    public void findDoctorInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("findDoctorInfo....");
        DoctorInfo doctorInfo = null;
        //从session中获取register_id
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        doctorInfo = doctorInfoService.findDoctorInfoByRgId(userRegister.getId());
        System.out.println("doctorInfo:" + doctorInfo);
        session.setAttribute("doctorInfo", doctorInfo);
        response.sendRedirect(request.getContextPath() + "/pages/doctor/doctor-info.jsp");
    }

    /**
     * 插入一条医生信息
     * @param request
     * @param response
     * @param doctorInfo
     * @throws IOException
     */
    @RequestMapping("/insertOne")
    public void insertOne(HttpServletRequest request, HttpServletResponse response, DoctorInfo doctorInfo) throws IOException {
        System.out.println("insertOne....");
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        //获取userRegister的id
        doctorInfo.setRegister_id(userRegister.getId());
        //插入一条数据
        doctorInfoService.insertOne(doctorInfo);
        System.out.println("doctorInfo:" + doctorInfo);
        response.sendRedirect("/crhms/pages/register/finish.jsp");
    }
}
