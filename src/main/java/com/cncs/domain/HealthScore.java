package com.cncs.domain;

import java.io.Serializable;

/**
 * 健康问卷每题得分
 */
public class HealthScore implements Serializable {

    private Integer score;

    @Override
    public String toString() {
        return "HealthScore{" +
                "score=" + score +
                '}';
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }
}
