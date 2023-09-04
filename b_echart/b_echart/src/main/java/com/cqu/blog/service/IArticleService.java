package com.cqu.blog.service;

import com.cqu.blog.entity.Result;

public interface IArticleService {
    Result getNumberOfAllBlog();
    Result getNumberOfBlogToday();
    Result getNumberOfAllViewCount();
    Result getNumberOfBlogGroupByRegion();

    Result getNumberOfArticleGroupByCategory();

}
