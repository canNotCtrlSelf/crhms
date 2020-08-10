package com.cncs.domain;

import java.io.Serializable;

/**
 * 医生信息实体类
 */
public class DoctorInfo implements Serializable {
    private int id;
    private int register_id;
    private int age;
    private String truename;
    private String gender;
    private String job_title;
    private String serving_hospital;
    private String personal_profile;
    private String expert_in;

    @Override
    public String toString() {
        return "DoctorInfo{" +
                "id=" + id +
                ", register_id=" + register_id +
                ", age=" + age +
                ", truename='" + truename + '\'' +
                ", gender='" + gender + '\'' +
                ", job_title='" + job_title + '\'' +
                ", serving_hospital='" + serving_hospital + '\'' +
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

    public String getJob_title() {
        return job_title;
    }

    public void setJob_title(String job_title) {
        this.job_title = job_title;
    }

    public String getServing_hospital() {
        return serving_hospital;
    }

    public void setServing_hospital(String serving_hospital) {
        this.serving_hospital = serving_hospital;
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


