package com.cncs.test;

import com.cncs.domain.HealthQuestionnaire;
import com.cncs.service.IHealthQuestionnaireService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class HealthQuestionnaireDaoTest {

    @Autowired
    private IHealthQuestionnaireService healthQuestionnaireService;

    @Test
    public void testList(){
        List<Integer> list = new ArrayList<>();
        list.add(2);
        list.add(4);
        list.add(3);
        System.out.println("sum="+(list.get(0)+list.get(1)+list.get(2)));
    }

    @Test
    public void findAll(){
        List<HealthQuestionnaire> healthQuestionnaireList = healthQuestionnaireService.findAll();
        System.out.println(healthQuestionnaireList);
    }
}
