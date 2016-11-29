package com.gitweb.shop.servlet;

import com.gitweb.shop.dao.IUserDao;
import com.gitweb.shop.utli.MybatisMapperUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by zhaorunsheng on 2016/11/28.
 */
public class payServlet extends HttpServlet {
       IUserDao userDao= MybatisMapperUtil.getMapper(IUserDao.class);
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        //数据存放在数据库中，将数据存入request。





    }
}
