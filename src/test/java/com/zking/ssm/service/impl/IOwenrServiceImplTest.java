package com.zking.ssm.service.impl;

import com.zking.ssm.service.IOwenrService;
import com.zking.ssm.util.PageBean;
import com.zking.ssm.vo.OwenrVo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class IOwenrServiceImplTest extends BaseTestCase {

    @Autowired
    private IOwenrService owenrService;

    private OwenrVo owenrVo;

    @Override
    public void setUp() throws Exception {
        super.setUp();
        owenrVo=new OwenrVo();
    }

    @Test
    public void list() {
        PageBean pageBean=new PageBean();
        List<OwenrVo> list=owenrService.list(owenrVo,pageBean);
        for (OwenrVo o: list) {
            System.out.println(o);
        }
    }
}