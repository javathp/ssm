package com.zking.ssm.model;

public class Cost {
    private Integer cId;

    private String cName;

    private Float cStandard;

    private String cBak;

    public Cost(Integer cId, String cName, Float cStandard, String cBak) {
        this.cId = cId;
        this.cName = cName;
        this.cStandard = cStandard;
        this.cBak = cBak;
    }

    public Cost() {
        super();
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public Float getcStandard() {
        return cStandard;
    }

    public void setcStandard(Float cStandard) {
        this.cStandard = cStandard;
    }

    public String getcBak() {
        return cBak;
    }

    public void setcBak(String cBak) {
        this.cBak = cBak;
    }
}