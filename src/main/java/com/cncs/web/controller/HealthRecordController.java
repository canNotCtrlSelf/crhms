package com.cncs.web.controller;

import com.cncs.domain.HealthRecord;
import com.cncs.domain.UserRegister;
import com.cncs.service.IHealthRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/healthRecord")
public class HealthRecordController {

    @Autowired
    private IHealthRecordService healthRecordService;

    /**
     * 根据register_id更新健康档案
     * @param request
     * @param response
     * @param healthRecord
     */
    @RequestMapping("/update")
    public void update(HttpServletRequest request, HttpServletResponse response, HealthRecord healthRecord) throws IOException {
        System.out.println("update...");
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        healthRecord.setRegister_id(userRegister.getId());
        //更新healthRecord
        healthRecordService.update(healthRecord);
        //重新存入session
        session.setAttribute("healthRecord",healthRecord);
        //重定向到健康档案页面
        response.sendRedirect("/crhms/healthRecord/findHealthRecord.do");
    }

    /**
     * 根据register_id查找healthRecord
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping("/findHealthRecord")
    public void findHealthRecord(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("findHealthRecord...");
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        HealthRecord healthRecord = healthRecordService.findHealthRecord(userRegister.getId());
        //存入session
        session.setAttribute("healthRecord",healthRecord);
        //重定向到健康档案页面
        response.sendRedirect("/crhms/pages/resident/health-record.jsp");
    }


    @RequestMapping("/insertOne")
    public void signupHealthRecord(HttpServletRequest request, HttpServletResponse response, HealthRecord healthRecord) throws IOException {
        System.out.println("insertOne...");
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        int rid = userRegister.getId();
//        int rid = 1;

        healthRecord.setRegister_id(rid);
        healthRecordService.insertOne(healthRecord);
        System.out.println("health==="+healthRecord);
        response.sendRedirect("/crhms/pages/register/resident-medical-report.jsp");

    }
}
