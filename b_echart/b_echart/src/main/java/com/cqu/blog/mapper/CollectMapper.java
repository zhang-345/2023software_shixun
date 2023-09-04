package com.cqu.blog.mapper;

import com.cqu.blog.entity.Result;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface CollectMapper {
    @Select("SELECT count(*) FROM collect")
    Integer getNumberOfAllStarCount();
}
