package com.zking.ssm.mapper;

import com.zking.ssm.model.Building;

import java.util.List;

public interface BuildingMapper {
    int deleteByPrimaryKey(Integer bId);

    int insert(Building record);

    int insertSelective(Building record);

    Building selectByPrimaryKey(Integer bId);

    int updateByPrimaryKeySelective(Building record);

    int updateByPrimaryKey(Building record);

    List<Building> list(Building building);

    List<Building> checkName(Building building);

}