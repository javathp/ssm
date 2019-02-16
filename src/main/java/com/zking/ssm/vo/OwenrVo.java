package com.zking.ssm.vo;

import com.zking.ssm.model.Owenr;
import lombok.ToString;

import java.text.SimpleDateFormat;
import java.util.Date;

@ToString
public class OwenrVo extends Owenr{

    private String oId;

    private String hName;

    private String oRoom;

    private String tName;

    private Float fMoney;

    private String oName;

    private String oTel;

    private String FeeTime;

    private long OutTime;

    @Override
    public String getoId() {
        return oId;
    }


    @Override
    public void setoId(String oId) {
        this.oId = oId;
    }

    public String gethName() {
        return hName;
    }

    public void sethName(String hName) {
        this.hName = hName;
    }

    @Override
    public String getoRoom() {
        return oRoom;
    }

    @Override
    public void setoRoom(String oRoom) {
        this.oRoom = oRoom;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    public Float getfMoney() {
        return fMoney;
    }

    public void setfMoney(Float fMoney) {
        this.fMoney = fMoney;
    }

    @Override
    public String getoName() {
        return oName;
    }

    @Override
    public void setoName(String oName) {
        this.oName = oName;
    }

    @Override
    public String getoTel() {
        return oTel;
    }

    @Override
    public void setoTel(String oTel) {
        this.oTel = oTel;
    }

    public String getFeeTime() {
        return FeeTime;
    }

    public void setFeeTime(String feeTime) {
        Integer time=Integer.parseInt(feeTime.substring(0,4))+1;
        FeeTime = time.toString()+feeTime.substring(4);
    }

    public long getOutTime() {
        return OutTime;
    }

    public void setOutTime(long outTime) throws Exception{
        outTime=0;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String newTime=sdf.format(new Date());
        long m = sdf.parse(newTime).getTime() - sdf.parse(getFeeTime()).getTime();
        if(m>0){
            outTime = m / (1000 * 60 * 60 * 24);
        }
        OutTime = outTime;
    }
}
