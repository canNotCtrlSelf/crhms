package com.cncs.service;

import com.cncs.domain.HealthQuestionnaire;
import com.cncs.domain.MentalityQuestionnaire;

import java.util.List;

/**
 * 健康问卷业务层接口
 */
public interface IMentalityQuestionnaireService {
    List<MentalityQuestionnaire> findAll();
}
