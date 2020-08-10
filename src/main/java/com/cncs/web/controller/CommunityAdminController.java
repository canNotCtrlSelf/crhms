package com.cncs.web.controller;

import com.cncs.domain.HealthRecord;
import com.cncs.domain.ResidentInfo;
import com.cncs.domain.UserRegister;
import com.cncs.service.ICommunityAdminService;
import com.cncs.service.IHealthRecordService;
import com.cncs.service.IResidentInfoService;
import com.cncs.service.IUserRegiserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/communityAdmin")
public class CommunityAdminController {

    @Autowired
    private IUserRegiserService userRegiserService;

    @Autowired
    private IResidentInfoService residentInfoService;

    @Autowired
    private IHealthRecordService healthRecordService;

    /**
     * 查看居民年龄分布
     */
    @RequestMapping("/findAgeDistribution")
    public void findAgeDistribution(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("findBydateScope....");
        HttpSession session = request.getSession();
        //查询所有居民
        List<ResidentInfo> residentInfoList = residentInfoService.findAll();
        float total = residentInfoList.size();
        Float[] decadeArr = new Float[4];
        //分析
        List<ResidentInfo> age70List = residentInfoService.findBydateScope("1970-01-01", "1980-01-01");
        float decade70 = age70List.size() / total;
        List<ResidentInfo> age80List = residentInfoService.findBydateScope("1980-01-01", "1990-01-01");
        float decade80 = age80List.size() / total;
        List<ResidentInfo> age90List = residentInfoService.findBydateScope("1990-01-01", "2000-01-01");
        float decade90 = age90List.size() / total;
        List<ResidentInfo> age00List = residentInfoService.findBydateScope("2000-01-01", "2020-05-24");
        float decade00 = age00List.size() / total;
        float decade60 = (total - age00List.size() - age90List.size() - age80List.size() - age70List.size()) / total;
       
        decadeArr[0] = conversion(decade60+decade70);
        decadeArr[1] = conversion(decade80);
        decadeArr[2] = conversion(decade90);
        decadeArr[3] = conversion(decade00);
//        decadeArr[4] = conversion();

        System.out.println(decadeArr);
        //存入session
        session.setAttribute("decadeArr", decadeArr);
        for (Float aFloat : decadeArr) {
            System.out.println(aFloat);
        }
        //跳转到展示页面
        response.sendRedirect("/crhms/pages/community_admin/show-age-distribution.jsp");
    }

    /**
     * 查看居民性别分布
     */
    @RequestMapping("/findGenderDistribution")
    public void findGenderDistribution(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("findGenderDistribution....");
        HttpSession session = request.getSession();
        //查询所有居民
        List<ResidentInfo> residentInfoList = residentInfoService.findAll();
        float total = residentInfoList.size();
        Float[] genderArr = new Float[2];
        //分析
        List<ResidentInfo> maleList = residentInfoService.findByGender("男");
        float maleTook = maleList.size() / total;
        List<ResidentInfo> femaleList = residentInfoService.findByGender("女");
        float femaleTook = femaleList.size() / total;

        genderArr[0] = conversion(maleTook);
        genderArr[1] = conversion(femaleTook);

        System.out.println(genderArr);
        //存入session
        session.setAttribute("genderArr", genderArr);
        for (Float aFloat : genderArr) {
            System.out.println(aFloat);
        }
        //跳转到展示页面
        response.sendRedirect("/crhms/pages/community_admin/show-gender-distribution.jsp");
    }

    /**
     * 查看居民疾病分布
     */
    @RequestMapping("/findIllnessDistribution")
    public void findIllnessDistribution(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("findIllnessDistribution....");
        HttpSession session = request.getSession();
        //查询所有健康档案
        List<HealthRecord> healthRecordList = healthRecordService.findAll();
        float total = healthRecordList.size();
        Float[] illnessArr = new Float[4];
        //分析
        List<HealthRecord> heartList = healthRecordService.findByPrevious("心脏病");
        float heartTook = heartList.size() / total;
        List<HealthRecord> HighList = healthRecordService.findByPrevious("高血压");
        float highTook = HighList.size() / total;
        List<HealthRecord> sugerList = healthRecordService.findByPrevious("糖尿病");
        float sugerTook = sugerList.size() / total;
        List<HealthRecord> coldList = healthRecordService.findByPrevious("感冒发烧");
        float coldTook = coldList.size() / total;
        illnessArr[0] = conversion(heartTook);
        illnessArr[1] = conversion(highTook);
        illnessArr[2] = conversion(sugerTook);
        illnessArr[3] = conversion(coldTook);

        System.out.println(illnessArr);
        //存入session
        session.setAttribute("illnessArr", illnessArr);
        for (Float aFloat : illnessArr) {
            System.out.println(aFloat);
        }
        //跳转到展示页面
        response.sendRedirect("/crhms/pages/community_admin/show-illness-distribution.jsp");
    }



    /**
     * 根据日期范围查询
     */
    @RequestMapping("/findBydateScope")
    public void findBydateScope(HttpServletRequest request, HttpServletResponse response, String datetime1, String datetime2) throws IOException {
        System.out.println("findBydateScope....");
        System.out.println(datetime1 + "===" + datetime2);
        HttpSession session = request.getSession();
        //查询所有居民
        List<ResidentInfo> residentInfoList = residentInfoService.findBydateScope(datetime1, datetime2);
        //存入session
        session.setAttribute("residentInfoList", residentInfoList);
        System.out.println(residentInfoList);
        //跳转到展示页面
        response.sendRedirect("/crhms/pages/community_admin/show-by-condition.jsp");
    }

    /**
     * 根据性别查询
     *
     * @param request
     * @param response
     * @param gender
     * @throws IOException
     */
    @RequestMapping("/findByGender")
    public void findByGender(HttpServletRequest request, HttpServletResponse response, String gender) throws IOException {
        System.out.println("findByGender....");
        HttpSession session = request.getSession();
        //查询所有居民
        List<ResidentInfo> residentInfoList = residentInfoService.findByGender(gender);
        //存入session
        session.setAttribute("residentInfoList", residentInfoList);
        System.out.println(residentInfoList);
        //跳转到展示页面
        response.sendRedirect("/crhms/pages/community_admin/show-by-condition.jsp");
    }


    /**
     * 根据名字模糊查询
     *
     * @param request
     * @param response
     * @param like
     */
    @RequestMapping("/findByLike")
    public void findByLike(HttpServletRequest request, HttpServletResponse response, String like) throws IOException {
        System.out.println("findByLike....");
        HttpSession session = request.getSession();
        //查询所有居民
        List<ResidentInfo> residentInfoList = residentInfoService.findByLike(like);
        //存入session
        session.setAttribute("residentInfoList", residentInfoList);
        System.out.println(residentInfoList);
        //跳转到展示页面
        response.sendRedirect("/crhms/pages/community_admin/show-by-condition.jsp");
    }

    /**
     * 根据姓名查询
     */
    @RequestMapping("/findByTruename")
    public void findByTruename(HttpServletRequest request, HttpServletResponse response, String truename) throws IOException {
        System.out.println("findByTruename....");
        HttpSession session = request.getSession();
        //查询所有居民
        List<ResidentInfo> residentInfoList = residentInfoService.findByTruename(truename);
        //存入session
        session.setAttribute("residentInfoList", residentInfoList);
        System.out.println(residentInfoList);
        //跳转到展示页面
        response.sendRedirect("/crhms/pages/community_admin/show-by-condition.jsp");
    }


    /**
     * 查询所有居民
     *
     * @param request
     * @param response
     */
    @RequestMapping("/findAllResident")
    public void findAllResident(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        System.out.println("findAllResident....");
        HttpSession session = request.getSession();
        //查询所有居民
        List<ResidentInfo> residentInfoList = residentInfoService.findAll();
        //存入session
        session.setAttribute("residentInfoList", residentInfoList);
        System.out.println(residentInfoList);
        //跳转到展示页面
//        request.getRequestDispatcher("/pages/community_admin/show-all.jsp").forward(request, response);
        response.sendRedirect("/crhms/pages/community_admin/show-all.jsp");
    }

    /**
     * 更新CommunityAdmin
     */
    @RequestMapping("/update")
    public void updateAdminCommunity(HttpServletRequest request, HttpServletResponse response, UserRegister newUserRegister) throws IOException {
        System.out.println("update...");
        HttpSession session = request.getSession();
        //向数据库更新
        newUserRegister = userRegiserService.getAndupdateCommunityAdmin(newUserRegister);
        session.setAttribute("userRegister", newUserRegister);
        System.out.println(newUserRegister);
        //重定向到管理员账户页面
        response.sendRedirect("/crhms/pages/community_admin/account.jsp");
    }

    public static Float conversion(Float aFloat){
        BigDecimal bigDecimal = new BigDecimal(aFloat);
        float f2 = bigDecimal.setScale(2, BigDecimal.ROUND_DOWN).floatValue(); //多出的小数部分直接删除。
        return f2;
    }

}
