package com.zking.ssm.service;

import com.zking.ssm.model.Owenr;
import com.zking.ssm.util.PageBean;
import com.zking.ssm.vo.OwenrVo;

import java.util.List;

public interface IOwenrService {

      int add(Owenr owenr);

      List<OwenrVo> list(OwenrVo owenrVo, PageBean pageBean);

      int updateState(Owenr owenr);
}
