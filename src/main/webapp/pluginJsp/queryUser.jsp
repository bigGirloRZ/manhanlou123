<%--
  Created by IntelliJ IDEA.
  User: zhaorunsheng
  Date: 2016/11/28
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-xs-9">
    <div>
        <ol class="breadcrumb">
            <li><a href="#">总消费记录</a></li>
            <li class="active">查看用户</li>
        </ol>
    </div>
    <form action="/queryUserCost">
    <div>
        <table class="table table-hover">
            <tr>
                <th>编号</th>
                <th>用户名</th>
                <th>性别</th>
                <th>金额</th>
                <th>办理日期</th>
            </tr>
            <%--一个user代表一个tr--%>
            <c:forEach items="${requestScope.users}" var="user">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.userName}</td>
                    <td>${user.gender?'男':'女'}</td>
                    <td>${user.age}</td>
                    <td>${user.hobbies}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
    </form>
</div>
