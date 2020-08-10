package com.cncs.web.controller;

import com.cncs.domain.CommunityAdmin;
import com.cncs.domain.UserRegister;
import com.cncs.service.ICommunityAdminService;
import com.cncs.service.IUserRegiserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private IUserRegiserService userRegiserService;

    @Autowired
    private ICommunityAdminService communityAdminService;

    @RequestMapping("/deleteCommunityAdmin")
    public void deleteCommunityAdmin(HttpServletRequest request, HttpServletResponse response,int id) throws IOException {
        System.out.println("deleteCommunityAdmin...");
       //删除deleteCommunityAdmin
        userRegiserService.deleteCommunityAdmin(id);
        //重定向到成功页面
        response.sendRedirect("/crhms/pages/admin/success.jsp");
    }

    /**
     * 插入一条adminCommunity
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping("/insertCommunityAdmin")
    public void insertOne(HttpServletRequest request, HttpServletResponse response,UserRegister userRegister) throws IOException {
        System.out.println("insertOne...");
        //插入一条communityAdmin
        //1.先向user_register表插入一条
        userRegiserService.insertCommunityAdmin(userRegister);
        //重定向到查询所有
        response.sendRedirect("/crhms/admin/findAllCommunityAdmin.do");
    }

    /**
     * 查询所有CommunityAdmin
     */
    @RequestMapping("/findAllCommunityAdmin")
    public void findAllCommunityAdmin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("findAllCommunityAdmin...");
        //获取session
        HttpSession session = request.getSession();
        //查询所有
        List<UserRegister> communityAdminList = userRegiserService.findAllCommunityAdmin();
        //存入session
        session.setAttribute("communityAdminList",communityAdminList);
        System.out.println(communityAdminList);
        //重定向到查询所有
        response.sendRedirect("/crhms/pages/admin/show-all.jsp");
    }

    /**
     * 更新admin
     */
    @RequestMapping("/updateAdmin")
    public void update(HttpServletRequest request, HttpServletResponse response,UserRegister newUserRegister) throws IOException {
        System.out.println("updateAdmin...");
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        userRegister.setUsername(newUserRegister.getUsername());
        userRegister.setPassword(newUserRegister.getPassword());
        //向数据库更新
        userRegiserService.updateAdmin(userRegister);
        System.out.println(userRegister);
        //重新存入session
        session.setAttribute("userRegister",userRegister);
        //重定向到管理员账户页面
        response.sendRedirect("/crhms/pages/admin/account.jsp");
    }

    /**
     * 更新admin
     */
    @RequestMapping("/updateAdminCommunity")
    public void updateAdminCommunity(HttpServletRequest request, HttpServletResponse response,UserRegister newUserRegister) throws IOException {
        System.out.println("updateAdminCommunity...");
        //向数据库更新
        userRegiserService.updateCommunityAdmin(newUserRegister);
        System.out.println(newUserRegister);
        //重定向到管理员账户页面
        response.sendRedirect("/crhms/admin/findAllCommunityAdmin.do");
    }
}
