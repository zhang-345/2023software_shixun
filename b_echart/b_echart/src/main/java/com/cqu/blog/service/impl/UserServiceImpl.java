package com.cqu.blog.service.impl;

import com.cqu.blog.entity.Result;
import com.cqu.blog.mapper.UserMapper;
import com.cqu.blog.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public Result getNumberOfAllUser() {
        return Result.success(userMapper.getNumberOfAllUser());
    }

    @Override
    public Result getNumberOfUserGroupByRegion() {
        return Result.success(userMapper.getNumberOfUserGroupByRegion());
    }

    @Override
    public Result getNumberOfRegisterToday() {
        return Result.success(userMapper.getNumberOfRegisterToday());
    }

    @Override
    public Result getNumberOfAge() {
        //Map<String,Integer> res = new HashMap<>();
        int[] arr = new int[10];
        List<Integer> ageList = userMapper.getAgeList();
        for(int i=0;i<ageList.size();i++){
            Integer age = ageList.get(i);
            if(age<=10) {
                arr[0]++;
            } else if(age<=20){
                arr[1]++;
            } else if(age<=30) {
                arr[2]++;
            } else if(age<=40){
                arr[3]++;
            } else if (age <= 50) {
                arr[4]++;
            } else if (age<=60) {
                arr[5]++;
            } else if (age<=70) {
                arr[6]++;
            } else if (age<=80) {
                arr[7]++;
            } else if (age<=90) {
                arr[8]++;
            } else if (age<=100) {
                arr[9]++;
            }
        }
//        res.put("0-10",0);
//        res.put("10-20",0);
//        res.put("20-30",0);
//        res.put("30-40",0);
//        res.put("40-50",0);
//        res.put("50-60",0);
//        res.put("60-70",0);
//        res.put("70-80",0);
//        res.put("80-90",0);
//        res.put("90-100",0);
//        List<Integer> ageList = userMapper.getAgeList();
//        for(int i=0;i<ageList.size();i++) {
//            Integer age = ageList.get(i);
//            if(age<=10) {
//                res.put("0-10", res.get("0-10")+1);
//            } else if (age<=20) {
//                res.put("10-20", res.get("10-20")+1);
//            } else if (age<=30) {
//                res.put("20-30", res.get("20-30")+1);
//            } else if (age<=40) {
//                res.put("30-40", res.get("30-40")+1);
//            } else if (age<=50) {
//                res.put("40-50", res.get("40-50")+1);
//            } else if (age<=60) {
//                res.put("50-60", res.get("50-60")+1);
//            } else if (age<=70) {
//                res.put("60-70", res.get("60-70")+1);
//            } else if (age<=80) {
//                res.put("70-80", res.get("70-80")+1);
//            } else if (age<=90) {
//                res.put("80-90", res.get("80-90")+1);
//            }else {
//                res.put("90-100", res.get("90-100")+1);
//            }
//        }
        return Result.success(arr);
    }

    @Override
    public Result getNumberOfUserBySex() {
        return Result.success(userMapper.getNumberOfUserBySex());
    }

}
