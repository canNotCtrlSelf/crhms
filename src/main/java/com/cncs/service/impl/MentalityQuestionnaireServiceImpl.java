package com.cncs.service.impl;

import com.cncs.dao.IMentalityQuestionnaireDao;
import com.cncs.domain.MentalityQuestionnaire;
import com.cncs.service.IMentalityQuestionnaireService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 健康问卷业务层实现类
 */
@Service
public class MentalityQuestionnaireServiceImpl implements IMentalityQuestionnaireService {

    @Autowired
    private IMentalityQuestionnaireDao mentalityQuestionnaireDao;

    @Override
    public List<MentalityQuestionnaire> findAll() {
        return mentalityQuestionnaireDao.findAll();
    }
}
