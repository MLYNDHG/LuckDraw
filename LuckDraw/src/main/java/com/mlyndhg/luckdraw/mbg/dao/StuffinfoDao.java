package com.mlyndhg.luckdraw.mbg.dao;

import com.mlyndhg.luckdraw.mbg.model.Stuffinfo;

public interface StuffinfoDao {
    int deleteByPrimaryKey(Integer sid);

    int insert(Stuffinfo record);

    int insertSelective(Stuffinfo record);

    Stuffinfo selectByPrimaryKey(Integer sid);

    int updateByPrimaryKeySelective(Stuffinfo record);

    int updateByPrimaryKey(Stuffinfo record);
}