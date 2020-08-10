package com.cncs.service;

import com.cncs.domain.CommunityAdmin;
import com.cncs.domain.UserRegister;

import java.util.List;

/**
 * 用户注册业务层接口
 */
public interface IUserRegiserService {

    /**
     * 插入一条userRegister
     * @param userRegister
     */
    void insertOne(UserRegister userRegister);

    /**
     * 向数据库插入userRegister
     *
     * @param userRegister
     */
    UserRegister signupRegister(UserRegister userRegister);

    /**
     * 查询手机号码相同的注册用户
     *
     * @param
     * @return
     */
    boolean findUserRegisterExistByPhoneNumber(String phone_number);

    /**
     * 判断登录账户密码是否存在
     *
     * @param username
     * @param password
     * @return
     */
    List<UserRegister> login(String username, String password ,int role_id);

    /**
     * 修改密码
     *
     * @param userRegister
     */
    void changePwd(UserRegister userRegister);

    /**
     * 通过手机号查找注册用户的id
     *
     * @param phone_number
     * @return
     */
    int findIdByPhoneNumber(String phone_number);

    /**
     * 更新admin
     * @param userRegister
     */
    void updateAdmin(UserRegister userRegister);


    List<UserRegister> findAllCommunityAdmin();

    /**
     * 更新社区管理员
     * @param newUserRegister
     */
    void updateCommunityAdmin(UserRegister newUserRegister);

    /**
     * 插入社区管理员
     * @param userRegister
     */
    void insertCommunityAdmin(UserRegister userRegister);

    /**
     * 删除CommunityAdmin
     * @param id
     */
    void deleteCommunityAdmin(int id);

    UserRegister getAndupdateCommunityAdmin(UserRegister newUserRegister);


    /**
     * 查询原来密码和新密码是否相同，密码是否为空
     * @param
     * @return
     */
    boolean isPasswordEqual(String password, int rId);
}
