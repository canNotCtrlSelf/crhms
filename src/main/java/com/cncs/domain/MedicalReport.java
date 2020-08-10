package com.cncs.domain;

import java.io.Serializable;

/**
 * 体检报告实体类
 */
public class MedicalReport implements Serializable {
    private int id;
    private int register_id;
    private String examdate;
    private String picpath;

    @Override
    public String toString() {
        return "MedicalReport{" +
                "id=" + id +
                ", register_id=" + register_id +
                ", examdate='" + examdate + '\'' +
                ", picpath='" + picpath + '\'' +
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

    public String getExamdate() {
        return examdate;
    }

    public void setExamdate(String examdate) {
        this.examdate = examdate;
    }

    public String getPicpath() {
        return picpath;
    }

    public void setPicpath(String picpath) {
        this.picpath = picpath;
    }
}
