package com.zking.ssm.service;

import com.zking.ssm.model.House;

import java.util.List;

public interface IHouseService {

    int add(House house);

    List<House> list(House house);

    int del(House house);

    int update(House house);

    House load(House house);

    List<House> checkName(House house);
}
