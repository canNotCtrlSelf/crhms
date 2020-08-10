package com.cncs.test.residentInfo;


import com.cncs.domain.ResidentInfo;
import com.cncs.service.IResidentInfoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class ResidentTest {

    @Autowired
    private IResidentInfoService residentInfoService;

    @Test
    public void testResident5() {
        List<Float> list = new ArrayList<>();
        list.add(1.4f);
        list.add(2.4f);
        list.add(3.4f);
        list.add(4.4f);
        BigDecimal bigDecimal = new BigDecimal((1.0f/3.0f));
        float f2 = bigDecimal.setScale(2, BigDecimal.ROUND_DOWN).floatValue();
        System.out.println(f2 + "========"+(1.0f/3.0f));
    }

    @Test
    public void testResident4() {
        List<ResidentInfo> residentInfoList = residentInfoService.findBydateScope("2001-02-04", "2011-02-04");
        System.out.println(residentInfoList + "========");
    }

    @Test
    public void testResident3() {
        List<ResidentInfo> residentInfoList = residentInfoService.findByLike("大");
        System.out.println(residentInfoList + "========");
    }

    @Test
    public void testResident() {
        ResidentInfo residentInfo = residentInfoService.findResidentInfoByRgId(1);
        System.out.println(residentInfo + "========");
    }

    @Test
    public void testResident2() {
        ResidentInfo residentInfo1 = new ResidentInfo();
        residentInfo1.setBirthdate("2001-02-04");
        residentInfo1.setRegister_id(25);
        residentInfoService.signupResidentInfo(residentInfo1);
//        2	2	张大兰	女	2001-02-04	汉族	新西兰大学B楼322号	410722190002144032	西藏拉萨	13881726723	外贸	研究生	未婚
//        ResidentInfo residentInfo = residentInfoService.findResidentInfoByRgId(1);
//        System.out.println(residentInfo+"========");
    }
}
