package com.zking.ssm.service;

import com.zking.ssm.model.Building;

import java.util.List;

public interface IBuildingService {

    int add(Building building);

    List<Building> list(Building building);

    int del(Building building);

    int update(Building building);

    Building load(Building building);

    List<Building> checkName(Building building);
}
