package com.cncs.dao;

import com.cncs.domain.HealthQuestionnaire;
import com.cncs.domain.MentalityQuestionnaire;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 健康问卷持久层接口
 */
public interface IMentalityQuestionnaireDao {

    @Select("select * from t_mentality_questionnaire")
    List<MentalityQuestionnaire> findAll();
}
