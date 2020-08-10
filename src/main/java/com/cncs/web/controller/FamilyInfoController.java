package com.cncs.web.controller;

import com.cncs.domain.FamilyInfo;
import com.cncs.domain.Relation;
import com.cncs.domain.UserRegister;
import com.cncs.service.IFamilyInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/familyInfo")
public class FamilyInfoController {

    @Autowired
    private IFamilyInfoService familyInfoService;

    /**
     * 更新家庭信息
     */
    @RequestMapping("/update")
    public void update(HttpServletResponse response, Relation relation) throws IOException {
        System.out.println("update....");
        //获取familyInfoList
        List<FamilyInfo> familyInfoList = relation.getFamilyInfoList();
        System.out.println(familyInfoList);
        //更新家庭信息
        familyInfoService.update(familyInfoList);
        //重定向查询家庭信息
        response.sendRedirect("/crhms/familyInfo/findFamilyInfo.do");
    }


    /**
     * 查询家庭信息
     */
    @RequestMapping("/findFamilyInfo")
    public void findFamilyInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("findFamilyInfo....");
        //获取rgId
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        int rgId = userRegister.getId();
        //查询家庭信息
        List<FamilyInfo> familyInfoList = familyInfoService.getFamilyInfo(rgId);
        System.out.println(familyInfoList);
        session.setAttribute("familyInfoList",familyInfoList);
        //重定向到显示家庭信息页面
        response.sendRedirect("/crhms/pages/resident/family-info.jsp");

    }

    /**
     * 注册时，记录家庭信息
     * @param request
     * @param response
     * @param relation
     * @throws IOException
     */
    @RequestMapping("/signupFamilyInfo")
    public void signupFamilyInfo(HttpServletRequest request, HttpServletResponse response, Relation relation) throws IOException {
        System.out.println("signupFamilyInfo...");
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        int rid = userRegister.getId();
        List<FamilyInfo> familyInfoList = relation.getFamilyInfoList();
        System.out.println("family:"+familyInfoList);
        for (FamilyInfo familyInfo : familyInfoList) {
            familyInfo.setRegister_id(rid);
            familyInfoService.insertOne(familyInfo);
        }
        response.sendRedirect("/crhms/pages/register/resident-health-record.jsp");
    }
}
