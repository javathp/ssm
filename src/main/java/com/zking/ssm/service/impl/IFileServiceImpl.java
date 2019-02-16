package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.FileMapper;
import com.zking.ssm.model.File;
import com.zking.ssm.service.IFileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class IFileServiceImpl implements IFileService {
    @Autowired
    private FileMapper fileMapper;
    @Override
    public void add(File file) {
        fileMapper.insert(file);
    }

    @Override
    public File load(File file) {
        return fileMapper.selectByPrimaryKey(file.getfId());
    }
}
