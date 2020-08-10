package com.cncs.service.impl;

import com.cncs.dao.IHealthManagerDao;
import com.cncs.domain.HealthManager;
import com.cncs.service.IHealthManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 健康管理师业务层实现类
 */
@Service
public class IHealthManagerServiceImpl implements IHealthManagerService {

    @Autowired
    private IHealthManagerDao healthManagerDao;

    @Override
    public void insertOne(HealthManager healthManager) {
        healthManagerDao.insertOne(healthManager);
    }

    /**
     * 根据rgId查询信息
     * @return
     */
    @Override
    public HealthManager findHealthManager(int rgId) {
        return healthManagerDao.findHealthManagerByRgId(rgId);
    }

    /**
     * 更新健康管理师信息
     * @param healthManager
     */
    @Override
    public void update(HealthManager healthManager) {
        healthManagerDao.updateHealthManger(healthManager);
    }
}
