package com.mlyndhg.luckdraw.service;

import com.github.pagehelper.PageHelper;
import com.mlyndhg.luckdraw.mbg.dao.UserinfoDao;
import com.mlyndhg.luckdraw.mbg.model.Userinfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserInfoService {
    @Resource
    private UserinfoDao userinfoDao;

    public Userinfo selectByPrimaryKey(int uid){
//        PageHelper.startPage(1, 1);
        return userinfoDao.selectByPrimaryKey(uid);
    }
}
