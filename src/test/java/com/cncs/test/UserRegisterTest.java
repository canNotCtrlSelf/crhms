package com.cncs.test;

import com.cncs.domain.UserRegister;
import com.cncs.service.IUserRegiserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class UserRegisterTest {

    @Autowired
    private IUserRegiserService userRegiserService;

    @Test
    public void testFindByPhone(){
//        boolean is = userRegiserService.findUserRegisterByPhoneNumber("132454665745");
//        System.out.println(is);

        List<UserRegister> list = userRegiserService.login("小d李", "123456",1);
        if(list.isEmpty()){
            System.out.println("empty...");
        }
        System.out.println(list);
    }
}
