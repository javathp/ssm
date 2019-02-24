package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.FMapper;
import com.zking.ssm.model.F;
import com.zking.ssm.service.IFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class FileImpl implements IFile {

    @Autowired
    private FMapper fMapper;
    @Override
    public List<F> listF() {
        return fMapper.listF();
    }
}
