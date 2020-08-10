package com.cncs.domain;

import java.io.Serializable;

/**
 * 健康管理师
 */
public class HealthManager implements Serializable {
    private int id;
    private int register_id;
    private int age;
    private String truename;
    private String gender;
    private String address;
    private String certification_level;
    private String professional_history;
    private String educational_experience;
    private String personal_profile;
    private String expert_in;

    @Override
    public String toString() {
        return "HealthManager{" +
                "id=" + id +
                ", register_id=" + register_id +
                ", age=" + age +
                ", truename='" + truename + '\'' +
                ", gender='" + gender + '\'' +
                ", address='" + address + '\'' +
                ", certification_level='" + certification_level + '\'' +
                ", professional_history='" + professional_history + '\'' +
                ", educational_experience='" + educational_experience + '\'' +
                ", personal_profile='" + personal_profile + '\'' +
                ", expert_in='" + expert_in + '\'' +
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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCertification_level() {
        return certification_level;
    }

    public void setCertification_level(String certification_level) {
        this.certification_level = certification_level;
    }

    public String getProfessional_history() {
        return professional_history;
    }

    public void setProfessional_history(String professional_history) {
        this.professional_history = professional_history;
    }

    public String getEducational_experience() {
        return educational_experience;
    }

    public void setEducational_experience(String educational_experience) {
        this.educational_experience = educational_experience;
    }

    public String getPersonal_profile() {
        return personal_profile;
    }

    public void setPersonal_profile(String personal_profile) {
        this.personal_profile = personal_profile;
    }

    public String getExpert_in() {
        return expert_in;
    }

    public void setExpert_in(String expert_in) {
        this.expert_in = expert_in;
    }
}
