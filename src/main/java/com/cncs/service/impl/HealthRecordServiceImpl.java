package com.cncs.service.impl;

import com.cncs.dao.IHealthRecordDao;
import com.cncs.domain.HealthRecord;
import com.cncs.service.IHealthRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HealthRecordServiceImpl implements IHealthRecordService {

    @Autowired
    private IHealthRecordDao healthRecordDao;

    @Override
    public void insertOne(HealthRecord healthRecord) {
        healthRecordDao.insertOne(healthRecord);
    }

    @Override
    public HealthRecord findHealthRecord(int rgId) {
        return healthRecordDao.findHealthRecordByRgId(rgId);
    }

    @Override
    public void update(HealthRecord healthRecord) {
        healthRecordDao.update(healthRecord);
    }

    @Override
    public List<HealthRecord> findAll() {
        return healthRecordDao.findAll();
    }

    @Override
    public List<HealthRecord> findByPrevious(String like) {
        return healthRecordDao.findByLike(like);
    }
}
