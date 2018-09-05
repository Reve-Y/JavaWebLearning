package com.service.impls;

import com.dao.UserDao;
import com.pojo.User;
import com.service.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public int addUser(User user) {
        return userDao.addUser(user);
    }

    @Override
    public User login(String email, String password) {
        return userDao.login(email,password);
    }
}
