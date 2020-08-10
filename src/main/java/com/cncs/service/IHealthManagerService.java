package com.cncs.service;

import com.cncs.domain.HealthManager;

/**
 * 健康管理师业务层接口
 */
public interface IHealthManagerService {
    /**
     * 插入一条健康管理师信息
     * @param healthManager
     */
    void insertOne(HealthManager healthManager);

    /**
     * 查询信息
     * @return
     */
    HealthManager findHealthManager(int rgId);

    /**
     * 更新健康管理师信息
     * @param healthManager
     */
    void update(HealthManager healthManager);
}
