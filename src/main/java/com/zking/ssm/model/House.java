package com.zking.ssm.model;

import lombok.ToString;

@ToString
public class House {
    private Integer hId;

    private String hName;

    private String hBak;

    public House(Integer hId, String hName, String hBak) {
        this.hId = hId;
        this.hName = hName;
        this.hBak = hBak;
    }

    public House() {
        super();
    }

    public Integer gethId() {
        return hId;
    }

    public void sethId(Integer hId) {
        this.hId = hId;
    }

    public String gethName() {
        return hName;
    }

    public void sethName(String hName) {
        this.hName = hName;
    }

    public String gethBak() {
        return hBak;
    }

    public void sethBak(String hBak) {
        this.hBak = hBak;
    }
}