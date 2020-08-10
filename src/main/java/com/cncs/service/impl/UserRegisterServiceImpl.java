package com.cncs.service.impl;

import com.cncs.dao.IUserRegisterDao;
import com.cncs.domain.CommunityAdmin;
import com.cncs.domain.UserRegister;
import com.cncs.service.IUserRegiserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 用户注册业务层实现类
 */
@Service
public class UserRegisterServiceImpl implements IUserRegiserService {

    @Autowired
    private IUserRegisterDao userRegisterDao;

    /**
     * 插入一条
     * @param userRegister
     */
    @Override
    public void insertOne(UserRegister userRegister) {
        userRegisterDao.insertOne(userRegister);
    }

    @Override
    public UserRegister signupRegister(UserRegister userRegister) {
        //注册成功后，根据phone_number查询出账户
        userRegisterDao.insertUserRegister(userRegister);
        //查询账户
        UserRegister newUserRegister = userRegisterDao.findUserRegisterByPhoneNumber(userRegister.getPhone_number());
        return newUserRegister;
    }

    /**
     * 查询账户是否存在
     *
     * @param phone_number
     * @return
     */
    @Override
    public boolean findUserRegisterExistByPhoneNumber(String phone_number) {
        boolean isExist = false;
        if (userRegisterDao.findUserRegisterCountByPhoneNumber(phone_number) > 0) {
            isExist = true;
        }
        return isExist;
    }

    /**
     * 通过手机号查找注册用户的id
     *
     * @param phone_number
     * @return
     */
    @Override
    public int findIdByPhoneNumber(String phone_number) {
        return userRegisterDao.findIdByPhoneNumber(phone_number);
    }

    /**
     * 更新admin账户
     * @param userRegister
     */
    @Override
    public void updateAdmin(UserRegister userRegister) {
        userRegisterDao.updateCommunityAdminById(userRegister);
    }

    @Override
    public List<UserRegister> findAllCommunityAdmin() {
        return userRegisterDao.findAllCommunityAdmin();
    }

    /**
     * 更新社区管理员
     * @param newUserRegister
     */
    @Override
    public void updateCommunityAdmin(UserRegister newUserRegister) {
        userRegisterDao.updateCommunityAdminById(newUserRegister);
    }

    /**
     * 插入社区管理员
     * @param userRegister
     */
    @Override
    public void insertCommunityAdmin(UserRegister userRegister) {
        userRegisterDao.insertCommunityAdmin(userRegister);
    }

    /**
     * 删除CommunityAdmin
     * @param id
     */
    @Override
    public void deleteCommunityAdmin(int id) {
        userRegisterDao.delelteCommunityAdminById(id);
    }

    /**
     * 更新同时获取userRegister
     * @param newUserRegister
     * @return
     */
    @Override
    public UserRegister getAndupdateCommunityAdmin(UserRegister newUserRegister) {
        userRegisterDao.updateCommunityAdminById(newUserRegister);
        UserRegister userRegister = userRegisterDao.findUserRegisterById(newUserRegister.getId());
        return userRegister;
    }

    @Override
    public boolean isPasswordEqual(String password, int rId) {
        if(password.equals("")){
            return false;
        }
        String oldPassword  = userRegisterDao.findEqualPassword(rId);
        if(oldPassword.equals(password)){
            return false;
        }
        return true;
    }


    @Override
    public List<UserRegister> login(String username, String password,int role_id) {
        return userRegisterDao.findUserRegisterByNameAndPwdAndRoleId(username, password,role_id);
    }

    @Override
    public void changePwd(UserRegister userRegister) {
        userRegisterDao.updateUserRegisterByPwd(userRegister);
    }
}
