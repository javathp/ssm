package com.zking.ssm.model;

public class File {
    private Integer fId;

    private String oId;

    private String fName;

    private String fType;

    private String fTime;

    private String fBak;

    private String fUrl;

    public File(Integer fId, String oId, String fName, String fType, String fTime, String fBak, String fUrl) {
        this.fId = fId;
        this.oId = oId;
        this.fName = fName;
        this.fType = fType;
        this.fTime = fTime;
        this.fBak = fBak;
        this.fUrl = fUrl;
    }

    public File() {
        super();
    }

    public Integer getfId() {
        return fId;
    }

    public void setfId(Integer fId) {
        this.fId = fId;
    }

    public String getoId() {
        return oId;
    }

    public void setoId(String oId) {
        this.oId = oId;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getfType() {
        return fType;
    }

    public void setfType(String fType) {
        this.fType = fType;
    }

    public String getfTime() {
        return fTime;
    }

    public void setfTime(String fTime) {
        this.fTime = fTime;
    }

    public String getfBak() {
        return fBak;
    }

    public void setfBak(String fBak) {
        this.fBak = fBak;
    }

    public String getfUrl() {
        return fUrl;
    }

    public void setfUrl(String fUrl) {
        this.fUrl = fUrl;
    }
}