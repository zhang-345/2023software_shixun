package com.cqu.blog.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigInteger;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private BigInteger id;
    private String account;
    private String nickname;
    private String password;
    private Character status;
    private String email;
    private String phoneNumber;
    private Character sex;
    private String avatar;
    private Integer age;
}
