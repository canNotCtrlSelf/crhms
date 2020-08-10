package com.cncs.web.controller;

import com.cncs.domain.HealthAssessResult;
import com.cncs.domain.HealthScore;
import com.cncs.domain.Relation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/healthAssess")
public class HealthAssessController {

    /**
     * 健康评估
     */
    @RequestMapping("/assess")
    public void assess(HttpServletRequest request, HttpServletResponse response, Relation relation) throws IOException {
        System.out.println("assess...");
        System.out.println(relation);
        //睡眠评估
        int sleepGrade = 0;
        // 饮食评估
        int dietGrade = 0;
        // 运动评估
        int sportGrade = 0;
        //总分
        int totalScore = 0;

        //评估结果评价与建议
        HealthAssessResult healthAssessResult = new HealthAssessResult();

        HttpSession session = request.getSession();
        //获取用户问卷输入
        List<HealthScore> healthAssessList = relation.getHealthAssessList();
        //分别计算结果
        for (int i = 0; i < 15; i++) {
            if (i < 5) {
                sleepGrade = sleepGrade + healthAssessList.get(i).getScore();
            } else if (i >= 5 && i < 10) {
                dietGrade = dietGrade + healthAssessList.get(i).getScore();
            } else {
                sportGrade = sportGrade + healthAssessList.get(i).getScore();
            }
        }
        //根据分数评估
        //睡眠评估
        if (sleepGrade > 18) {
            healthAssessResult.setSleepCommentsAndSuggestions("您的睡眠质量非常好，请继续保持。");
        } else if (sleepGrade > 13) {
            healthAssessResult.setSleepCommentsAndSuggestions("您的睡眠质量良好，但还需要继续努力。");
        } else if (sleepGrade > 8) {
            healthAssessResult.setSleepCommentsAndSuggestions("您的睡眠质量有点糟糕，可能需要注意调节自身的睡眠习惯。");
        } else {
            healthAssessResult.setSleepCommentsAndSuggestions("您的睡眠质量很糟糕，或许您可以去找医生针对性地治疗一下。");

        }
        //饮食评估
        if (dietGrade > 18) {
            healthAssessResult.setDietCommentsAndSuggestions("您的饮食习惯非常好，请继续保持。");
        } else if (dietGrade > 13) {
            healthAssessResult.setDietCommentsAndSuggestions("您的饮食习惯良好，但还需要继续努力。");
        } else if (dietGrade > 8) {
            healthAssessResult.setDietCommentsAndSuggestions("您的饮食习惯有点糟糕，可能需要注意调节自身的饮食习惯。");
        } else {
            healthAssessResult.setDietCommentsAndSuggestions("您的饮食习惯很糟糕，或许您可以去询问健康管理师等专业人员调整好自己的饮食习惯。");
        }
        //运动评估
        if (sportGrade > 18) {
            healthAssessResult.setSportCommentsAndSuggestions("您的运动习惯非常好，请继续保持。");
        } else if (sportGrade > 13) {
            healthAssessResult.setSportCommentsAndSuggestions("您的运动习惯良好，但还需要继续努力。");
        } else if (sportGrade > 8) {
            healthAssessResult.setSportCommentsAndSuggestions("您的运动习惯有点糟糕，可能需要注意调节自身的运动习惯。");
        } else {
            healthAssessResult.setSportCommentsAndSuggestions("您的运动习惯很糟糕，或许您可以去调整好自己的运动和锻炼的心态。");
        }
        //将结果记录在session
        totalScore = sleepGrade + dietGrade + sportGrade;
        healthAssessResult.setTotalScore(totalScore);
        System.out.println("healthAssessResult:" + healthAssessResult);
        session.setAttribute("healthAssessResult", healthAssessResult);
        //重定向到评估结果页面
        response.sendRedirect("/crhms/pages/resident/health-assess-result.jsp");
    }
}
