<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>易换二手</title>
    <!-- 引入Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
    <!--引入Jquery bootstrap.js-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <style type="text/css">
        body{
            overflow: hidden;

        }
        .header{
            background-color: #FFFFFF;
            width: 15em;
        }
        .header img{
            margin-top: 10px;
            margin-left: 30px;
            margin-bottom: 10px;
        }
        .dividing{
            height: 4em;
        }
        .body{
            background: url(/images/bg4.jpg) no-repeat  right bottom ;
            height: 720px;
            background-size: cover;
        }
        .typeChoose{

            /* color: #9d9d9d; */
            font-size: 1.5em;
            margin-bottom: 0.5em;
        }
        .chooseLogin, .chooseRegister{
            cursor:pointer;

            background-color: #e6da9f;
            border-radius: 3px;
        }
        .nonChoose{
            color: #969696;
        }
        .myFrom{
            width: 25em;
            text-align: center;
            margin: 0 auto ;
            background-color: #f5e9a9;
            border-radius: 3px;
            padding: 10px ;
        }
        .myFrom-register{
            display: none;
        }
        .user-name{
            width: 21.5em;
        }
        .oneForm{
            margin-left: 13px;
        }
        .myBtn{
            width: 20em;
            background-color: #F0AD4E;
        }
        #img-upload{
            display: none;
        }
        #select{
            background-color: #f9f9f9;
            border:1px solid #818181;
            padding: 2px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<!-- logo -->
<div class="container-fluid">
    <div class="row no-gutters header">
        <div class="col-xs-12">
            <a href="/show" >
                <img class="img-responsive" src="images/logo.png" alt="logo">
            </a>
        </div>
    </div>
</div>


<!-- <div class="container-fluid">
    <div class="col-ms-12 "> -->


<div class="body">
    <div class="dividing"></div>
    <!-- 注册页面 -->
    <div class="myFrom myFrom-register" id="myFrom-register">
        <div class="typeChoose">
            <div class="container-fluid">
                <div class="col-xs-6 chooseLogin nonChoose" id="loginbtn">登录</div >
                <div class="col-xs-6 chooseRegister ">注册</div >
            </div>
        </div>
        <form class="form-group" method="post" action="/register" id="form2" enctype="multipart/form-data">
<%--            <input type="text"  name="id" placeholder="id" style="display: none;">--%>
            <div class="form-group oneForm">
                 <input type="text" class="form-control user-name" name="telNumber" placeholder="手机" required>
            </div>
            <div class="form-group oneForm" style="float: left;">
                <input type="text" style="display:inline;" class="form-control user-name" name="name" onblur="check()" id="name" placeholder="用户名" required>
                <span style="color: #b92c28;font-weight: bold;display: none" id="no">×</span>
                <span style="color: #0eb96d;font-weight: bolder;display: none " id="yes">√</span>
            </div>
            <div class="form-group oneForm">
                <input type="password" class="form-control user-name" name="password" placeholder="密码" required>
            </div>
            <div class="form-group oneForm">
                <input type="text" class="form-control user-name" name="address" placeholder="地址" required>
            </div>
            <div class="form-group oneForm">
                <span id="select"><span style="font-weight: bolder">+</span> 请选择您的头像</span>
                <input type="file" name="uploadImg" id="img-upload"/>
            </div>
            <button type="button" class="btn btn-default btn-warning myBtn" id="bt2">注册</button>
            <!-- <button type="button" class="btn btn-warning ">（警告）Warning</button> -->
        </form>
    </div>
    <!-- 登录页面 -->
    <div class="myFrom myFrom-login" id="myFrom-login">
        <div class="typeChoose">
            <div class="container-fluid">
                <div class="col-xs-6 chooseLogin">登录</div >
                <div class="col-xs-6 chooseRegister nonChoose" id="registerbtn">注册</div >
            </div>
        </div>
        <form class="form-group" action="/userLogin" method="post" id="form">
            <input type="text"  name="id" placeholder="id" style="display: none;">
            <div class="form-group">
                <input type="text" class="form-control" name="name" placeholder="用户名" required>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="密码" required>
            </div>
           <%-- <div class="form-group">
                <canvas id="canvas" class="form-control" ></canvas>
            </div>--%>
            <canvas id="canvas" style="float: right;background-color: #FFF;margin-bottom: 10px" width="120" height="40" ></canvas>
            <div class="form-group" style="float: left;width: 12em" >
                <input type="text" id="text" placeholder="请输入验证码" class="form-control" >
            </div>
            <button type="button" id="bt" class="btn btn-default btn-warning myBtn">登录</button>
            <!-- <button type="button" class="btn btn-warning ">（警告）Warning</button> -->
        </form>
    </div>

</div>


</body>

<script type="text/javascript">

    var registerbtn = document.getElementById("registerbtn");
    var loginbtn = document.getElementById("loginbtn");
    var login = document.getElementById("myFrom-login");
    var register = document.getElementById("myFrom-register");
    registerbtn.onclick = function(){
        login.style.display = "none";
        register.style.display = "block";
    }
    loginbtn.onclick = function(){
        login.style.display = "block";
        register.style.display = "none";
    }


    //ajax 用户名验证
    function check() {
        $.post({
            url:"${pageContext.request.contextPath}/checkUsername",
            data:{'name':$("#name").val()},
            success:function (data) {
                if (data.toString()=='yes'){
                    $("#yes").css("display","inline");
                    $("#no").css("display","none");
                }else {
                    $("#no").css("display","inline");
                    $("#yes").css("display","none");
                }
               /* $("#userInfo").html(data);*/
            }
        });

    }


    var form = document.getElementById("form");
    var canvas = document.getElementById("canvas");//演员
    var context = canvas.getContext("2d");//舞台，getContext() 方法可返回一个对象，该对象提供了用于在画布上绘图的方法和属性。
    var button = document.getElementById("bt");//获取按钮
    var input = document.getElementById("text");//获取输入框
    draw();
    canvas.onclick = function () {
        context.clearRect(0, 0, 120, 40);//在给定的矩形内清除指定的像素
        draw();
    }
    // 随机颜色函数
    function getColor() {
        var r = Math.floor(Math.random() * 256);
        var g = Math.floor(Math.random() * 256);
        var b = Math.floor(Math.random() * 256);
        return "rgb(" + r + "," + g + "," + b + ")";
    }
    function draw() {
        context.strokeRect(0, 0, 120, 40);//绘制矩形（无填充）
        var aCode = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"];
        // 绘制字母
        var arr = [] //定义一个数组用来接收产生的随机数
        var num //定义容器接收验证码
        for (var i = 0; i < 4; i++) {
            var x = 20 + i * 20;//每个字母之间间隔20
            var y = 20 + 10 * Math.random();//y轴方向位置为20-30随机
            var index = Math.floor(Math.random() * aCode.length);//随机索引值
            var txt = aCode[index];
            context.font = "bold 20px 微软雅黑";//设置或返回文本内容的当前字体属性
            context.fillStyle=getColor();//设置或返回用于填充绘画的颜色、渐变或模式，随机
            context.translate(x,y);//重新映射画布上的 (0,0) 位置，字母不可以旋转移动，所以移动容器
            var deg=90*Math.random()*Math.PI/180;//0-90度随机旋转
            context.rotate(deg);// 	旋转当前绘图
            context.fillText(txt, 0, 0);//在画布上绘制“被填充的”文本
            context.rotate(-deg);//将画布旋转回初始状态
            context.translate(-x,-y);//将画布移动回初始状态
            arr[i] = txt //接收产生的随机数
        }
        num = arr[0] + arr[1] + arr[2] + arr[3] //将产生的验证码放入num
        // 绘制干扰线条
        for (var i = 0; i < 8; i++) {
            context.beginPath();//起始一条路径，或重置当前路径
            context.moveTo(Math.random() * 120, Math.random() * 40);//把路径移动到画布中的随机点，不创建线条
            context.lineTo(Math.random() * 120, Math.random() * 40);//添加一个新点，然后在画布中创建从该点到最后指定点的线条
            context.strokeStyle=getColor();//随机线条颜色
            context.stroke();// 	绘制已定义的路径
        }
        // 绘制干扰点，和上述步骤一样，此处用长度为1的线代替点
        for (var i = 0; i < 20; i++) {
            context.beginPath();
            var x = Math.random() * 120;
            var y = Math.random() * 40;
            context.moveTo(x, y);
            context.lineTo(x + 1, y + 1);
            context.strokeStyle=getColor();
            context.stroke();
        }

        //点击按钮验证
        button.onclick = function () {
            var text = input.value //获取输入框的值
            if (text === num) {
                form.submit();
            } else {
                alert('验证错误！')
            }
        }

    }

    //上传用户头像
    var select = $('#select');
    var imgUpload = $('#img-upload');
    var form = $('#form');
    $(document).ready(function(){
        select.click(function(){
            imgUpload.click();
            select.css("display","none");
            imgUpload.css("display","block");

        });

    });

    var form2 = document.getElementById("form2");
    var bt2 = document.getElementById("bt2");
    bt2.onclick = function () {
        alert('注册成功，请登录！');
        form2.submit();
    }




</script>



</body>
</html>
