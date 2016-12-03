package com.gitweb.shop.servlet;

import com.gitweb.shop.dao.ICostDao;
import com.gitweb.shop.entity.Cost;
import com.gitweb.shop.utli.MybatisMapperUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by zhaorunsheng on 2016/12/2.
 */
@WebServlet(urlPatterns = "/editCostById")
public class EditCostById extends HttpServlet {
    MybatisMapperUtil util=new MybatisMapperUtil();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        String idd=req.getParameter("id");
        int id=Integer.parseInt(idd);
        ICostDao costDao = util.getMapper(ICostDao.class);
        Cost cost =costDao.selectByCostId(id);
        req.setAttribute("cost",cost);
        req.getRequestDispatcher("/content.jsp").forward(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        String userName=req.getParameter("userName");
        String foodName=req.getParameter("foodName");
        String price=req.getParameter("price");
        Cost usercost = new Cost();
        usercost.setUserName(userName);
        usercost.setFoodName(foodName);
        Double priceValue=Double.parseDouble(price);
        usercost.setCost(priceValue);
        usercost.setDate(usercost.getTime());
        ICostDao costDao = util.getMapper(ICostDao.class);
        costDao.updateByCost(usercost);
        resp.sendRedirect("/queryCost");
    }
}
