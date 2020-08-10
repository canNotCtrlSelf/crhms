package com.cncs.dao;

import com.cncs.domain.MedicalReport;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 体检报告持久层接口
 */
public interface IMedicalReportDao {

    /**
     * 插入一条体检报告数据
     * @param medicalReport
     */
    @Insert("insert into t_medical_report (register_id,examdate,picpath) values(#{register_id},#{examdate},#{picpath})")
    void insertOne(MedicalReport medicalReport);

    /**
     * 根据register_id
     * @param rgId
     * @return
     */
    @Select("select * from t_medical_report where register_id = #{rgId}")
    List<MedicalReport> findMedicalReportByRgId(int rgId);
}
/*

register_id,examdate,picpath
#{register_id},#{examdate},#{picpath}*/
