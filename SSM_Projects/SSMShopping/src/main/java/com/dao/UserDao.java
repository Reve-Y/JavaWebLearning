package com.dao;

import com.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    //  增加一条用户记录（注册）
    public int addUser(User user);

    //  登录。返回User
    public User login(@Param("email")String email,@Param("password")String password);
}
