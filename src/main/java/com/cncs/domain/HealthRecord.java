package com.cncs.domain;

import java.io.Serializable;

/**
 * 健康档案实体类
 */
public class HealthRecord implements Serializable {;
private int id;
private int register_id;
private String present_illness;
private String previous_history;
private String allergy_history;
private String exposure_history;
private String family_history;
private String genetics_history;
private String disability_status;
private String create_date;
private String record_doctor;

    @Override
    public String toString() {
        return "HealthRecord{" +
                "id=" + id +
                ", register_id=" + register_id +
                ", present_illness='" + present_illness + '\'' +
                ", previous_history='" + previous_history + '\'' +
                ", allergy_history='" + allergy_history + '\'' +
                ", exposure_history='" + exposure_history + '\'' +
                ", family_history='" + family_history + '\'' +
                ", genetics_history='" + genetics_history + '\'' +
                ", disability_status='" + disability_status + '\'' +
                ", create_date='" + create_date + '\'' +
                ", record_doctor='" + record_doctor + '\'' +
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

    public String getPresent_illness() {
        return present_illness;
    }

    public void setPresent_illness(String present_illness) {
        this.present_illness = present_illness;
    }

    public String getPrevious_history() {
        return previous_history;
    }

    public void setPrevious_history(String previous_history) {
        this.previous_history = previous_history;
    }

    public String getAllergy_history() {
        return allergy_history;
    }

    public void setAllergy_history(String allergy_history) {
        this.allergy_history = allergy_history;
    }

    public String getExposure_history() {
        return exposure_history;
    }

    public void setExposure_history(String exposure_history) {
        this.exposure_history = exposure_history;
    }

    public String getFamily_history() {
        return family_history;
    }

    public void setFamily_history(String family_history) {
        this.family_history = family_history;
    }

    public String getGenetics_history() {
        return genetics_history;
    }

    public void setGenetics_history(String genetics_history) {
        this.genetics_history = genetics_history;
    }

    public String getDisability_status() {
        return disability_status;
    }

    public void setDisability_status(String disability_status) {
        this.disability_status = disability_status;
    }

    public String getCreate_date() {
        return create_date;
    }

    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }

    public String getRecord_doctor() {
        return record_doctor;
    }

    public void setRecord_doctor(String record_doctor) {
        this.record_doctor = record_doctor;
    }
}
