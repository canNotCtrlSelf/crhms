package com.cncs.service;

import com.cncs.domain.HealthRecord;

import java.util.List;

public interface IHealthRecordService {
    void insertOne(HealthRecord healthRecord);

    HealthRecord findHealthRecord(int rgId);

    void update(HealthRecord healthRecord);

    List<HealthRecord> findAll();

    List<HealthRecord> findByPrevious(String like);
}
