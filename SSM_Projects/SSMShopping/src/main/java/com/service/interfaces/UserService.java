package com.service.interfaces;

import com.pojo.User;

public interface UserService {
    public int addUser(User user);

    public User login(String email,String password);
}
