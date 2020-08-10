package com.cncs.test.common;

import java.util.ArrayList;
import java.util.List;

public class CommonTest {

    public void testList(){
        List<Integer> list = new ArrayList<>();
        list.add(2);
        list.add(4);
        list.add(3);
        System.out.println("sum="+(list.get(0)+list.get(1)+list.get(2)));
    }
}
