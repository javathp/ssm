package com.zking.ssm.service.impl;

import com.zking.ssm.model.File;
import com.zking.ssm.service.IFileService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.text.SimpleDateFormat;
import java.util.Date;

public class IFileServiceImplTest extends BaseTestCase {

    @Autowired
    private IFileService fileService;

    private File file;

    @Override
    public void setUp() throws Exception {
        super.setUp();
        file = new File();
    }

    @Test
    public void add() {
        file.setfName("44.gif");
        file.setoId("32323332");
        file.setfType("img");
        String url="F:\\test\\uploads\\"+file.getfName();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        file.setfTime(df.format(new Date()));
        file.setfUrl(url);
        fileService.add(file);
    }

    @Test
    public void load() throws Exception{
        /* 随便选两个时间 */
        String d1 = "2019-01-10 11:54:23";
        String d2 = "2019-01-10 0:54:23";
        Integer time=Integer.parseInt(d2.substring(0,4))+1;
        d2.substring(4);
        System.out.println(time.toString()+d2.substring(4));
        /* 先转成毫秒并求差 */
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        long m = sdf.parse(d2).getTime() - sdf.parse(d1).getTime();
//        System.out.println("相差天数:"+ ( m / (1000 * 60 * 60 * 24) ) );
    }
}