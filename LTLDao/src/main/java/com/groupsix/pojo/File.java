package com.groupsix.pojo;

import java.util.Date;

public class File {
    private String id;

    private String filename;

    private Integer dncount;

    private Float size;

    private Date releasedate;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public Integer getDncount() {
        return dncount;
    }

    public void setDncount(Integer dncount) {
        this.dncount = dncount;
    }

    public Float getSize() {
        return size;
    }

    public void setSize(Float size) {
        this.size = size;
    }

    public Date getReleasedate() {
        return releasedate;
    }

    public void setReleasedate(Date releasedate) {
        this.releasedate = releasedate;
    }
}