package com.zking.ssm.mapper;

import com.zking.ssm.model.House;

import java.util.List;

public interface HouseMapper {
    int deleteByPrimaryKey(Integer hId);

    int insert(House record);

    int insertSelective(House record);

    House selectByPrimaryKey(Integer hId);

    int updateByPrimaryKeySelective(House record);

    int updateByPrimaryKey(House record);

    List<House> list(House house);

    List<House> checkName(House house);
}