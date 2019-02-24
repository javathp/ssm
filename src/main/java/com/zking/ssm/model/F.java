package com.zking.ssm.model;

public class F {
    private Integer fileid;

    private String filename;

    private Integer filenum;

    public F(Integer fileid, String filename, Integer filenum) {
        this.fileid = fileid;
        this.filename = filename;
        this.filenum = filenum;
    }

    public F(String filename, Integer filenum) {
        this.filename = filename;
        this.filenum = filenum;
    }

    public F() {
        super();
    }

    public Integer getFileid() {
        return fileid;
    }

    public void setFileid(Integer fileid) {
        this.fileid = fileid;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public Integer getFilenum() {
        return filenum;
    }

    public void setFilenum(Integer filenum) {
        this.filenum = filenum;
    }
}