<%--
  Created by IntelliJ IDEA.
  User: 陶计润
  Date: 2020-5-8
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
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
            background-color: #f8f8f8;
        }
        .col-xs-1,.col-xs-2,.col-xs-3,.col-xs-4,.col-xs-10{
            padding: 0;
        }
        .header{
            background-color: #FFFFFF;
            /* width: 15em; */
            margin-bottom: 0.5em;
            margin-top: 0.5em;
        }
        .dividing{
            height: 0.2em;
            background-color: #999999;
        }
        .address{
            margin-bottom: 1em;
            background-color: #d3ddea;
            border-radius: 3px;
            padding: 5px 10px;
        }
        .order{
            margin-bottom: 1em;
            background-color: #d3ddea;
            border-radius: 3px;
            padding: 5px 10px;
        }
        .order img{
            width: 5em;
            margin-top: 2px;
            padding-left: 1.5em;
        }
        #my-btn{
            text-align: center;
            margin: 0 auto ;
        }

    </style>
</head>
<body>

<!-- logo -->
<div class="header">
    <div class="container-fluid">
        <div class="row no-gutters ">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
                <a href="/show" >
                    <img class="img-responsive" src="images/logo.png" alt="logo">
                </a>
            </div>
            <div class="col-xs-1"></div>
        </div>
    </div>
</div>

<div class="body">
    <div class="container-fluid">

        <!-- 地址 -->
        <div class="row no-gutters ">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
                <div class="address">
                    <div style="font-weight: bold;">收货地址</div>
                    <div class="dividing"></div>
                    <!-- 地址信息 -->
                    <div>
                        <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                        <span>${buyer.address}（${buyer.name} 收）${buyer.telNumber}</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-1"></div>
        </div>

        <!-- 订单 -->
        <div class="row no-gutters ">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
                <div class="order">
                    <div style="font-weight: bold;">确认订单信息</div>
                    <div class="dividing"></div>
                    <!-- 订单信息 -->
                    <div class="row no-gutters ">
                        <div class="col-xs-3">
                            <img class="img-responsive" src="images/${product.pic1}" >
                        </div>
                        <div class="col-xs-3 "><span style="font-weight: bold">${product.name}</span> &nbsp; ${product.homePageDetail}</div>
                        <div class="col-xs-2" >￥${product.price}</div>
                        <div class="col-xs-3 ">卖家昵称：${seller.name}</div>
                    </div>
                </div>
            </div>
            <div class="col-xs-1"></div>
        </div>

        <div id="my-btn">
            <form action="/addOrderForm" method="post">
                <input name="buyerId" value="${buyer.id}" style="display: none">
                <input name="sellerId" value="${seller.id}"  style="display: none">
                <input name="pid" value="${product.id}" style="display: none">
                <button type="submit" id="buyBtn" class="btn btn-primary">货到付款</button>
            </form>
        </div>


    </div>
</div>

<script type="text/javascript">
    $ (function () {

        var buyBtn = $("#buyBtn");
        buyBtn.click(function () {
            alert('下单成功！');
        });

    });

</script>

</body>
</html>
