package com.gitweb.shop.servlet;

import com.gitweb.shop.dao.ICostDao;

import com.gitweb.shop.entity.Cost;

import com.gitweb.shop.utli.MybatisMapperUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 *
 */
@WebServlet(urlPatterns = "/queryCost")
public class QueryCost extends HttpServlet {
    //数据库的核心工具类
    MybatisMapperUtil util= new MybatisMapperUtil();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置字符编码
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        //查询数据库，将数据存入请求
        ICostDao costDao=util.getMapper(ICostDao.class);
        List<Cost> allGoods = costDao.getAllCost();
        req.setAttribute("allGoods",allGoods);
        //获取session
        HttpSession session = req.getSession();
        session.setAttribute("servletName","queryCost");
        //重定向 不能保留请求数据，传递请求可以
        req.getRequestDispatcher("/content.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
     String userName=req.getParameter("userName");
        String cost=req.getParameter("cost");
        String foodName=req.getParameter("foodName");
        Cost userCost=new Cost();
        if (userName!=null&&!userName.isEmpty()){
            userCost.setUserName(userName);
        }
        if (foodName!=null&&!foodName.isEmpty()){
            userCost.setFoodName(foodName);
        }
        Double costValue=null;
        if (cost!=null&&!cost.isEmpty()){
            costValue=Double.parseDouble(cost);
        }
        userCost.setCost(costValue);
        ICostDao costDao=util.getMapper(ICostDao.class);
        List<Cost> allGoods = costDao.getAllCost();
        req.setAttribute("allGoods",allGoods);
        HttpSession session=req.getSession();
        session.setAttribute("servletName","queryCost");
        req.getRequestDispatcher("/content.jsp").forward(req,resp);
    }
}
