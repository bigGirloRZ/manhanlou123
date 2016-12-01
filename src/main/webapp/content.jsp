<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>内容主页</title>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
    <style>
        .headDIV{
            height: 100px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row headDIV">
        <h5 class="text-right">
            <span class="glyphicon glyphicon-user"></span>
            ${sessionScope.user.userName}，欢迎登陆
            <a href="">注销登陆</a>
        </h5>
    </div>
    <div class="row">
        <div class="col-xs-3">
            <ul class="nav nav-pills nav-stacked" role="tablist">
                <li <c:if test="${sessionScope.servletName eq 'queryCost'}">class="active"</c:if>>
                    <a href="/queryCost">查看消费记录</a>
                </li>
                <li <c:if test="${sessionScope.servletName eq 'addCost'}">class="active"</c:if>>
                    <a href="/addCost">添加消费记录</a>
                </li>
                <li ><a href="#">查看商品</a></li>
            </ul>
        </div>
     <c:if test="${sessionScope.servletName eq 'queryUser'}">
         <jsp:include page="/pluginJsp/queryUser.jsp"></jsp:include>
     </c:if>
        <c:if test="${sessionScope.servletName eq 'queryCost'}">
            <jsp:include page="/pluginJsp/queryCost.jsp"></jsp:include>
        </c:if>
        <c:if test="${sessionScope.servletName eq 'addCost'}">
            <jsp:include page="/pluginJsp/addCost.jsp"></jsp:include>
        </c:if>
    </div>
</div>
</body>
</html>
