package com.gitweb.shop.entity;

/**
 * Created by ZRS on 2016/11/29.
 */
public class Cost {
    private String userName;
    private Integer cost;
    private String date;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getCost() {
        return cost;
    }

    public void setCost(Integer cost) {
        this.cost = cost;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
