package com.cncs.domain;

import java.io.Serializable;

/**
 * 居民信息实体类
 */
public class ResidentInfo implements Serializable {
    private int id;
    private int register_id;
    private String truename;
    private String gender;
    private String birthdate;
    private String nationality;
    private String address;
    private String id_card;
    private String hometown;
    private String phone_number;
    private String work_unit;
    private String education;
    private String martial_status;
    private String remarks;

    @Override
    public String toString() {
        return "ResidentInfo{" +
                "id=" + id +
                ", register_id=" + register_id +
                ", truename='" + truename + '\'' +
                ", gender='" + gender + '\'' +
                ", birthdate='" + birthdate + '\'' +
                ", nationality='" + nationality + '\'' +
                ", address='" + address + '\'' +
                ", id_card='" + id_card + '\'' +
                ", hometown='" + hometown + '\'' +
                ", phone_number='" + phone_number + '\'' +
                ", work_unit='" + work_unit + '\'' +
                ", education='" + education + '\'' +
                ", martial_status='" + martial_status + '\'' +
                ", remarks='" + remarks + '\'' +
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

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
    }

    public String getHometown() {
        return hometown;
    }

    public void setHometown(String hometown) {
        this.hometown = hometown;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getWork_unit() {
        return work_unit;
    }

    public void setWork_unit(String work_unit) {
        this.work_unit = work_unit;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getMartial_status() {
        return martial_status;
    }

    public void setMartial_status(String martial_status) {
        this.martial_status = martial_status;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }
}
