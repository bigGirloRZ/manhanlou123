<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-xs-9">
    <form class="form-horizontal"
          action="/queryCost" method="post">
        <div class="form-group">
            <label class="col-xs-3">用户名：</label>
            <div class="col-xs-9">
                <input type="text" class="form-control " name="userName">
            </div>
        </div>
        <div class="form-group">
            <label class="col-xs-3">菜名：</label>
            <div class="col-xs-9">
                <input type="text" class="form-control " name="foodName">
            </div>
        </div>
        <div class="form-group">
            <label class="col-xs-3">价格：</label>
            <div class="col-xs-9">
                <input type="text" class="form-control " name="Cost">
            </div>
        </div>
        <button type="submit" class="btn btn-default">搜索</button>
    </form>
    <hr/>
    <table class="table">
        <tr>
            <th>编号</th>
            <th>商品名</th>
            <th>类型</th>
            <th>价格</th>
        </tr>
       <%-- items 代表集合，var代表集合里的每一项--%>
        <c:forEach items="${requestScope.allCosts}" var="cost">
        <tr>
        <td>${cost.id}</td>
        <td>${cost.userName}</td>
        <td>${cost.foodName}</td>
        <td>${cost.cost}</td>
            <td>${cost.date}</td>
        </tr>
        </c:forEach>
    </table>
</div>