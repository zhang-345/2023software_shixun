package com.cqu.blog.controller;

import com.cqu.blog.entity.Result;
import com.cqu.blog.service.IArticleService;
import com.cqu.blog.service.ICollectService;
import com.cqu.blog.service.IUserService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "可视化大屏模块")
@RestController
@RequestMapping("/echarts")
@CrossOrigin
public class EchartsController {
    @Autowired
    private IArticleService blogService;

    @Autowired
    private IUserService userService;

    @Autowired
    private ICollectService collectService;

    @Operation(summary = "获取系统所有注册人数")
    @GetMapping("/numberOfAllUser")
    public Result getNumberOfAllUser() {
        return userService.getNumberOfAllUser();
    }

    @Operation(summary = "获取系统今日注册人数")
    @GetMapping("/numberOfRegisterToday")
    public Result getNumberOfRegisterToday() {
        return userService.getNumberOfRegisterToday();
    }

    @Operation(summary = "获取整个博客系统的博客总数")
    @GetMapping("/numberOfAllBlog")
    public Result getNumberOfAllBlog() {
        return blogService.getNumberOfAllBlog();
    }

    @Operation(summary = "获取今日博客系统的博客总数")
    @GetMapping("/numberOfBlogToday")
    public Result getNumberOfBlogToday() {
        return blogService.getNumberOfBlogToday();
    }

    @Operation(summary = "获取博客系统总浏览量")
    @GetMapping("/numberOfAllViewCount")
    public Result getNumberOfAllViewCount() {
        return blogService.getNumberOfAllViewCount();
    }

    @Operation(summary = "用于获取每个地区的用户数量")
    @GetMapping("/numberOfUserGroupByRegion")
    public Result getNumberOfUserGroupByRegion() {
        return userService.getNumberOfUserGroupByRegion();
    }

    @Operation(summary = "获取每个地区的博客数量")
    @GetMapping("/numberOfArticleGroupByRegion")
    public Result getNumberOfArticleGroupByRegion() {
        return blogService.getNumberOfBlogGroupByRegion();
    }

    @Operation(summary = "获取用户年龄分布")
    @GetMapping("/rangeOfUserAge")
    public Result getRangeOfUserAge() {
        return userService.getNumberOfAge();
    }

    @Operation(summary = "按照标签获取博客数量")
    @GetMapping("/numberOfBlogGroupByCategory")
    public Result getNumberOfBlogGroupByCategory() {
        return blogService.getNumberOfArticleGroupByCategory();
    }

    @Operation(summary = "按性别获取不同性别的人数")
    @GetMapping("/numberOfUserBySex")
    public Result getNumberOfUserBySex() {
        return userService.getNumberOfUserBySex();
    }

    @Operation(summary = "获取总收藏量")
    @GetMapping("/numberOfAllStarCount")
    public Result getNumberOfAllStarCount(){
        return collectService.getNumberOfAllStarCount();
    }

}
