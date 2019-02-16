package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.BuildingMapper;
import com.zking.ssm.model.Building;
import com.zking.ssm.service.IBuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class IBuildingServiceImpl implements IBuildingService {

    @Autowired
    private BuildingMapper buildingMapper;
    @Override
    public int add(Building building) {
        return buildingMapper.insert(building);
    }

    @Transactional(readOnly = true)
    @Override
    public List<Building> list(Building building) {
        return buildingMapper.list(building);
    }

    @Override
    public int del(Building building) {
        return buildingMapper.deleteByPrimaryKey(building.getbId());
    }

    @Override
    public int update(Building building) {
        return buildingMapper.updateByPrimaryKeySelective(building);
    }

    @Override
    public Building load(Building building) {
        return buildingMapper.selectByPrimaryKey(building.getbId());
    }

    @Override
    public List<Building> checkName(Building building) {
        return buildingMapper.checkName(building);
    }
}
