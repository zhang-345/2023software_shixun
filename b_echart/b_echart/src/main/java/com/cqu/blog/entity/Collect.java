package com.cqu.blog.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Collect implements Serializable {

    private static final long serialVersionUID = 1L;
    @TableId(value = "collect_id")
    private Long articleId;

    private Long categoryId;
    private Timestamp time;
    private Long collectId;
    private Long id;


}
