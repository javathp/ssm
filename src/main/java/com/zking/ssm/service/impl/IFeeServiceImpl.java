package com.zking.ssm.service.impl;

import com.zking.ssm.mapper.FeeMapper;
import com.zking.ssm.model.Fee;
import com.zking.ssm.service.IFeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class IFeeServiceImpl implements IFeeService {

    @Autowired
    private FeeMapper feeMapper;
    @Override
    public int addFee(Fee fee) {
        return feeMapper.insert(fee);
    }
}
