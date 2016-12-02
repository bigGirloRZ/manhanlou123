<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-xs-9">
    <form class="form-inline" action="/queryCost" method="post">
        <div class="form-group">
            <label class="sr-only">用户名：</label>
            <input type="text" class="form-control" name="userName"
                   placeholder="用户名">
        </div>
        <div class="form-group">
            <label class="sr-only">菜名：</label>
            <input type="text" class="form-control" name="foodName"
                   placeholder="菜名">
        </div>
        <div class="form-group">
            <label class="sr-only">价格：</label>
            <input type="text" class="form-control" name="cost"
                   placeholder="价格">
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
    </form>
    <hr/>
    <table class="table">
        <tr>
            <th>编号</th>
            <th>用户名</th>
            <th>食品</th>
            <th>价格</th>
            <th>日期</th>
        </tr>
       <%-- items 代表集合，var代表集合里的每一项--%>
        <c:forEach items="${requestScope.allGoods}" var="cost">
        <tr>
        <td>${cost.id}</td>
        <td>${cost.userName}</td>
        <td>${cost.foodName}</td>
        <td>${cost.cost}</td>
            <td>${cost.date}</td>
            <td><a href="/destroyCostbyId?id=${cost.id}"> <i class="delete_log"></i></a></td>
            <td><a href="/editCostById?id=${cost.id}"> <i class="edit_log"></i></a></td>
        </tr>
        </c:forEach>
    </table>
</div>