package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.OwenrMapper;
import com.zking.ssm.model.Owenr;
import com.zking.ssm.service.IOwenrService;
import com.zking.ssm.util.PageBean;
import com.zking.ssm.vo.OwenrVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class IOwenrServiceImpl implements IOwenrService {

    @Autowired
    private OwenrMapper owenrMapper;
    @Override
    public int add(Owenr owenr) {
        return owenrMapper.insert(owenr);
    }

    @Override
    public List<OwenrVo> list(OwenrVo owenrVo, PageBean pageBean) {
        return owenrMapper.listOwenr(owenrVo);
    }

    @Override
    public int updateState(Owenr owenr) {
        return owenrMapper.updatestate(owenr);
    }
}
