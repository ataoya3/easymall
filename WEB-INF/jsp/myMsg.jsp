<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>易换二手-我的信息</title>
    <!-- 引入Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
    <!--引入Jquery bootstrap.js-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        .top{
            margin-top: 0.5em;
            background-color:#f5f5f5;
        }
        .header{
            background-color: #fcfcfc;
            border-radius: 3px;
            padding-left: 1em;
            margin: 0 auto 1em;
            text-align: center;
        }

        .header img{
            padding-top: 5px;
            width: 10em;
        }
        .nonChoose, .choose{
            text-align: center;
            margin: 1.5em auto 1.5em;
            background-color: #e3e3e3;
            border-radius: 3px;
            width: 5em;
            height: 2em;
            line-height: 2em;
            font-weight: bold;
        }
        .nonChoose{
            color: #6f6f6f;
        }
        .nonChoose:hover{
            border: 1px solid #aaaaaa;
        }
        .choose{
            color: #a7a7a7;
        }
        .choose:hover{
            border: 1px solid #aaaaaa;
        }
        .myBtn{
            margin: 0 auto;
            text-align: center;
        }
        .myBtn .btn{
            width: 8em;
            background-color: #ececec;
        }
    </style>

</head>
<body>


<div class="container-fluid">
    <div class="row no-gutters ">
        <div class="col-sm-1 "> </div>
        <div class="col-sm-10 ">
            <div class="top">欢迎您,${user.name}</div>
            <!-- header -->
            <div class="header">
                <div class="row no-gutters">
                    <a href="/show" >
                        <div class="col-xs-3 "><img class="img-responsive" src="images/易换logo2.png" alt="logo"></div>
                    </a>
                    <a href="/myBuy">
                        <div class="col-xs-2 "><div class="nonChoose" >我的购买</div></div>
                    </a>
                    <a href="/mySell">
                        <div class="col-xs-2 "><div class="nonChoose" >我的发布</div></div>
                    </a>
                    <a href="/myCollection">
                        <div class="col-xs-2 "><div class="nonChoose">我的收藏</div></div>
                    </a>
                    <a href="/myMsg">
                        <div class="col-xs-2 "><div class="choose">我的信息</div></div>
                    </a>
                </div>
            </div>
            <div class="row no-gutters ">
                <div class="col-sm-3 "></div>
                <div class="col-sm-6 ">
                    <form method="post" action="/updateUser">
                        <input name="id" value="${user.id}" style="display: none">
                        <input name="password" value="${user.password}" style="display: none">
                        <div class="form-group">
                            <label for="name">用户名</label>
                            <input type="text" class="form-control" id="name" name="name" value="${user.name}" required>
                        </div>
                        <div class="form-group">
                            <label for="telNumber">电话号码</label>
                            <input type="text" class="form-control" id="telNumber" name="telNumber" value="${user.telNumber}" required>
                        </div>
                        <div class="form-group">
                            <label for="address">地址</label>
                            <input type="text" class="form-control" id="address" name="address" value="${user.address}" required>
                        </div>
                        <div class="myBtn">
                            <button type="submit" class="btn btn-default" id="my-btn">修改</button>
                        </div>
                    </form>
                </div>
                <div class="col-sm-3 "></div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $ (function () {
        var myBtn = $("#my-btn");
        myBtn.click(function () {
            alert('修改成功！');
        });

    });

</script>


</body>
</html>
