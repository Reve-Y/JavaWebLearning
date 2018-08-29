package com.controller;

import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;


    @RequestMapping("queryAll")
    public ModelAndView queryAll(){
        ModelAndView modelAndView = new ModelAndView("user");
        List<User> list = userService.queryAll();
        modelAndView.addObject("users",list);
        return modelAndView;
    }
}
