package com.gitweb.shop.dao;

import com.gitweb.shop.entity.Cost;
import com.gitweb.shop.entity.User;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by ZRS on 2016/11/30.
 */
public interface ICostDao {
    //增加消费记录
    void saveCost(Cost cost);
    //查询消费账单
    List<Cost> getAllCost();
     //查询所需要的消费账单
    List<Cost> selectByCostName(String userName);
    //查询所需要的消费，以对象作为输入对象
    List<Cost> selctByCost(Cost cost);
   }
