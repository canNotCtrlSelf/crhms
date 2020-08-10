package com.cncs.dao;

import com.cncs.domain.ResidentInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * 居民信息持久层接口
 */
public interface IResidentInfoDao {

    /**
     * 查询所有居民
     * @return
     */
    @Select("select * from t_resident_info;")
    List<ResidentInfo> findAll();

    /**
     * 根据查找id查找
     *
     * @return
     */
    @Select("select * from t_resident_info where register_id = #{register_id};")
    ResidentInfo findResidentInfoByRgId(int RgId);

    /**
     * 向数据库插入一条居民信息
     *
     * @param residentInfo
     */
    @Insert("insert into t_resident_info (register_id,truename,gender,birthdate,nationality,address,id_card,hometown,phone_number,work_unit,education,martial_status,remarks)" +
            "values(#{register_id},#{truename},#{gender},#{birthdate},#{nationality},#{address},#{id_card},#{hometown},#{phone_number},#{work_unit},#{education},#{martial_status},#{remarks})")
    void insertResidentInfo(ResidentInfo residentInfo);

    /**
     * 通过Register_id更新
     *
     * @param residentInfo
     */
    @Update("update t_resident_info set truename =#{truename}, gender =#{gender}," +
            " birthdate =#{birthdate}, nationality =#{nationality}," +
            " address =#{address}, id_card =#{id_card}, hometown =#{hometown}," +
            " phone_number =#{phone_number}, work_unit =#{work_unit}," +
            " education =#{education}, martial_status =#{martial_status}," +
            " remarks =#{remarks} where register_id =#{register_id}")
    void updateResidentInfo(ResidentInfo residentInfo);

    /**
     * 根据姓名查询
     * @param truename
     * @return
     */
    @Select("select * from t_resident_info where truename = #{truename};")
    List<ResidentInfo> findByTruename(String truename);

    /**
     * findByLike
     * @param likestr
     * @return
     */
    @Select("select * from t_resident_info where truename like '%${value}%';")
    List<ResidentInfo> findByLike(String likestr);

    /**
     * 根据性别查询
     * @param gender
     * @return
     */
    @Select("select * from t_resident_info where gender = #{gender};")
    List<ResidentInfo> findByGender(String gender);

    /**
     * 根据日期范围查询
     * @param datetime1
     * @param datetime2
     * @return
     */
    @Select("select * from t_resident_info where birthdate between #{datetime1} and #{datetime2} order by birthdate asc;")
    List<ResidentInfo> findBydateScope(@Param("datetime1") String datetime1,@Param("datetime2") String datetime2);
}





