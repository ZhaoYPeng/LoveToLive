package com.groupsix.service;

import com.groupsix.dao.AdvertiseMapper;
import com.groupsix.dao.ResumeMapper;
import com.groupsix.pojo.Advertise;
import com.groupsix.pojo.AdvertiseExample;
import com.groupsix.pojo.Resume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class AdvertiseServiceImpl implements AdvertiseService {

    @Autowired
    private AdvertiseMapper advertiseMapper;
    @Autowired
    private ResumeMapper resumeMapper;
    //查询所有招聘信息
    @Override
    public List<Advertise> selectAllMsg() {
        AdvertiseExample advertiseExample=new AdvertiseExample();
       List<Advertise> advertises = advertiseMapper.selectByExample(advertiseExample);
        return advertises;
    }
    //根据id查询招聘信息
    @Override
    public Advertise selectById(String id) {
        return advertiseMapper.selectByPrimaryKey(id);
    }
    //向数据库中插入简历
    @Override
    public void addResume(Resume resume) {
        resumeMapper.insert(resume);
    }
}
