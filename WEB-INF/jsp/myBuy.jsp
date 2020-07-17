<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>易换二手-我的购买</title>
    <!-- 引入Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
    <!--引入Jquery bootstrap.js-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        .top{
            margin-top: 0.5em;
            background-color: #f5f5f5;
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
        .order-date{
            background-color: #ebebeb;
            padding: 0.2em 0 0.2em 0.5em;

            margin-bottom: 5px;
            /* border-radius: 3px; */
        }
        .order-msg{
           padding-bottom: 3px;
            border: 1px solid #f3f3f3;
            /* background-color: #f3f3f3; */
        }
        .order-msg:hover{
            border: 1px solid #adadad;
        }
        .body img{
            width: 6em;
            height: 5em;
            padding-left: 1em;
        }
        .dividing{
            height: 1em;
        }
        .tobuy{
            background-color: #6e6ea5;
            padding: 1px;
            color: #ffffff;
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
                        <div class="col-xs-2 "><div class="choose" >我的购买</div></div>
                    </a>
                    <a href="/mySell">
                        <div class="col-xs-2 "><div class="nonChoose" >我的发布</div></div>
                    </a>
                    <a href="/myCollection">
                        <div class="col-xs-2 "><div class="nonChoose">我的收藏</div></div>
                    </a>
                    <a href="/myMsg">
                        <div class="col-xs-2 "><div class="nonChoose">我的信息</div></div>
                    </a>

                </div>
            </div>
<%--body--%>
            <div class="body">
 <c:forEach items="${orderFormsAsBuyer}" var="item" varStatus="count" >
                <div class="order-msg">
                    <!-- 一条订单信息 -->
                    <div class="order-date">
                        <div class="row no-gutters ">
                            <div class="col-xs-4 ">${item.time}</div>
                            <div class="col-xs-4 ">订单号:${item.id + 10000}</div>
                            <div class="col-xs-4 ">卖家id：${item.sellerId}</div>
                        </div>
                    </div>

                    <div class="row no-gutters ">
                        <div class="col-xs-3 ">
                            <img class="img-responsive" src="/images/${item.product.pic1}" >
                        </div>
                        <!-- <div class="col-xs-2" >潮T</div> -->
                        <div class="col-xs-5 "><span style="font-weight: bold;">${item.product.name}</span> ${item.product.homePageDetail}</div>
                        <div class="col-xs-2" >￥${item.product.price}</div>
                        <c:if test="${item.product.sellStatus == 1}">
                            <div class="col-xs-2 ">未出售</div>
                        </c:if>
                        <c:if test="${item.product.sellStatus == 2}">
                            <div class="col-xs-2 ">未发货</div>
                        </c:if>

                    </div>
                </div>
                <div class="dividing"></div>
</c:forEach>
                <!-- =======================================			 -->

<%--                <div class="order-msg">--%>
<%--                    <!-- 一条收藏信息 -->--%>
<%--                    <div class="order-date">--%>
<%--                        <div class="row no-gutters ">--%>
<%--                            <div class="col-xs-4 ">2020-05.13 23:33:56</div>--%>
<%--                            <div class="col-xs-4 ">订单号:103652</div>--%>
<%--                            <div class="col-xs-4 ">卖家昵称：阿陶呀</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="row no-gutters ">--%>
<%--                        <div class="col-xs-3 ">--%>
<%--                            <img class="img-responsive" src="images/服装1.webp" >--%>
<%--                        </div>--%>
<%--                        <div class="col-xs-5 "><span style="font-weight: bold;">潮T</span> kk日系印花短袖T恤男宽</div>--%>
<%--                        <div class="col-xs-2" >￥300</div>--%>
<%--                        <div class="col-xs-2 ">--%>
<%--                            <a href="">--%>
<%--                                <span class="tobuy">已发货</span>--%>
<%--                            </a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

            </div>

        </div>
    </div>
</div>



</body>
</html>
