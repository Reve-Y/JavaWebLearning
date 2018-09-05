package com.controller;

import com.pojo.User;
import com.service.interfaces.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    //  跳转至首页
    @RequestMapping("toIndexPage")
    public ModelAndView toIndexPage(){
        return new ModelAndView("index");
    }
    //  跳转至登录页面
    @RequestMapping("toLoginPage")
    public ModelAndView toLoginPage(){
        return new ModelAndView("login");
    }
    //  跳转至注册页面
    @RequestMapping("toRegistPage")
    public ModelAndView toRegistPage(){
        ModelAndView modelAndView = new ModelAndView("regist");
        return modelAndView;
    }
    //  显示验证码
    @RequestMapping("showValidatecode")
    public ModelAndView showValidatecode(){
        return new ModelAndView("validatecode");
    }
    //  获取验证码
    @RequestMapping("getcheckcode")
    public void getValidateCode(HttpServletRequest request, HttpServletResponse response){
        String code = (String) request.getSession().getAttribute("key");
        System.out.println("注册验证码："+code);
        response.setCharacterEncoding("utf-8");
        try{
            response.getWriter().print(code);
        }catch (IOException e){
            e.printStackTrace();
        }
    }

    // 用户注册
    @RequestMapping("register")
    public ModelAndView register(HttpServletRequest request){
        User user = new User();
        user.setNickname(request.getParameter("nickName"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        int b = userService.addUser(user);
        if (b==1){
            return new ModelAndView("login");
        }else {
           return new ModelAndView("500");
        }
    }

    //  用户登录
    @RequestMapping("login")
    public ModelAndView login(HttpServletRequest request){
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        System.out.println("请求登陆的信息为："+email+" "+password);
        User user = userService.login(email,password);
        if(user==null || (user.getId()==0)){
            return new ModelAndView("login");  //  登录失败
        }else{
            //  说明查询到了结果，即登录成功
            request.getSession().setAttribute("loginUser",user);
            return new ModelAndView("index");
        }
    }
}
