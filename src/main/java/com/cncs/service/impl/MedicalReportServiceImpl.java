package com.cncs.service.impl;

import com.cncs.dao.IMedicalReportDao;
import com.cncs.domain.MedicalReport;
import com.cncs.service.IMedicalReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 体检报告持久层实现类
 */
@Service
public class MedicalReportServiceImpl implements IMedicalReportService {

    @Autowired
    private IMedicalReportDao medicalReportDao;

    @Override
    public void insertOne(MedicalReport medicalReport) {
        medicalReportDao.insertOne(medicalReport);
    }

    /**
     * 根据rgId查找
     * @param rgId
     * @return
     */
    @Override
    public List<MedicalReport> findMedicalReport(int rgId) {
        return medicalReportDao.findMedicalReportByRgId(rgId);
    }
}
