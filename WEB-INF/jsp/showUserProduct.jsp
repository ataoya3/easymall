<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>易换二手</title>
</head>
<!-- 引入Bootstrap -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
<!--引入Jquery bootstrap.js-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<style type="text/css">

    .col-sm-1,.col-sm-2,.col-sm-10,col-sm-12{
        padding: 0;
    }
    .header{
        background-color: #ffffff;
        padding-bottom: 0.5em;
        margin-bottom: 0.5em;
    }
    .userPic{
        width: 2em;
        height: 2em;
        border-radius: 3px;
    }
    .dividing{
        height: 0.1em;
        background-color: #b9b9b9;
    }
    .body{
        margin-top: 5px;
    }
    .main_img{
        /* height: 30em; */
        width:30em;
        border: 2px solid #ff5500;
    }
    .img_detail{
        margin-top: 5px;
        background-color: #ebebeb;
        border-radius: 3px;
        height: 30em;
    }
    .headline{
        /* border: 1px solid palevioletred; */
        margin-top: 15px;
    }
    .price{
        /* background-color: #f0f0f0; */
        margin-top: 25px;

        padding-top: 5px;
        padding-left: 15px;
        padding-bottom: 5px;
        color: red;
        font-size: 2.5em;
    }
    .seller_msg{
        /* border: 1px solid palegreen; */
        padding-top: 15px;
        padding-bottom: 15px;
        font-size: 1.3em;
        text-align: center;
        margin-top: 15px;
        margin-bottom: 25px;
        background-color: #82819a;
        border-radius: 3px;
    }

    .purchase{
        /* border: 1px solid orange; */
        margin-top: 5px;
        /* padding-left: 30px;
         padding-right: 30px; */
        color: blueviolet;

    }
    .purchase .btn{
        width: 8.2em;
        height: 3.3em;
    }
    .product_detail{
        margin-top: 30px;
        /* font-family: "curlz mt";设置字体 */
        background-color: #ebebeb;
        color: #828282;
        padding:5px 20px;
        font-size: large;
        border-radius: 3px;
    }
    .detail_img img{
        width: 30em;
    }
    .detail_img{
        text-align: center;
        margin: 0 auto;
        /* margin-left: 300px; */
    }

    .recommend{
        padding: 0;
        margin: 0 auto;
        text-align: center;
        border: 0;
        background-color: white;
    }
    .recommend img{
        /*margin-top: 20px;*/
        border: 2px solid #b92c28;
        width: 300px;
        height: 230px;
    }
    .pic1{
        margin: 20px 3px 0 3px;
        border: 1px solid #d0d0d0;
        padding-top: 3px;
        padding-left: 3px;
        padding-right: 3px;
        text-align: center;
    }
    .pic1:hover{
        border: 2px solid #E95D33;
    }
    .recommend button{
        /*消除button的默认样式*/
        margin: 0;
        padding: 0;
        border: 1px solid transparent;  /*自定义边框*/
        outline: none;    /* 消除默认点击蓝色边框效果*/
    }
    .footer{
        background-color:#4d4d4d;
        height: 8em;
    }

</style>

<body>

<%--header--%>
<%--<div class="container-fluid">--%>
<%--    <div class="row no-gutters ">--%>
<%--        <div class="col-sm-1 "> </div>--%>
<%--        <div class="col-sm-10 ">--%>
<%--            <div class="header">--%>
<%--                <!-- logo -->--%>
<%--                <div class="container-fluid">--%>
<%--                    <div class="header">--%>
<%--                        <a href="/show" >--%>
<%--                            <div class="col-xs-3 "><img class="img-responsive" src="images/logo.png" alt="logo"></div>--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<div class="container-fluid">
    <div class="row no-gutters ">
        <div class="col-sm-1 "> </div>
        <div class="col-sm-10 ">
            <div class="header">
                <!-- 响应式导航栏 -->
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <!-- 导航栏头部 -->
                        <div class="navbar-header">
                            <!-- 导航栏缩小后的三道杠:class = navbar-toggle表示是一个导航栏的按钮，data-toggle="collapse"表示点击按钮需要展开或关闭导航 data-target="下方div的id值"，表示按钮要操作的列表-->
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#nav1">
                                <!-- 每个span代表一道杠 -->
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a href="${pageContext.request.contextPath}/show" class="navbar-brand">易换二手商城</a>
                        </div>
                        <div class="collapse navbar-collapse" id="nav1">
                            <c:if test="${user == null}">
                                <ul class="nav navbar-nav" >
                                    <li style="float: right;"><a href="/login">注册</a></li>
                                    <li style="float: right;"><a href="/login">请登录</a></li>
                                </ul>
                            </c:if>
                            <c:if test="${user != null}">
                                <ul class="nav navbar-nav" style="float: right;">
                                        <%--          <li ><a href="/myMsg">我的主页</a></li>--%>
                                    <li style="float: left;"><a href="/myCollection">我的收藏</a></li>
                                    <li style="float: left;"><a href="/myBuy">${userBuyer.name}</a> </li>
                                    <li style="float: left;"><a href="/myBuy"> <img class="img-responsive userPic" src="/headPhotos/${user.headPhoto}" alt=""> </a></li>
                                </ul>
                            </c:if>

                        </div>
                    </div>
                </nav>
                <!-- logo+搜索框 -->
                <div class="container-fluid">
                    <div class="header">
                        <div class="col-xs-3 ">
                            <a href="/show">
                                <img class="img-responsive" src="images/logo.png" alt="logo">
                            </a>
                        </div>
                        <div class=" col-xs-6 allsearchBox">
                            <div class="searchBox">
                                <form method="post" action="/searchProduct">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="productName" value="${productName}" placeholder="小米10">
                                        <span class="input-group-btn">
                            <button class="btn btn-default" style="height: 34px" type="submit"> <span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                      </span>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-xs-3 add">
                            <div class="row no-gutters" >
                                <a href="/sell" >
                                    <div class="row-sm-3">
                                        <img style="width: 2em;" src="images/add.png" >
                                        卖闲置
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="dividing"> </div>

<%--body--%>
<div class="body">
    <div class="container-fluid  con1">
        <div class="col-sm-1 "> </div>
        <div class="col-sm-4 ">
            <img class="img-responsive main_img  " src="images/${product.pic1}" >

        </div>

        <div class="col-sm-1 "> </div>
        <div class="img_detail col-sm-5">
            <div class="container-fluid">
                <div class="row-sm-3 headline">
                    <span class="name" style="font-weight: 800;">${product.name}</span>
                    <span class="detail">&nbsp;${product.detail}</span>
                </div>
                <div class="row-sm-3 price">￥${product.price}.00</div>
                <div class="row-sm-3 seller_msg" >
                    <div class="container-fluid">
                        <div class="col-xs-4">
                            <%-- 卖家头像--%>
                            <img style="width: 4em;height: 4em; border-radius: 50px"  src="/headPhotos/${userSeller.headPhoto}" >
                            <div>${userSeller.name}</div>
                        </div>
                        <div class="col-xs-4" style="font-weight: bolder;margin-top: 1.5em">
                            <div>在售宝贝</div>
                            <div>32 </div>
                        </div >
                        <div class="col-xs-4" style="font-weight: bolder;margin-top: 1.5em">
                            <div>累计交易</div>
                            <div>20 </div>
                        </div>
                    </div>
                </div>

                <div class="row-sm-3 purchase">
                    <div class="row no-gutters">
                        <div class="col-xs-1"></div>
                        <div class="col-xs-5">
                            <form action="/collection" method="post">
                                <input name="buyerId" value="${userBuyer.id}" style="display: none">
                                <input name="sellerId" value="${userSeller.id}"  style="display: none">
                                <input name="pid" value="${product.id}" style="display: none">
                                <input name="id" value="${product.id}" style="display: none">  <%-- 这个id传给/showUserProduct--%>
                                <button type="submit" id="collectBtn"  class="btn btn-danger">加入收藏</button>
                            </form>
                        </div>
                        <div class="col-xs-5" >
                            <form action="/buy" method="post">
                                <input name="buyerId" value="${userBuyer.id}" style="display: none">
                                <input name="sellerId" value="${userSeller.id}"  style="display: none">
                                <input name="pid" value="${product.id}" style="display: none">
                                <button type="submit"  style="float: right;" class="btn btn-danger">立即购买</button>
                            </form>
                        </div>
                        <div class="col-xs-1"></div>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-1 "> </div>
    </div>
</div>

<!-- 宝贝详情 -->
<div class="container-fluid">
    <div class="row no-gutters">
        <div class="col-sm-1 "> </div>
        <div class="col-sm-10 ">
            <div class="product_detail">宝贝详情</div>
            <div class="col-sm-1 "> </div>
        </div>
    </div>
</div>

<div class="detail_img">
    <c:if test="${product.pic1 != null}">
        <div><img class="img-responsive detail_img" src="images/${product.pic1}" style="margin: 5px auto;"></div>
    </c:if>
    <c:if test="${product.pic2 != null}" >
        <div><img class="img-responsive detail_img" src="images/${product.pic2}" style="margin: 5px auto;"></div>
    </c:if>
    <c:if test="${product.pic3 != null}" >
        <div><img class="img-responsive detail_img" src="images/${product.pic3}" style="margin: 5px auto;"></div>
    </c:if>
</div>

<!-- 推荐宝贝 -->
<div class="container-fluid">
    <div class="row no-gutters">
        <div class="col-sm-1 "> </div>
        <div class="col-sm-10 ">
            <div class="product_detail">推荐</div>
            <div class="col-sm-1 "> </div>
        </div>
    </div>
</div>


<div class="recommend">

    <div class="container-fluid ">
        <div class="row no-gutters pi">
                <c:forEach items="${products}" var="item" varStatus="count" >
                <c:if test="${count.count %5==1 }">
                    <div class="col-sm-1 "> </div>
                </c:if>
                <div class="col-sm-2">
                    <div>
                        <div class="pic1">
                            <form action="/showUserProduct" method="post">
                                <input style="display: none" type="text" name="id" value="${item.id}">
                                <button   type="submit">
                                    <img class=" img-responsive" src="images/${item.pic1}" >
                                </button>
                            </form>
                            <div style="display: none">${item.id}</div>
                            <span><span style="font-weight: bold">${item.name}</span>&nbsp;${item.homePageDetail}</span>
                            <div >
                                <span style="color: red">￥</span>
                                <span style="color: red;font-size: 1.5em">${item.price}.00</span>
                            </div>
                        </div>
                    </div>

                </div>
                    <%--      <div class="col-sm-1 "> </div>--%>
                <c:if test="${count.count %5==0 && count.count >0}">
                    <div class="col-sm-1 "> </div>
                    </div>
                    <div class="row no-gutters pi">
                </c:if>
                </c:forEach>
        </div>
    </div>

<%--    <div class="container-fluid pi">

        <c:forEach items="${products}" var="item" varStatus="count" >
        <c:if test="${count.count %5==1 }">
            <div class="col-sm-1 "> </div>
        </c:if>
        <div class="col-sm-2">
                &lt;%&ndash;传当前的product的id到controller&ndash;%&gt;
            <div class="pic1">
                <form action="/showUserProduct" method="post">
                    <input style="display: none" type="text" name="id" value="${item.id}">
                    <button   type="submit" style="background-color: inherit;padding: 0px ; color: white;font-family: none" >
                        <img class=" img-responsive" src="images/${item.pic1}" >
                    </button>
                </form>
                <div style="display: none">${item.id}</div>
                <span>${item.name}&nbsp &nbsp ${item.homePageDetail}</span>
                <div style="font-size: small"><span style="color: red;">￥${item.price}</span></div>
            </div>
        </div>
        <c:if test="${count.count %5==0 && count.count >0}">
        <div class="col-sm-1 "> </div>
    </div>
    <div class="container-fluid pi">
        </c:if>
        </c:forEach>


    </div>--%>
</div>

<div class="footer"></div>

<script type="text/javascript">
    $ (function () {
        var collectBtn = $("#collectBtn");
        collectBtn.click(function () {
            alert('收藏成功！');
        });

    });

</script>

</body>
</html>
