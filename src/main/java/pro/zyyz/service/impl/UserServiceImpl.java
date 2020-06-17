package pro.zyyz.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pro.zyyz.dao.UserMapper;
import pro.zyyz.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public String test() {
        return userMapper.queryByUserName("123");
    }
}
