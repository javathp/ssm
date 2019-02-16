package com.zking.ssm.model;

public class Type {
    private Integer tId;

    private String tName;

    private Integer tSpace;

    private String tBak;

    public Type(Integer tId, String tName, Integer tSpace, String tBak) {
        this.tId = tId;
        this.tName = tName;
        this.tSpace = tSpace;
        this.tBak = tBak;
    }

    public Type() {
        super();
    }

    public Integer gettId() {
        return tId;
    }

    public void settId(Integer tId) {
        this.tId = tId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    public Integer gettSpace() {
        return tSpace;
    }

    public void settSpace(Integer tSpace) {
        this.tSpace = tSpace;
    }

    public String gettBak() {
        return tBak;
    }

    public void settBak(String tBak) {
        this.tBak = tBak;
    }
}