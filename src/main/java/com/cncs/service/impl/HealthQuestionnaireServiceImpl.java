package com.cncs.service.impl;

import com.cncs.dao.IHealthQuestionnaireDao;
import com.cncs.domain.HealthQuestionnaire;
import com.cncs.service.IHealthQuestionnaireService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 健康问卷业务层实现类
 */
@Service
public class HealthQuestionnaireServiceImpl implements IHealthQuestionnaireService {

    @Autowired
    private IHealthQuestionnaireDao healthQuestionnaireDao;

    @Override
    public List<HealthQuestionnaire> findAll() {
        return healthQuestionnaireDao.findAll();
    }
}
