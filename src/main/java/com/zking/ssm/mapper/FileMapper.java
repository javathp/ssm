package com.zking.ssm.mapper;

import com.zking.ssm.model.File;

public interface FileMapper {
    int deleteByPrimaryKey(Integer fId);

    int insert(File record);

    int insertSelective(File record);

    File selectByPrimaryKey(Integer fId);

    int updateByPrimaryKeySelective(File record);

    int updateByPrimaryKey(File record);
}