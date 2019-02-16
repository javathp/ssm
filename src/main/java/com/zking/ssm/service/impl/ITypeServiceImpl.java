package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.TypeMapper;
import com.zking.ssm.model.Type;
import com.zking.ssm.service.ITypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class ITypeServiceImpl implements ITypeService {
    @Autowired
    private TypeMapper typeMapper;
    @Override
    public int add(Type type) {
        return typeMapper.insert(type);
    }

    @Override
    public List<Type> list(Type type) {
        return typeMapper.list(type);
    }

    @Override
    public int del(Type type) {
        return typeMapper.deleteByPrimaryKey(type.gettId());
    }

    @Override
    public int update(Type type) {
        return typeMapper.updateByPrimaryKeySelective(type);
    }

    @Override
    public Type load(Type type) {
        return typeMapper.selectByPrimaryKey(type.gettId());
    }

    @Override
    public List<Type> checkName(Type type) {
        return typeMapper.checkName(type);
    }
}
