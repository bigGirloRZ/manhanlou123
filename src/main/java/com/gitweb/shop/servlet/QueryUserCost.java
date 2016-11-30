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
 * Created by ZRS on 2016/11/30.
 */
@WebServlet(urlPatterns = "/queryCost")
public class QueryUserCost extends HttpServlet{
    MybatisMapperUtil util= new MybatisMapperUtil();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置字符编码
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        //查询数据库，将数据存入请求
        ICostDao costDao=util.getMapper(ICostDao.class);
        List<Cost> allCosts = costDao.getAllCost();
        req.setAttribute("allCosts",allCosts);
        //获取session
        HttpSession session = req.getSession();
        session.setAttribute("servletName","queryGoods");
        //重定向 不能保留请求数据，传递请求可以
        req.getRequestDispatcher("/content.jsp").forward(req,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置字符编码
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        ICostDao costDao=util.getMapper(ICostDao.class);
        String userName=req.getParameter("userName");
        List<Cost>allCosts=costDao.selectByCostName(userName);
        req.setAttribute("allCosts",allCosts);
        HttpSession session = req.getSession();
        session.setAttribute("servletName","queryGoods");
        //重定向 不能保留请求数据，传递请求可以
        req.getRequestDispatcher("/content.jsp").forward(req,resp);
    }
}
