package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.HouseMapper;
import com.zking.ssm.model.House;
import com.zking.ssm.service.IHouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class IHouseServiceImpl implements IHouseService {
    @Autowired
    private HouseMapper houseMapper;
    @Override
    public int add(House house) {
        return houseMapper.insert(house);
    }

    @Transactional(readOnly = true)
    @Override
    public List<House> list(House house) {
        return houseMapper.list(house);
    }

    @Override
    public int del(House house) {
        return houseMapper.deleteByPrimaryKey(house.gethId());
    }

    @Override
    public int update(House house) {
        return houseMapper.updateByPrimaryKeySelective(house);
    }

    @Override
    public House load(House house) {
        return houseMapper.selectByPrimaryKey(house.gethId());
    }

    @Override
    public List<House>  checkName(House house) {
        return houseMapper.checkName(house);
    }

}
