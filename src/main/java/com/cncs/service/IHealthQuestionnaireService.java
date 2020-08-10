package com.cncs.service;

import com.cncs.domain.HealthQuestionnaire;

import java.util.List;

/**
 * 健康问卷业务层接口
 */
public interface IHealthQuestionnaireService {
    List<HealthQuestionnaire> findAll();
}
