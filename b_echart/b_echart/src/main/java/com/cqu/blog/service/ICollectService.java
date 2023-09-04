package com.cqu.blog.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cqu.blog.entity.Collect;
import com.cqu.blog.entity.Result;

public interface ICollectService {

    Result getNumberOfAllStarCount();
}
