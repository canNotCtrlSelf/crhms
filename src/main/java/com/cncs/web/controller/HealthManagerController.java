package com.cncs.web.controller;

import com.cncs.domain.HealthManager;
import com.cncs.domain.UserRegister;
import com.cncs.service.IHealthManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/healthManager")
public class HealthManagerController {

    @Autowired
    private IHealthManagerService healthManagerService;

    /**
     * 更新信息
     */
    @RequestMapping("/update")
    public void update(HttpServletRequest request, HttpServletResponse response, HealthManager healthManager) throws IOException {
        System.out.println("update....");
        //更新
        healthManagerService.update(healthManager);
        //转发到查询
        response.sendRedirect("/crhms/healthManager/findHealthManager.do");
    }

    /**
     * 查看健康管理师信息
     */
    @RequestMapping("/findHealthManager")
    public void findHealthManagerInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("findHealthManager....");
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        //获取userRegister的id
//        healthManager.setRegister_id(4);
        //查询信息
        HealthManager healthManager = healthManagerService.findHealthManager(userRegister.getId());
        session.setAttribute("healthManager",healthManager);
        System.out.println("healthManager:" + healthManager);

        response.sendRedirect("/crhms/pages/health_manager/health-manager-info.jsp");
    }

    /**
     * 插入一条健康管理师信息
     * @param request
     * @param response
     * @param healthManager
     * @throws IOException
     */
    @RequestMapping("/insertOne")
    public void insertOne(HttpServletRequest request, HttpServletResponse response, HealthManager healthManager) throws IOException {
        System.out.println("insertOne....");
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        //获取userRegister的id
//        healthManager.setRegister_id(4);
        healthManager.setRegister_id(userRegister.getId());
        //插入一条数据
        healthManagerService.insertOne(healthManager);
        System.out.println("healthManager:" + healthManager);
        response.sendRedirect("/crhms/pages/register/finish.jsp");
    }
}
