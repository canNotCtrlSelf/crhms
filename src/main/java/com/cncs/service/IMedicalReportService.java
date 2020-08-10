package com.cncs.service;

import com.cncs.domain.MedicalReport;

import java.util.List;

/**
 * 体检报告业务层接口
 */
public interface IMedicalReportService {

    void insertOne(MedicalReport medicalReport);

    /**
     * 根据rgId查找
     * @param rgId
     * @return
     */
    List<MedicalReport> findMedicalReport(int rgId);
}
