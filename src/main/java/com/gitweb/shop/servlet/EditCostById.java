package com.gitweb.shop.servlet;

import com.gitweb.shop.dao.ICostDao;
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
        costDao.selectByCostId(id);
        resp.sendRedirect("/queryCost");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
    }
}
