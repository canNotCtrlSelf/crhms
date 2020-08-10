package com.cncs.service.impl;

import com.cncs.dao.IResidentInfoDao;
import com.cncs.domain.ResidentInfo;
import com.cncs.service.IResidentInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 居民信息业务层实现类
 */
@Service
public class ResidentInfoServiceImpl implements IResidentInfoService {

    @Autowired
    private IResidentInfoDao residentInfoDao;


    /**
     * 根据id查找居民信息
     * @param rgId
     * @return
     */
    @Override
    public ResidentInfo findResidentInfoByRgId(int rgId) {
        return residentInfoDao.findResidentInfoByRgId(rgId);
    }

    /**
     * 向数据库插入一条居民信息
     * @param residentInfo
     */
    @Override
    public void signupResidentInfo(ResidentInfo residentInfo) {
        residentInfoDao.insertResidentInfo(residentInfo);
    }

    @Override
    public void update(ResidentInfo residentInfo) {
        residentInfoDao.updateResidentInfo(residentInfo);
    }

    /**
     * 查询所有居民
     * @return
     */
    @Override
    public List<ResidentInfo> findAll() {
        return residentInfoDao.findAll();
    }

    /**
     * 根据姓名查询
     * @param truename
     * @return
     */
    @Override
    public List<ResidentInfo> findByTruename(String truename) {
        return residentInfoDao.findByTruename(truename);
    }

    /**
     * 根据名字模糊查询
     * @param like
     * @return
     */
    @Override
    public List<ResidentInfo> findByLike(String like) {
        return residentInfoDao.findByLike(like);
    }

    /**
     * 根据性别查询
     * @param gender
     * @return
     */
    @Override
    public List<ResidentInfo> findByGender(String gender) {
        return residentInfoDao.findByGender(gender);
    }

    /**
     * 根据日期范围查询
     * @param datetime1
     * @param datetime2
     * @return
     */
    @Override
    public List<ResidentInfo> findBydateScope(String datetime1, String datetime2) {
        return residentInfoDao.findBydateScope(datetime1,datetime2);
    }
}
