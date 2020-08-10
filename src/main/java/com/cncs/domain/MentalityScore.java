package com.cncs.domain;

import java.io.Serializable;

/**
 * 心理评估得分
 */
public class MentalityScore implements Serializable {

    private Integer score;

    @Override
    public String toString() {
        return "MentalityScore{" +
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
