package com.mlyndhg.luckdraw.mbg.dao;

import com.mlyndhg.luckdraw.mbg.model.Userinfo;
import org.springframework.stereotype.Repository;

@Repository
public interface UserinfoDao {
    int deleteByPrimaryKey(Integer uid);

    int insert(Userinfo record);

    int insertSelective(Userinfo record);

    Userinfo selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(Userinfo record);

    int updateByPrimaryKey(Userinfo record);
}