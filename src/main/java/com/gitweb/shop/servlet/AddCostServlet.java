package com.gitweb.shop.servlet;

import com.gitweb.shop.dao.ICostDao;
import com.gitweb.shop.dao.IUserDao;
import com.gitweb.shop.entity.Cost;
import com.gitweb.shop.utli.MybatisMapperUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 添加商品
 */
@WebServlet(urlPatterns = "/addCost")
public class AddCostServlet extends HttpServlet {
    MybatisMapperUtil util= new MybatisMapperUtil();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        //替换servletName值，起到切换页面内容的效果
        session.setAttribute("servletName","addCost");
        req.getRequestDispatcher("/content.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        String userName=req.getParameter("userName");
        String foodName=req.getParameter("foodName");
        String cost=req.getParameter("Cost");
        double costValue=Double.parseDouble(cost);
        Cost usercost=new Cost();
        usercost.setCost(costValue);
        usercost.setFoodName(foodName);
        usercost.setUserName(userName);
        String date=usercost.getTime();
        usercost.setDate(date);
        ICostDao costDao=util.getMapper(ICostDao.class);
        costDao.saveCost(usercost);
    }
}
