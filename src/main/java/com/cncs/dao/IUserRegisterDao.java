package com.cncs.dao;

import com.cncs.domain.CommunityAdmin;
import com.cncs.domain.UserRegister;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * 用户注册持久层接口
 */
public interface IUserRegisterDao {

    @Insert("INSERT INTO `t_user_register` (username,role_id,phone_number,`password`) values(#{username},#{role_id},#{phone_number},#{password});")
    void insertUserRegister(UserRegister userRegister);

    /**
     * 查询手机号码是否有重复
     *
     * @param phone_number
     * @return
     */
    @Select("select count(*) from `t_user_register` where phone_number=#{phone_number}")
    int findUserRegisterCountByPhoneNumber(String phone_number);

    /**
     * 根据手机号码查询账户
     *
     * @param phone_number
     * @return
     */
    @Select("select * from `t_user_register` where phone_number=#{phone_number}")
    UserRegister findUserRegisterByPhoneNumber(String phone_number);

    /**
     * 查找账户密码都正确的用户
     *
     * @param
     * @return
     */
    @Select("select * from `t_user_register` where username = #{username} and `password` = #{password} and role_id = #{role_id}")
    List<UserRegister> findUserRegisterByNameAndPwdAndRoleId(@Param("username") String username, @Param("password") String password,@Param("role_id") int role_id);



    @Update("update t_user_register set password = #{password} where id = #{id}")
    void updateUserRegisterByPwd(UserRegister userRegister);

    /**
     * 通过手机号查找注册用户的id
     *
     * @param phone_number
     * @return
     */
    @Select("select id from t_user_register where phone_number=#{phone_number}")
    int findIdByPhoneNumber(String phone_number);

    /**
     * 更新admin
     */
    @Update("update t_user_register set username=#{username},password = #{password} where id = #{id}")
    void updateAdminById(UserRegister userRegister);


    /**
     * 更新adminCommunity
     */
    @Update("update t_user_register set username=#{username},password = #{password},community_name = #{community_name} where id = #{id}")
    void updateCommunityAdminById(UserRegister userRegister);

    /**
     * 查询所有CommunityAdmin
     * @return
     */
    @Select("select * from t_user_register where role_id=4;")
    List<UserRegister> findAllCommunityAdmin();

    /**
     * 插入一条
     * @param userRegister
     */
    @Insert("INSERT INTO `t_user_register` (username,role_id,`password`) values(#{username},#{role_id},#{password});")
    void insertOne(UserRegister userRegister);

    /**
     * 插入社区管理员
     * @param userRegister
     */
    @Insert("insert into `t_user_register` (username,role_id,`password`,community_name) values(#{username},#{role_id},#{password},#{community_name});")
    void insertCommunityAdmin(UserRegister userRegister);

    /**
     * 删除CommunityAdmin
     * @param id
     */
    @Delete("delete from t_user_register where id = #{id}")
    void delelteCommunityAdminById(int id);

    @Select("select * from t_user_register where id=#{id};")
    UserRegister findUserRegisterById(int id);

    @Select("select password from t_user_register where id=#{rid};")
    String findEqualPassword(int rId);
}
