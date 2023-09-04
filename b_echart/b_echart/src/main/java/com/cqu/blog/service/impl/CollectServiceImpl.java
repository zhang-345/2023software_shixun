package com.cqu.blog.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cqu.blog.entity.Result;
import com.cqu.blog.mapper.CollectMapper;
import com.cqu.blog.service.ICollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CollectServiceImpl implements ICollectService {

    @Autowired
    private CollectMapper collectMapper;


    @Override
    public Result getNumberOfAllStarCount() {
        return Result.success(collectMapper.getNumberOfAllStarCount());
    }
}
