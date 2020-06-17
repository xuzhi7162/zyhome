package com.xuzhi;

import net.sf.json.JSONObject;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;
import org.junit.Test;

public class CodeC {

    @Test
    public void m1(){
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("username","wangxuzhi");
        jsonObject.put("password","xuzhi7162");
        String json=jsonObject.toString();
        System.out.println(json);
        String base1= Base64.encodeBase64String(json.getBytes());
        System.out.println(base1);
        byte[] bytes = Base64.decodeBase64(base1.getBytes());
        System.out.println(new String(bytes));
    }

    @Test
    public void m2(){
        String password="521983.xiu";
        String md5=DigestUtils.md5Hex(password);
        System.out.println(md5);
    }
}
