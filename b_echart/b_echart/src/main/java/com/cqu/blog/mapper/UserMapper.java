package com.cqu.blog.mapper;

import com.cqu.blog.entity.Result;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface UserMapper {

    @Select("select region as name,count(*) as value from user group by region;")
    List<Map<String,Object>> getNumberOfUserGroupByRegion();//获取所有地区用户人数

    @Select("select count(*) from user;")
    Integer getNumberOfAllUser();//获取用户总人数

    @Select("select count(*) as number from user where date(create_time) = date(now());")
    Map<String,Object> getNumberOfRegisterToday();//获取今日的注册人数

    @Select("select age from user order by age;")
    List<Integer> getAgeList();//获取一个有序的年龄列表

    @Select("select sex as name, count(*) as value from user group by sex;")
    List<Map<String,Object>> getNumberOfUserBySex();//获取不同性别的用户属性

}
