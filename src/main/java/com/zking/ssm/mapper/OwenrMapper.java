package com.zking.ssm.mapper;

import com.zking.ssm.model.Owenr;
import com.zking.ssm.vo.OwenrVo;

import java.util.List;

public interface OwenrMapper {
    int deleteByPrimaryKey(String oId);

    int insert(Owenr record);

    int insertSelective(Owenr record);

    Owenr selectByPrimaryKey(String oId);

    int updateByPrimaryKeySelective(Owenr record);

    int updateByPrimaryKey(Owenr record);

    List<OwenrVo> listOwenr(OwenrVo owenrVo);

    int updatestate(Owenr owenr);
}