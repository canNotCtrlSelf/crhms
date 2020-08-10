package com.cncs.dao;

import com.cncs.domain.HealthQuestionnaire;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * 健康问卷持久层接口
 */
public interface IHealthQuestionnaireDao {

    @Select("select * from t_health_questionnaire")
    List<HealthQuestionnaire> findAll();
}
