package com.groupsix.service;

import com.groupsix.pojo.Advertise;
import com.groupsix.pojo.Resume;

import java.util.List;

public interface AdvertiseService {
    //查询所有招聘信息
    List<Advertise> selectAllMsg();
    //根据id查询招聘信息
    Advertise selectById( String id);
    //向数据库中插入简历
    void addResume(Resume resume);
}
