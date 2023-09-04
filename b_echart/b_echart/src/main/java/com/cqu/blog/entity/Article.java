package com.cqu.blog.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigInteger;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Date;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Article {

    @TableId(value = "article_id")
    private Long articleId;

    private String title;

    private String content;

    private Long categoryId;

    private String thumbnail;

    private String isTop;

    private String status;

    private Long viewCount;

    private String isComment;

    private Long createBy;

    private Timestamp createTime;

    private LocalDateTime updateTime;

    private String isVisible;

    private Integer numCollection;

    private Integer userLikes;

    private String categoryName;

    private String posttime;
}
