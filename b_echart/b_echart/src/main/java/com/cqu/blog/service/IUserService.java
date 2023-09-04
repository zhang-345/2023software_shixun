package com.cqu.blog.service;

import com.cqu.blog.entity.Result;

public interface IUserService {

    Result getNumberOfAllUser();

    Result getNumberOfUserGroupByRegion();

    Result getNumberOfRegisterToday();

    Result getNumberOfAge();

    Result getNumberOfUserBySex();

}
