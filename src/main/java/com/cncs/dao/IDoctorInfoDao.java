package com.cncs.dao;

import com.cncs.domain.DoctorInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 * 医生信息持久层接口
 */
public interface IDoctorInfoDao {


    @Insert("insert into t_doctor_info (register_id,truename,gender,age,job_title,serving_hospital,personal_profile,expert_in)" +
            " values(#{register_id},#{truename},#{gender},#{age},#{job_title},#{serving_hospital},#{personal_profile},#{expert_in})")
    void insertOne(DoctorInfo doctorInfo);

    @Select("select * from t_doctor_info where register_id = #{rgId}")
    DoctorInfo findDoctorInfoByRgId(int rgId);

    /**
     * 根据register_id更新医生信息
     * @param doctorInfo
     */
    @Update("update t_doctor_info set truename = #{truename},gender = #{gender},age = #{age}," +
            "job_title = #{job_title},serving_hospital = #{serving_hospital}," +
            "personal_profile = #{personal_profile},expert_in = #{expert_in} where register_id = #{register_id}")
    void updateByRgId(DoctorInfo doctorInfo);
}



/*id
register_id
truename
gender
age
job_title
serving_hospital
personal_profile
expert_in*/

