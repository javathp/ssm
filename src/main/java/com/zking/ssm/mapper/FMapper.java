package com.zking.ssm.mapper;

import com.zking.ssm.model.F;

import java.util.List;

public interface FMapper {
    int deleteByPrimaryKey(Integer fileid);

    int insert(F record);

    int insertSelective(F record);

    F selectByPrimaryKey(Integer fileid);

    int updateByPrimaryKeySelective(F record);

    int updateByPrimaryKey(F record);

    List<F> listF();
}