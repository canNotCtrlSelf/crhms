package com.cncs.web.controller;

import com.cncs.domain.ResidentInfo;
import com.cncs.domain.UserRegister;
import com.cncs.service.IResidentInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/residentInfo")
public class ResidentInfoController {

    @Autowired
    private IResidentInfoService residentInfoService;

    /**
     * 居民注册step1
     */
    @RequestMapping("/signupResidentInfo")
    public void signupResidentInfo(HttpServletRequest request, HttpServletResponse response, ResidentInfo residentInfo) throws ServletException, IOException {
        System.out.println("signupResidentInfo....");
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        //获取userRegister的id
        residentInfo.setRegister_id(userRegister.getId());
//        residentInfo.setRegister_id(1);
        //插入一条数据
        residentInfoService.signupResidentInfo(residentInfo);
        System.out.println("residentInfo:" + residentInfo);
        response.sendRedirect("/crhms/pages/register/resident-family.jsp");
    }

    /**
     *
     * @param request
     * @param response
     * @param residentInfo
     * @throws IOException
     */
    @RequestMapping("/update")
    public void updateResidentInfo(HttpServletRequest request, HttpServletResponse response, ResidentInfo residentInfo) throws IOException {
        System.out.println("update...");
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        residentInfo.setRegister_id(userRegister.getId());
        //通过register_id更新
        System.out.println(residentInfo);
        residentInfoService.update(residentInfo);

        //访问findResidentInfo
        response.sendRedirect("/crhms/residentInfo/findResidentInfo.do");
    }


    /**
     * 通过register_id查询ResidentInfo
     *
     * @param request
     * @return
     */
    @RequestMapping("/findResidentInfo")
    public void findResidentInfoByRgId(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("findResidentInfo....");
        ResidentInfo residentInfo = null;
        //从session中获取register_id
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        residentInfo = residentInfoService.findResidentInfoByRgId(userRegister.getId());
        System.out.println(residentInfo + "=======");
        session.setAttribute("residentInfo", residentInfo);
        response.sendRedirect(request.getContextPath() + "/pages/resident/resident-info.jsp");
    }


    @RequestMapping("/test")
    public void test() {
        System.out.println("test....");
    }


/*    public ResidentInfo findResidentInfoById(HttpServletRequest request){
        HttpSession session = request.getSession();
        UserRegister userRegister = (UserRegister) session.getAttribute("userRegister");
        int id = userRegister.getId();
        //查询关系表获取residentInfo的id


        //通过id查询residentInfo
        ResidentInfo residentInfo = residentInfoService.findResidentInfoById(id);
        return residentInfo;
    }*/
}
