package com.zking.ssm.model;

public class Building {
    private Integer bId;

    private String bName;

    private String bBak;

    public Building(Integer bId, String bName, String bBak) {
        this.bId = bId;
        this.bName = bName;
        this.bBak = bBak;
    }

    public Building() {
        super();
    }

    public Integer getbId() {
        return bId;
    }

    public void setbId(Integer bId) {
        this.bId = bId;
    }

    public String getbName() {
        return bName;
    }

    public void setbName(String bName) {
        this.bName = bName;
    }

    public String getbBak() {
        return bBak;
    }

    public void setbBak(String bBak) {
        this.bBak = bBak;
    }
}