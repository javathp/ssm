package com.zking.ssm.model;

public class Owenr {
    private String oId;

    private String oName;

    private String oTel;

    private Integer fId;

    private String oRoom;

    private Integer hId;

    private Integer tId;

    private Integer cId;

    private Integer oState;

    private String oBak;

    public Owenr(String oId, String oName, String oTel, Integer fId, String oRoom, Integer hId, Integer tId, Integer cId, Integer oState, String oBak) {
        this.oId = oId;
        this.oName = oName;
        this.oTel = oTel;
        this.fId = fId;
        this.oRoom = oRoom;
        this.hId = hId;
        this.tId = tId;
        this.cId = cId;
        this.oState = oState;
        this.oBak = oBak;
    }

    public Owenr() {
        super();
    }

    public String getoId() {
        return oId;
    }

    public void setoId(String oId) {
        this.oId = oId;
    }

    public String getoName() {
        return oName;
    }

    public void setoName(String oName) {
        this.oName = oName;
    }

    public String getoTel() {
        return oTel;
    }

    public void setoTel(String oTel) {
        this.oTel = oTel;
    }

    public Integer getfId() {
        return fId;
    }

    public void setfId(Integer fId) {
        this.fId = fId;
    }

    public String getoRoom() {
        return oRoom;
    }

    public void setoRoom(String oRoom) {
        this.oRoom = oRoom;
    }

    public Integer gethId() {
        return hId;
    }

    public void sethId(Integer hId) {
        this.hId = hId;
    }

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Integer getoState() {
        return oState;
    }

    public void setoState(Integer oState) {
        this.oState = oState;
    }

    public String getoBak() {
        return oBak;
    }

    public void setoBak(String oBak) {
        this.oBak = oBak;
    }
}