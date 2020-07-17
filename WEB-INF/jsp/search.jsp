<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      .col-sm-1,.col-sm-2,.col-sm-10,col-sm-12{
        padding: 0;
      }
      .header{
        background-color: #ffffff;
        padding-bottom: 0.5em;
        margin-bottom: 0.5em;
      }
      .add{
        margin: 0;
        text-align: center;
      }
      a{
        text-decoration: none;
      }
      .dividing{
        height: 0.1em;
        background-color: #b9b9b9;
      }
      .main{
        margin-top: 0.2em;
        margin-bottom: 1em;
      }
      .carousel-inner img {
        width: 100%;
        height: 100%;
        border-radius: 5px;
      }
      .body{
        padding: 0;
        margin: 0 auto;
        text-align: center;
        border: 0;
        background-color: white;
       /* height: 600px;*/
      }
      .body img{
        /*margin-top: 20px;*/
        border: 2px solid #b92c28;
        width: 300px;
        height: 230px;
      }
      .pic1{
        /*margin-top: 20px;*/
        margin: 20px 3px 0 3px;
        border: 1px solid #d0d0d0;
        padding-top: 3px;
        padding-left: 3px;
        padding-right: 3px;
      }
      .pic1:hover{
        border: 2px solid #E95D33;
      }
      .body button{
      /*消除button的默认样式*/
        margin: 0;
        padding: 0;
        border: 1px solid transparent;  /*自定义边框*/
        outline: none;    /* 消除默认点击蓝色边框效果*/
      }
      .footer{
        height: 10em;
        background-color: #00002b;
      }

    </style>

  </head>
  <body>
<%-- <a href=${pageContext.request.contextPath}"/allProduct">点击查看全部商品</a>--%>

<%--header--%>
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
        <ul class="nav navbar-nav" >
          <li style="float: right;"><a href="/myMsg">我的主页</a></li>
          <li style="float: right;"><a href="/myBuy">${user.name}</a> </li>
          <li style="float: right;"><a href="/myCollection">我的收藏</a></li>
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
                      <input type="text" class="form-control" name="productName" value="${productName}">
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

<%--    主题内容，显示全部图片等--%>
<div class="body">

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
                <div style="font-size: small"><span style="color: red">￥</span><span style="color: red;font-size: 1.5em">${item.price}</span></div>
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

</div>

<div class="footer">
  <div></div>
</div>

<script type="text/javascript">
  $ (function () {
    $("#myCarousel").carousel('cycle');
  });

</script>

  </body>
</html>
