package com.cncs.service;

import com.cncs.domain.ResidentInfo;

import java.util.List;

/**
 * 居民信息业务层接口
 */
public interface IResidentInfoService {

    ResidentInfo findResidentInfoByRgId(int rgId);

    void signupResidentInfo(ResidentInfo residentInfo);

    void update(ResidentInfo residentInfo);

    /**
     * 查询所有居民
     * @return
     */
    List<ResidentInfo> findAll();

    /**
     * 根据姓名查询
     * @param truename
     * @return
     */
    List<ResidentInfo> findByTruename(String truename);

    /**
     * 根据名字模糊查询
     * @param like
     * @return
     */
    List<ResidentInfo> findByLike(String like);

    /**
     * 根据性别查询
     * @param gender
     * @return
     */
    List<ResidentInfo> findByGender(String gender);

    /**
     * 根据日期范围查询
     * @param datetime1
     * @param datetime2
     * @return
     */
    List<ResidentInfo> findBydateScope(String datetime1, String datetime2);
}
