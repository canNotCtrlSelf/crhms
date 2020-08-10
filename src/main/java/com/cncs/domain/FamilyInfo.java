package com.cncs.domain;

import java.io.Serializable;

/**
 * 家庭信息的实体类
 */
public class FamilyInfo implements Serializable {

    private int id;
    private int register_id;
    private String truename;
    private String gender;
    private String family_relationship;
    private String birthdate;
    private String work_unit;
    private String profession;

    @Override
    public String toString() {
        return "FamilyInfo{" +
                "id=" + id +
                ", register_id=" + register_id +
                ", truename='" + truename + '\'' +
                ", gender='" + gender + '\'' +
                ", family_relationship='" + family_relationship + '\'' +
                ", birthdate='" + birthdate + '\'' +
                ", work_unit='" + work_unit + '\'' +
                ", profession='" + profession + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRegister_id() {
        return register_id;
    }

    public void setRegister_id(int register_id) {
        this.register_id = register_id;
    }

    public String getTruename() {
        return truename;
    }

    public void setTruename(String truename) {
        this.truename = truename;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getFamily_relationship() {
        return family_relationship;
    }

    public void setFamily_relationship(String family_relationship) {
        this.family_relationship = family_relationship;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getWork_unit() {
        return work_unit;
    }

    public void setWork_unit(String work_unit) {
        this.work_unit = work_unit;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }
}
