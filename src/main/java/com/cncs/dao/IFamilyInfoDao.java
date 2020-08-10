package com.cncs.dao;

import com.cncs.domain.FamilyInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface IFamilyInfoDao {

    @Insert("insert into t_family_info (register_id,truename,gender,family_relationship,birthdate,work_unit,profession)" +
            " values(#{register_id},#{truename},#{gender},#{family_relationship},#{birthdate},#{work_unit},#{profession})")
    void insertOne(FamilyInfo familyInfo);

    /**
     * 查询所有家属信息
     *
     * @param rgId
     * @return
     */
    @Select("select * from t_family_info where register_id = #{rgId}")
    List<FamilyInfo> findFamlilyInfoByRgId(int rgId);

    /**
     * 根据id更新家庭信息
     *
     * @param familyInfo
     */
    @Update("update t_family_info set truename=#{truename},gender=#{gender},family_relationship=#{family_relationship}," +
            "birthdate=#{birthdate},work_unit=#{work_unit},profession=#{profession} where id=#{id}")
    void updateFamilyInfoById(FamilyInfo familyInfo);
}
//#{register_id},#{truename},#{gender},#{family_relationship},#{birthdate},#{work_unit},#{profession},