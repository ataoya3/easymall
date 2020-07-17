<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>userPage</title>
    <!-- 引入Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
    <!--引入Jquery bootstrap.js-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        .col-xs-3 ,.col-xs-1, .col-xs-6, .col-xs-10{

            padding: 0px;
        }

        .top{
            height: 2em;
            background-color: #f7f5f4;
        }
        .header{
            background-color: #ffa303;
            padding-left: 15px;
            margin-bottom: 1em;
        }
        .header img{
            padding-top: 5px;
        }
        .nonChoose, .choose{
            text-align: center;
            margin: 1.5em auto 1.5em;
            background-color: #ffb433;
            border-radius: 3px;
            width: 5em;
            height: 2em;
            line-height: 2em;
            font-weight: bold;
        }

        .nonChoose{
            color: #6f6f6f;
            cursor: pointer;
        }
        .choose{
            color: #f9f9f9;
            cursor: pointer;
        }
        .body{

            /* margin: 0 1em; */
        }
        .order-date{
            background-color: #fafafa;
            padding-top: 0.5em ;
            padding-bottom: 0.5em;
            padding-left: 2em;
            border-radius: 2px;
        }
        .order-msg{
            padding-top: 0.5em;
            padding-bottom: 0.5em;
            background-color: #fff4f2;
        }
        .body img{
            width: 6em;
            padding-left: 1em;
        }
        .body .order-msg a{
            text-decoration: none;
            color: #bf0000;
            font-weight: bold;
        }
        .my-dividing{
            height: 1em;
        }
        #my-sell,#my-collection{
            display: none;
        }
        #my-collection th,td{
            text-align: center;
        }
        #my-collection-btn, #change-msg-btn{
            margin: 0 auto 1em;
            text-align: center;
        }
        #my-collection-btn button{
            width: 20em;
        }
        #change-msg{
            text-align: center;
            margin: 0 auto;
            width: 20em;
            display: none;
        }
    </style>

</head>
<body>

<div class="top">欢迎您,${user.name}</div>
<!-- header -->
<div class="header">
    <div class="container-fluid">
        <div class="row no-gutters">
            <a href="/show" >
                <div class="col-xs-3 "><img class="img-responsive" src="images/logo.png" alt="logo"></div>
            </a>
            <div class="col-xs-3 "><div class="choose"   id="buy-btn">我的购买</div></div>
            <div class="col-xs-3 "><div class="nonChoose" id="sell-btn">我的发布</div></div>
            <div class="col-xs-3 "><div class="nonChoose" id="msg-btn">我的信息</div></div>
        </div>
    </div>
</div>

<!-- 我的购买 -->
<div class="body" id="my-buy">
<c:forEach items="${orderFormsAsBuyer}" var="item" varStatus="count" >
    <div class="container-fluid">
        <div class="row no-gutters">
            <div class="col-xs-1 "></div>
            <div class="col-xs-10 ">
                <div class="container-fluid order-date">
                    <div class="row no-gutters">
                        <div class="col-xs-4 ">${item.time}</div>
                        <div class="col-xs-4 ">1000${item.id}</div>
                        <div class="col-xs-4 ">卖家：${item.sellerId}</div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row no-gutters order-msg">
                        <div class="col-xs-3 ">
                            <img class="img-responsive body-img" src="images/${item.product.pic1}" >
                        </div>
                        <!-- <div class="col-xs-1 "></div> -->
                        <div class="col-xs-2 ">${item.product.name}</div>
                        <div class="col-xs-3 ">${item.product.homePageDetail}</div>
                        <div class="col-xs-1" >￥${item.product.price}</div>
                        <div class="col-xs-1 "></div>
                        <div class="col-xs-2 " ><a href="#">退货</a></div>
                    </div>
                </div>
            </div>
            <div class="col-xs-1 "></div>
        </div>
    </div>
    <div class="my-dividing"></div>
</c:forEach>
</div>

<!-- 我的发布		 -->
<div class="body" id="my-sell">
<c:forEach items="${orderFormsAsSeller}" var="item" varStatus="count" >
    <div class="container-fluid">
        <div class="row no-gutters">
            <div class="col-xs-1 "></div>
            <div class="col-xs-10 ">
                <div class="container-fluid order-date">
                    <div class="row no-gutters">
                        <div class="col-xs-4 ">${item.time}</div>
                        <div class="col-xs-4 ">订单号：1000${item.id}</div>
                        <div class="col-xs-4 ">买家id：${item.buyerId}</div>

                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row no-gutters order-msg">
                        <div class="col-xs-3 ">
                            <img class="img-responsive" src="images/${item.product.pic1}" >
                        </div>
                        <!-- <div class="col-xs-1 "></div> -->
                        <div class="col-xs-2 ">${item.product.name}</div>
                        <div class="col-xs-3 ">${item.product.homePageDetail}</div>
                        <div class="col-xs-1" >￥${item.product.price}</div>
                        <div class="col-xs-1 "></div>
                        <div class="col-xs-2 " ><a href="#">同意退货</a></div>
                    </div>
                </div>
            </div>
            <div class="col-xs-1 "></div>
        </div>
    </div>
    <div class="my-dividing"></div>
</c:forEach>
</div>

<!-- 我的信息-->
<div class="body" id="my-collection">
    <!-- 个人信息 -->
    <div class="container-fluid">
        <div class="row no-gutters">
            <div class="col-xs-1 "></div>
            <div class="col-xs-10 ">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>用户名</th>
                        <th>电话号码</th>
                        <th>地址</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${user.name}</td>
                        <td>${user.telNumber}</td>
                        <td>${user.address}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-xs-1 "></div>
        </div>
    </div>
    <div id="my-collection-btn">
        <button type="button" class="btn btn-default">修改信息</button>
    </div>
    <!-- 修改个人信息内容块 -->
    <!-- <div class="container-fluid">
        <div class="row no-gutters">
            <div class="col-xs-1 "></div>
                <div class="col-xs-10 ">
                    <div class="row no-gutters">
                        <div class="col-ms-3 ">
                        <div class="col-ms-6 "> -->
    <form id="change-msg" method="post" action="/updateUser">
        <div class="form-group">
            <input type="text" class="form-control" name="name" value="${user.name}">
            <input type="text" name="password" value="${user.password}" style="display: none">
            <input type="text" name="id" value="${user.id}" style="display: none">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="telNumber" value="${user.telNumber}">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="address" value="${user.address}">
        </div>
        <div id="change-msg-btn">
            <button type="submit" class="btn btn-default">确定修改</button>
        </div>
    </form>
    <!-- 					<div class="col-ms-6 ">
                    </div>
                </div>
            </div>
        <div class="col-xs-1 "></div>
    </div>
</div> -->
    <!-- 我的收藏 -->
    <div id="my-coll">
<c:forEach items="${pdCollections}" var="item" varStatus="count" >
    <div class="container-fluid" >
        <div class="row no-gutters">
            <div class="col-xs-1 "></div>
            <div class="col-xs-10 ">
                <div class="container-fluid order-date">
                    <div class="row no-gutters">
                        <div class="col-xs-3" style="font-weight: bold;">我的收藏</div>
                        <div class="col-xs-6 ">卖家：${item.sellerId}</div>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="row no-gutters order-msg">
                        <div class="col-xs-3 ">
                            <img class="img-responsive" src="images/${item.product.pic1}" >
                        </div>
                        <!-- <div class="col-xs-1 "></div> -->
                        <div class="col-xs-2 ">${item.product.name}</div>
                        <div class="col-xs-3 ">${item.product.homePageDetail}</div>
                        <div class="col-xs-1" >￥${item.product.price}</div>
                        <div class="col-xs-1 "></div>
                        <div class="col-xs-2 ">未售出</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-1 "></div>
        </div>
    </div>
    <div class="my-dividing"></div>
</c:forEach>
    </div>
</div>

<script type="text/javascript">
    $(function () {
        var buyBtn = $("#buy-btn");
        var myBuy = $("#my-buy");

        var sellBtn = $("#sell-btn");
        var mySell = $("#my-sell");

        var msgBtn = $("#msg-btn");
        var myCollection =$("#my-collection");

        var changeMyMsgBtn = $("#my-collection-btn");
        var changeMsg = $("#change-msg");
        var myColl = $("#my-coll");//我的信息下面的我的收藏模块
        // #change-msg  my-coll
        buyBtn.click(function(){
            buyBtn.addClass("choose");
            sellBtn.removeClass("choose");
            msgBtn.removeClass("choose");

            myBuy.css("display","block");
            mySell.css("display","none");
            myCollection.css("display","none");
        });

        sellBtn.click(function(){
            sellBtn.addClass("choose");
            buyBtn.removeClass("choose");
            buyBtn.addClass("nonChoose");
            msgBtn.removeClass("choose");

            mySell.css("display","block");
            myBuy.css("display","none");
            myCollection.css("display","none");
        });

        msgBtn.click(function(){
            msgBtn.addClass("choose");
            sellBtn.removeClass("choose");
            buyBtn.removeClass("choose");
            buyBtn.addClass("nonChoose");

            myCollection.css("display","block");
            myBuy.css("display","none");
            mySell.css("display","none");
        });

        changeMyMsgBtn.click(function(){
            changeMyMsgBtn.css("display","none");
            myColl.css("display","none");
            changeMsg.css("display","block");
        });


    });

</script>

</body>
</html>
