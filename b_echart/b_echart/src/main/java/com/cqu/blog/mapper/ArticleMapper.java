package com.cqu.blog.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

@Mapper
public interface ArticleMapper {
    @Select("select count(*) as number from article; ")
    Map<String,Object> getNumberOfAllBlog();//获取系统中所有博客的数量

    @Select("select count(*) as number from article where date(create_time)=date(now());")
    Integer getNumberOfBlogToday();//获取系统今天发布的博客数量;

    @Select("select sum(view_count) as number from article;")
    Map<String,Object> getNumberOfAllViewCount();//获取系统总浏览量

    @Select("select region as name,count(*) as value \n" +
            "from article \n" +
            "JOIN `user` ON `user`.id=article.create_by\n" +
            "group by region \n" +
            "limit 9;")
    List<Map<String,Object>> getNumberOfBlogGroupByRegion();

    @Select("select name as name, count(*) as value \n" +
            "from article \n" +
            "natural join category\n" +
            "group by name;")
    List<Map<String,Object>> getNumberOfArticleGroupByCategory();//返回各类别博客数量
}
