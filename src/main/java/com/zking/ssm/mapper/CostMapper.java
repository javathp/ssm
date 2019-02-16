package com.zking.ssm.mapper;

import com.zking.ssm.model.Cost;

import java.util.List;

public interface CostMapper {
    int deleteByPrimaryKey(Integer cId);

    int insert(Cost record);

    int insertSelective(Cost record);

    Cost selectByPrimaryKey(Integer cId);

    int updateByPrimaryKeySelective(Cost record);

    int updateByPrimaryKey(Cost record);

    List<Cost> list(Cost type);

    List<Cost> checkName(Cost type);
}