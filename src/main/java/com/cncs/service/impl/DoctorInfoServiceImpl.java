package com.cncs.service.impl;

import com.cncs.dao.IDoctorInfoDao;
import com.cncs.domain.DoctorInfo;
import com.cncs.service.IDoctorInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DoctorInfoServiceImpl implements IDoctorInfoService {

    @Autowired
    private IDoctorInfoDao doctorInfoDao;

    /**
     * 插入一条医生信息
     * @param doctorInfo
     */
    @Override
    public void insertOne(DoctorInfo doctorInfo) {
        doctorInfoDao.insertOne(doctorInfo);
    }

    /**
     * 根据rgId查找医生信息
     * @param rgId
     * @return
     */
    @Override
    public DoctorInfo findDoctorInfoByRgId(int rgId) {
        return doctorInfoDao.findDoctorInfoByRgId(rgId);
    }

    /**
     * 更新医生信息
     * @param doctorInfo
     */
    @Override
    public void update(DoctorInfo doctorInfo) {
        doctorInfoDao.updateByRgId(doctorInfo);
    }
}
