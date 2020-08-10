package com.cncs.service.impl;

import com.cncs.dao.IFamilyInfoDao;
import com.cncs.domain.FamilyInfo;
import com.cncs.service.IFamilyInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FamilyInfoServiceImpl implements IFamilyInfoService {

    @Autowired
    private IFamilyInfoDao familyInfoDao;

    @Override
    public void insertOne(FamilyInfo familyInfo) {
        familyInfoDao.insertOne(familyInfo);
    }

    @Override
    public List<FamilyInfo> getFamilyInfo(int rgId) {
        return familyInfoDao.findFamlilyInfoByRgId(rgId);
    }

    @Override
    public void update(List<FamilyInfo> familyInfoList) {
        for (FamilyInfo familyInfo : familyInfoList) {
            familyInfoDao.updateFamilyInfoById(familyInfo);
        }
    }
}
