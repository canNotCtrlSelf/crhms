package com.cncs.service;

import com.cncs.domain.FamilyInfo;

import java.util.List;

public interface IFamilyInfoService {

    void insertOne(FamilyInfo familyInfo);

    List<FamilyInfo> getFamilyInfo(int rgId);

    void update(List<FamilyInfo> familyInfoList);
}
