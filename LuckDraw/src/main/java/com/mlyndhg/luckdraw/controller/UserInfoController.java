package com.mlyndhg.luckdraw.controller;

import com.mlyndhg.luckdraw.mbg.model.Userinfo;
import com.mlyndhg.luckdraw.service.UserInfoService;
import com.mlyndhg.luckdraw.util.JWTUtils;
import com.mlyndhg.luckdraw.util.JsonUtil;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@RestController
public class UserInfoController {
    @Resource
    private UserInfoService userInfoService;

    @GetMapping("/getUserInfoById")
    public Userinfo getUserInfoById( @RequestParam int uid){
        return userInfoService.selectByPrimaryKey(uid);
    }
    @GetMapping("/login")
    public String login(@RequestParam String username,@RequestParam String password) {
        if (username.equals("123") && password.equals("123")) {
            Userinfo u = new Userinfo();
            u.setPassword(password);
            u.setAdmin(username);
            return JWTUtils.getToken(u);
        }
        return "登录失败！账号或者密码不对！";
    }

}
