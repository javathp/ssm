package com.zking.ssm.mapper;

import com.zking.ssm.model.Type;

import java.util.List;

public interface TypeMapper {
    int deleteByPrimaryKey(Integer tId);

    int insert(Type record);

    int insertSelective(Type record);

    Type selectByPrimaryKey(Integer tId);

    int updateByPrimaryKeySelective(Type record);

    int updateByPrimaryKey(Type record);

    List<Type> list(Type type);

    List<Type> checkName(Type type);
}