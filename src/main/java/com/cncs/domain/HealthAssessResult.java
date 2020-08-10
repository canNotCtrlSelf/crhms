package com.cncs.domain;

import java.io.Serializable;

/**
 * 健康评估结果
 */
public class HealthAssessResult implements Serializable {
    private int totalScore;
    private String sleepCommentsAndSuggestions;
    private String dietCommentsAndSuggestions;
    private String sportCommentsAndSuggestions;

    @Override
    public String toString() {
        return "HealthAssessResult{" +
                "totalScore=" + totalScore +
                ", sleepCommentsAndSuggestions='" + sleepCommentsAndSuggestions + '\'' +
                ", dietCommentsAndSuggestions='" + dietCommentsAndSuggestions + '\'' +
                ", sportCommentsAndSuggestions='" + sportCommentsAndSuggestions + '\'' +
                '}';
    }

    public int getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(int totalScore) {
        this.totalScore = totalScore;
    }

    public String getSleepCommentsAndSuggestions() {
        return sleepCommentsAndSuggestions;
    }

    public void setSleepCommentsAndSuggestions(String sleepCommentsAndSuggestions) {
        this.sleepCommentsAndSuggestions = sleepCommentsAndSuggestions;
    }

    public String getDietCommentsAndSuggestions() {
        return dietCommentsAndSuggestions;
    }

    public void setDietCommentsAndSuggestions(String dietCommentsAndSuggestions) {
        this.dietCommentsAndSuggestions = dietCommentsAndSuggestions;
    }

    public String getSportCommentsAndSuggestions() {
        return sportCommentsAndSuggestions;
    }

    public void setSportCommentsAndSuggestions(String sportCommentsAndSuggestions) {
        this.sportCommentsAndSuggestions = sportCommentsAndSuggestions;
    }
}
