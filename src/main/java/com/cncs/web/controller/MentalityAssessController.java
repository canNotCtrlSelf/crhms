package com.cncs.web.controller;

import com.cncs.domain.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/mentalityAssess")
public class MentalityAssessController {

    /**
     * 健康评估
     */
    @RequestMapping("/assess")
    public void assess(HttpServletRequest request, HttpServletResponse response, Relation relation) throws IOException {
        System.out.println("assess...");
        System.out.println(relation);

        int totalScore = 0;

        //评估结果评价与建议
        MentalityAssessResult mentalityAssessResult = new MentalityAssessResult();

        HttpSession session = request.getSession();
        //获取用户问卷输入
        List<MentalityScore> mentalityAssessList = relation.getMentalityAssessList();
        //计算总得分
        for (MentalityScore mentalityScore : mentalityAssessList) {
            totalScore = totalScore + mentalityScore.getScore();
        }
        //设置总得分
        mentalityAssessResult.setTotalScore(totalScore);
        //根据分数评估
        if (totalScore > 25) {
            mentalityAssessResult.setComments("抑郁可能已经比较严重。");
            mentalityAssessResult.setSuggestions("请在医生指导下做相关检查及测试，如果有需要，根据医生安排利用药物治疗。");
        } else if (totalScore > 15) {
            mentalityAssessResult.setComments("可能存在抑郁");
            mentalityAssessResult.setSuggestions("建议你保证每天睡眠充足，每次有氧运动的时间不少于30分钟，" +
                    "每周坚持3到5次冥想练习10分钟，依次往上加，到每天一次{或者一个肌肉渐进放松疗法可以试试},多晒晒太阳，多在外面走走。");
        } else if (totalScore > 9) {
            mentalityAssessResult.setComments("有轻度情绪不良");
            mentalityAssessResult.setSuggestions("不要去抗拒抑郁，哪怕是个正常人也会有阶段性的抑郁情绪，抑郁不是你需要摆脱的敌人，" +
                    "你的敌人是导致抑郁发生的原因，当抑郁情绪出现时，你应该去想他为什么出现了，是什么原因，他在提醒我该做出哪些改变。");
        } else {
            mentalityAssessResult.setComments("没有抑郁。");
            mentalityAssessResult.setSuggestions("你很健康，请继续保持状态。");
        }
        //将结果记录在session
        System.out.println("mentalityAssessResult:" + mentalityAssessResult);
        session.setAttribute("mentalityAssessResult", mentalityAssessResult);
        //重定向到评估结果页面
        response.sendRedirect("/crhms/pages/resident/mentality-assess-result.jsp");
    }
}
