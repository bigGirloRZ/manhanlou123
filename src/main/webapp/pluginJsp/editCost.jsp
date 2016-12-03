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
              action="/editCostById" method="post" onsubmit="veriform()">
            <div class="form-group">
                <label class="col-xs-3">编号：</label>
                <div class="col-xs-9">
                    <input type="text" class="form-control " name="id" id="error" readonly value="${requestScope.cost.id}">
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-3">用户名：</label>
                <div class="col-xs-9">
                    <input type="text" class="form-control " name="userName" id="userName" value="${requestScope.cost.userName}">
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-3">菜名：</label>
                <div class="col-xs-9">
                    <input type="text" class="form-control " name="foodName" id="foodName" value="${requestScope.cost.foodName}">
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-3">价格：</label>
                <div class="col-xs-9">
                    <input type="text" class="form-control " name="Cost" id="cost" value="${requestScope.cost.price}">
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
<script type="text/javascript">
   function  veriform() {
       var error=document.getElementsById("error")
       var userName=document.getElementsById("userName");
       if(isEmpty(userName)) {
           error.innerText("请填写用户名")
          return false;
       }
       var foodName=document.getElementsById("foodName");
       if(isEmpty(foodName)) {
           error.innerText("请填写菜名")
           return false;
       }
       var price=document.getElementsById("price");
       if(isEmpty(price)) {
           error.innerText("请填写菜名")
           return false;
       }

       }
       function isEmpty(value) {
           if(value==undefined||value==null||value==''){
             return true;
           }
           return false;
   }
</script>
