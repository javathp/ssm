package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.CostMapper;
import com.zking.ssm.model.Cost;
import com.zking.ssm.service.ICostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class ICostServiceImpl implements ICostService {
    @Autowired
    private CostMapper costMapper;
    @Override
    public int add(Cost cost) {
        return costMapper.insert(cost);
    }

    @Override
    public List<Cost> list(Cost cost) {
        return costMapper.list(cost);
    }

    @Override
    public int del(Cost cost) {
        return costMapper.deleteByPrimaryKey(cost.getcId());
    }

    @Override
    public int update(Cost cost) {
        return costMapper.updateByPrimaryKeySelective(cost);
    }

    @Override
    public Cost load(Cost cost) {
        return costMapper.selectByPrimaryKey(cost.getcId());
    }

    @Override
    public List<Cost> checkName(Cost cost) {
        return costMapper.checkName(cost);
    }
}
