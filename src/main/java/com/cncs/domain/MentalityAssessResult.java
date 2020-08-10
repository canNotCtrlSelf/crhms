package com.cncs.domain;

import java.io.Serializable;

/**
 * 心理评估结果
 */
public class MentalityAssessResult implements Serializable {
    private int totalScore;//得分
    private String comments;//评价
    private String suggestions;//建议

    @Override
    public String toString() {
        return "MentalityAssessResult{" +
                "totalScore=" + totalScore +
                ", comments='" + comments + '\'' +
                ", suggestions='" + suggestions + '\'' +
                '}';
    }

    public int getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(int totalScore) {
        this.totalScore = totalScore;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public String getSuggestions() {
        return suggestions;
    }

    public void setSuggestions(String suggestions) {
        this.suggestions = suggestions;
    }
}
