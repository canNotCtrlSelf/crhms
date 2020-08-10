package com.cncs.web.controller;

import com.cncs.domain.HealthQuestionnaire;
import com.cncs.domain.MentalityQuestionnaire;
import com.cncs.service.IHealthQuestionnaireService;
import com.cncs.service.IMentalityQuestionnaireService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/mentalityQuestionnaire")
public class MentalityQuestionnaireController {

    @Autowired
    private IMentalityQuestionnaireService mentalityQuestionnaireService;

    /**
     * 获取健康问卷
     */
    @RequestMapping("/getQuestionnaire")
    public void getQuestionnaire(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("getQuestionnaire....");
        HttpSession session = request.getSession();
        //查询问卷
        List<MentalityQuestionnaire> mentalityQuestionnaireList = mentalityQuestionnaireService.findAll();
        //将查询结果存入Session
        session.setAttribute("mentalityQuestionnaireList", mentalityQuestionnaireList);
        //重定向到健康问卷评估页面
        response.sendRedirect("/crhms/pages/resident/mentality-assess.jsp");
    }
}