package com.cncs.service;

import com.cncs.domain.DoctorInfo;

/**
 * 医生信息业务层接口
 */
public interface IDoctorInfoService {

    void insertOne(DoctorInfo doctorInfo);

    /**
     * 根据rgId查找医生信息
     * @param rgId
     * @return
     */
    DoctorInfo findDoctorInfoByRgId(int rgId);

    /**
     * 更新医生信息
     * @param doctorInfo
     */
    void update(DoctorInfo doctorInfo);
}
