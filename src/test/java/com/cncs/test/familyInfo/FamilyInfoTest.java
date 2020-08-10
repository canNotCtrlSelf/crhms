package com.cncs.test.familyInfo;

import com.cncs.domain.FamilyInfo;
import com.cncs.service.IFamilyInfoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class FamilyInfoTest {

    @Autowired
    private IFamilyInfoService familyInfoService;

    @Test
    public void test(){
        FamilyInfo familyInfo=new FamilyInfo();
        familyInfo.setRegister_id(1);
        familyInfo.setTruename("zhangsan");
        familyInfo.setGender("male");
        familyInfo.setFamily_relationship("父子");
        familyInfo.setBirthdate("2020-5-11");
        familyInfo.setWork_unit("西南大学");
        familyInfo.setProfession("老师");
        familyInfoService.insertOne(familyInfo);
    }
}
