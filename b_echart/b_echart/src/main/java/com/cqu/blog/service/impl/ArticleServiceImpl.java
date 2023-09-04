package com.cqu.blog.service.impl;

import com.cqu.blog.entity.Result;
import com.cqu.blog.mapper.ArticleMapper;
import com.cqu.blog.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleServiceImpl implements IArticleService {
    @Autowired
    private ArticleMapper blogMapper;
    @Override
    public Result getNumberOfAllBlog() {
        return Result.success(blogMapper.getNumberOfAllBlog());
    }
    @Override
    public Result getNumberOfBlogToday() {
        return Result.success(blogMapper.getNumberOfBlogToday());
    }
    @Override
    public Result getNumberOfAllViewCount() {
        return Result.success(blogMapper.getNumberOfAllViewCount());
    }

    @Override
    public Result getNumberOfBlogGroupByRegion() {
        return Result.success(blogMapper.getNumberOfBlogGroupByRegion());
    }

    @Override
    public Result getNumberOfArticleGroupByCategory() {
        return Result.success(blogMapper.getNumberOfArticleGroupByCategory());
    }
}
