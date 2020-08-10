package com.cncs.dao;

import com.cncs.domain.HealthRecord;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface IHealthRecordDao {

    @Insert("insert into t_health_record (register_id,present_illness,previous_history,allergy_history,exposure_history,family_history,genetics_history,disability_status,create_date,record_doctor)" +
            " values(#{register_id},#{present_illness},#{previous_history},#{allergy_history},#{exposure_history},#{family_history},#{genetics_history},#{disability_status},#{create_date},#{record_doctor})")
    void insertOne(HealthRecord healthRecord);

    @Select("select * from t_health_record where register_id = #{rgId}")
    HealthRecord findHealthRecordByRgId(int rgId);

    @Update("update t_health_record set present_illness = #{present_illness}, previous_history = #{previous_history}," +
            " allergy_history = #{allergy_history}, exposure_history = #{exposure_history}, family_history = #{family_history}," +
            " genetics_history = #{genetics_history}, disability_status = #{disability_status}, create_date = #{create_date}," +
            " record_doctor = #{record_doctor} where  register_id  = #{ register_id}")
    void update(HealthRecord healthRecord);

    @Select("select * from t_health_record")
    List<HealthRecord> findAll();

    @Select("select * from t_health_record where previous_history like '%${value}%';")
    List<HealthRecord> findByLike(String like);
}

//#{register_id},#{present_illness},#{previous_history},#{allergy_history},#{exposure_history},#{family_history},#{genetics_history},#{disability_status},#{create_date},#{record_doctor},

//set present_illness = #{present_illness}, previous_history = #{previous_history}, allergy_history = #{allergy_history}, exposure_history = #{exposure_history}, family_history = #{family_history}, genetics_history = #{genetics_history}, disability_status = #{disability_status}, create_date = #{create_date}, record_doctor = #{record_doctor} where  register_id  = #{ register_id}
