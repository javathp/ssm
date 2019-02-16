package com.zking.ssm.service;

import com.zking.ssm.model.Type;

import java.util.List;

public interface ITypeService {

    int add(Type type);

    List<Type> list(Type type);

    int del(Type type);

    int update(Type type);

    Type load(Type type);

    List<Type> checkName(Type type);
}
