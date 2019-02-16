package com.zking.ssm.service;

import com.zking.ssm.model.Cost;

import java.util.List;

public interface ICostService {
    int add(Cost cost);

    List<Cost> list(Cost cost);

    int del(Cost cost);

    int update(Cost cost);

    Cost load(Cost cost);

    List<Cost> checkName(Cost cost);
}
