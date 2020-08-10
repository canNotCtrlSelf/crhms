package com.cncs.domain;

import java.io.Serializable;
import java.util.List;

/**
 * 关系表healthAssessList
 */
public class Relation implements Serializable {
    private List<FamilyInfo> familyInfoList;

    private List<HealthScore> healthAssessList;

    private List<MentalityScore> mentalityAssessList;

    @Override
    public String toString() {
        return "Relation{" +
                "familyInfoList=" + familyInfoList +
                ", healthAssessList=" + healthAssessList +
                ", mentalityAssessList=" + mentalityAssessList +
                '}';
    }

    public List<FamilyInfo> getFamilyInfoList() {
        return familyInfoList;
    }

    public void setFamilyInfoList(List<FamilyInfo> familyInfoList) {
        this.familyInfoList = familyInfoList;
    }

    public List<HealthScore> getHealthAssessList() {
        return healthAssessList;
    }

    public void setHealthAssessList(List<HealthScore> healthAssessList) {
        this.healthAssessList = healthAssessList;
    }

    public List<MentalityScore> getMentalityAssessList() {
        return mentalityAssessList;
    }

    public void setMentalityAssessList(List<MentalityScore> mentalityAssessList) {
        this.mentalityAssessList = mentalityAssessList;
    }
}
