package com.cncs.dao;

import com.cncs.domain.HealthManager;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

/**
 * 健康管理师实体类
 */
public interface IHealthManagerDao {
    /**
     * 插入一条健康管理师信息
     *
     * @param healthManager
     */
    @Insert("insert into t_health_manager (register_id,truename,gender,age,address," +
            "certification_level,professional_history,educational_experience,personal_profile,expert_in) " +
            "values(#{register_id},#{truename},#{gender},#{age},#{address},#{certification_level},#{professional_history}," +
            "#{educational_experience},#{personal_profile},#{expert_in})")
    void insertOne(HealthManager healthManager);

    /**
     * 根据rgId查询
     *
     * @param rgId
     * @return
     */
    @Select("select * from t_health_manager where register_id = #{rgId}")
    HealthManager findHealthManagerByRgId(int rgId);

    /**
     * 更新健康管理师信息
     *
     * @param healthManager
     */
    @Update("update t_health_manager set truename = #{truename},gender = #{gender}," +
            "age = #{age},address = #{address},certification_level = #{certification_level}," +
            "professional_history = #{professional_history},educational_experience = #{educational_experience}," +
            "personal_profile = #{personal_profile},expert_in = #{expert_in} where register_id=#{register_id}")
    void updateHealthManger(HealthManager healthManager);
}





//register_id,truename,gender,age,address,certification_level,professional_history,educational_experience,personal_profile,expert_in
/*register_id
truename
gender
age
address
certification_level
professional_history
educational_experience
personal_profile
expert_in*/
