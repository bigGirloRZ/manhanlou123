<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <!--导入外部样式-->
    <link href="css/bootstrap.min.css"
          rel="stylesheet" type="text/css">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <h1 class="text-center">用户注册</h1>
        <h6 class="text-center" style="color: red" id="error">${requestScope.error}</h6>
    </div>
    <div class="row">
        <!--form-horizontal form-group连用
        一个group占用一行
        form-inline 所有的group排成一行
        -->
        <div class="col-xs-offset-4 col-xs-4">
            <!--form事件：提交表单onsubmit-->
            <!-- 如何绑定事件：事件名称="方法名()";-->
            <!--  注意点：这个事件只会被type为submit的按钮激活
              reset，button是不会激活的。-->
            <!--return 添加提交约束  不加return 100%提交
            加return   方法结果为false不提交-->
            <form class="form-horizontal"
                  action="/register" method="post"
                  onsubmit="return verifyForm()">
                <div class="form-group">
                    <label class="col-xs-3">用户名：</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control " name="userName"
                               id="userName">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-3">密码：</label>
                    <div class="col-xs-9">
                        <input type="password" class="form-control "
                              name="password" id="pass">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-3">性别：</label>
                    <div class="col-xs-9">
                        <div class="radio ">
                            <label>
                                <input type="radio" name="gender" value="true">男
                            </label>
                            <label>
                                <input type="radio" name="gender" value="false">女
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-3">爱好：</label>
                    <div class="col-xs-9">
                        <div class="checkbox ">
                            <label>
                                <input type="checkbox" name="hobby" value="lookBook">看小说
                            </label>
                            <label>
                                <input type="checkbox" name="hobby" value="watchVideo">看电影
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-3">年龄：</label>
                    <div class="col-xs-9">
                        <input type="text" class="form-control"
                               name="age" id="age">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-offset-3 col-xs-9">
                        <button class="btn btn-primary " type="submit" >注册</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!--    导入脚本语言javaScript-->
<!--<script type="text/javascript">
    /*js只有一种数据类型var
     * 实际使用的数据：
     * String
     * 整型，浮点，布尔，数组，Object
     * */
    /*变量可以赋值成任意的数据*/
    var a=1;
    a="";
    /*function代表js中的方法*/
    function foo() {
        /*arguments代表js方法参数列表数组*/
        /*弹出窗口方法 alert(显示内容)*/
        alert(arguments[0]);
        /*  控制台输出console.log(输出内容)*/
        console.log("我执行了foo方法")
    }
    /* js中参数没有意义，
     所以没有没有方法重载*/
    /*只要将方法调用写入脚本区就能激活方法*/
    /*foo(1);*/
    /*通过js获取页面上的标签方式*/
    /*  1.通过id获取*/
    /* document代表整个html页面*/
    /*  通过id属性获取h2标签一个描述性的对象
     js包括了这个h2标签所有的数据
     我们程序员关注的信息：
     标签名
     class 属性值
     style  样式相关数据
     name 值
     如果是输入组件还有value
     它的子标签相关信息
     * */
    /*对于一个html标签对象要关注的属性*/
/*    1.className 代表 class属性值
    2.id 代表id属性值
    3.tagName 代表标签名
    4.innerHtml 代表子标签信息
    5.innerText  代表标签内直接文本内容
    6.value  若是输入input就有该属性  代表输入框显示内容
    */
    var error = document.getElementById("error");
    /*修改标签里的内容*/
    /*innerHTML可以写html代码*/
    error.innerHTML="<b>数据不能空</b>"
    /*undefined,null 在js里都代表空
     通常用法
     * undefined还没有这个变量，或属性
     * null  这个变量或属性已经存在，值为null
     * */
 /*   通过id值获取标签对象*/
    var userName = document.getElementById("userName");
   /* 修改input标签的value值就是修改它的默认值*/
    userName.value="admin";
    var pass = document.getElementById("pass");
    pass.value=111111;
    /*通过name值获取标签对象数组*/
    var genders = document.getElementsByName("gender");
   /* input里的radio，checkbox
    都可以通过checked属性，true选中，false不选中*/
   genders[0].checked=true;
   var hobby=document.getElementsByName("hobby");
    hobby[1].checked=true;
</script>-->
<script type="text/javascript">
    /*验证表单*/
    function verifyForm() {
        /*        console.log("激活验证");
         alert("已被激活");*/
        /* 获取到提示标签对象*/
        var error = document.getElementById("error");
        /*  input输入框的用户输入，
         就是input标签对象的value属性值*/
        var userName = document.getElementById("userName");
        if(userName.value==""||userName.value==null){
            /* inner开头更改的是标签<>.....</>....就是它更改的内容*/
            /*innerText只能赋值字符串，
             innerHtml不单是字符串，还可以包含html标签*/
            error.innerText="用户名不能为空";
            return false;
        }
        var pass = document.getElementById("pass");
        if(isEmpty(pass.value)){
            error.innerText="密码不能为空";
            return false;
        }
        var age = document.getElementById("age");
        if(isEmpty(age.value)){
            error.innerText="年龄不能为空";
            return false;
        }
        /*    isNaN() 方法 需要被判断值不为undefined ,null
         不是数字 返回true  是数字返回false*/
        if(isNaN(age.value)){
            error.innerText="年龄必须为数值";
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

</body>
</html>
