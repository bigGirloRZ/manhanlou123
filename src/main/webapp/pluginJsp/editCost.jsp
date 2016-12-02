<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="col-xs-9">
    <div>
        <ol class="breadcrumb">
            <li><a href="#">内容主页</a></li>
            <li class="active">添加商品</li>
        </ol>
    </div>
    <div>
        <form class="form-horizontal"
              action="/editCostById" method="post">
            <div class="form-group">
                <label class="col-xs-3">编号：</label>
                <div class="col-xs-9">
                    <input type="text" class="form-control " name="id" readonly value="">
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
            <div class="form-group">
                <div class="col-xs-offset-3 col-xs-9">
                    <button class="btn btn-primary" type="submit">添加消费记录</button>
                </div>
            </div>
        </form>
    </div>
</div>

