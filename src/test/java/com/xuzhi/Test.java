package com.xuzhi;


import java.util.HashMap;
import java.util.Map;

public class Test {

    @org.junit.Test
    public void m1(){
        Map<String,Integer> map=new HashMap<>();
        map.put("test",123);
        map.put("test2",312);
        System.out.println(map);
    }

}
