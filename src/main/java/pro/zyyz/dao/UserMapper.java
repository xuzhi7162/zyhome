package pro.zyyz.dao;

import org.springframework.stereotype.Component;
import pro.zyyz.pojo.User;

@Component("userMapper")
public interface UserMapper {
    String queryByUserName(String userName);
}
