package com.cqu.blog.entity;



public class Result {
    private Integer code;
    private String msg;
    private Object data;

    Result() {
        this.code=0;
        this.msg="";
        this.data=null;
    }
    Result(Integer code,String msg,Object data) {
        this.code=code;
        this.msg=msg;
        this.data=data;
    }
    public Integer getCode() {
        return this.code;
    }
    public String getMsg() {
        return this.msg;
    }
    public Object getData() {
        return this.data;
    }
    public void setCode(Integer code) {
        this.code=code;
        return;
    }
    public void setMsg(String msg) {
        this.msg=msg;
        return;
    }
    public void setData(Object data) {
        this.data=data;
    }


    public static Result success() {
        return new Result(1,"成功",null);
    }
    public static Result success(Object data) {
        return new Result(1,"成功",data);
    }
    public static Result error() {
        return new Result(0,"失败",null);
    }
}
