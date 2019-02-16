package com.zking.ssm.model;

public class Fee {
    private Integer feeId;

    private String oId;

    private Integer cId;

    private Float feeArrearage;

    private Float feeOverdue;

    private String feeWay;

    private String feeTime;

    private String feeReceipt;

    private String feeBak;

    private Integer feeState;

    public Fee(Integer feeId, String oId, Integer cId, Float feeArrearage, Float feeOverdue, String feeWay, String feeTime, String feeReceipt, String feeBak, Integer feeState) {
        this.feeId = feeId;
        this.oId = oId;
        this.cId = cId;
        this.feeArrearage = feeArrearage;
        this.feeOverdue = feeOverdue;
        this.feeWay = feeWay;
        this.feeTime = feeTime;
        this.feeReceipt = feeReceipt;
        this.feeBak = feeBak;
        this.feeState = feeState;
    }

    public Fee() {
        super();
    }

    public Integer getFeeId() {
        return feeId;
    }

    public void setFeeId(Integer feeId) {
        this.feeId = feeId;
    }

    public String getoId() {
        return oId;
    }

    public void setoId(String oId) {
        this.oId = oId;
    }

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Float getFeeArrearage() {
        return feeArrearage;
    }

    public void setFeeArrearage(Float feeArrearage) {
        this.feeArrearage = feeArrearage;
    }

    public Float getFeeOverdue() {
        return feeOverdue;
    }

    public void setFeeOverdue(Float feeOverdue) {
        this.feeOverdue = feeOverdue;
    }

    public String getFeeWay() {
        return feeWay;
    }

    public void setFeeWay(String feeWay) {
        this.feeWay = feeWay;
    }

    public String getFeeTime() {
        return feeTime;
    }

    public void setFeeTime(String feeTime) {
        this.feeTime = feeTime;
    }

    public String getFeeReceipt() {
        return feeReceipt;
    }

    public void setFeeReceipt(String feeReceipt) {
        this.feeReceipt = feeReceipt;
    }

    public String getFeeBak() {
        return feeBak;
    }

    public void setFeeBak(String feeBak) {
        this.feeBak = feeBak;
    }

    public Integer getFeeState() {
        return feeState;
    }

    public void setFeeState(Integer feeState) {
        this.feeState = feeState;
    }
}