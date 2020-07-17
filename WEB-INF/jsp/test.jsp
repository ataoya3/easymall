<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>

    <!-- 引入Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
    <!--引入Jquery bootstrap.js-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <style type="text/css">
        .allsearchBox{
            /* background-color: #ffff7f; */
        }
        .header{
            background-color: #fdfcfc;
        }
        .dividing{

            background-color: #eae8f0;
        }
        .body{
            padding: 0;
            margin: 0;
            border: 0;
            background-color: #fcfbfb;
        }
        .body img{
            margin-top: 15px;
            border: 1px solid #d0d0d0;
            width: 300px;
        }
        /* .pi{
            margin: 0;
            padding: 0;
            border: 0;
        } */
        .footer{
            height: 200px;
            background-color: #00002b;
        }

    </style>
</head>
<body>
<div class="container-fluid pi">
        <c:forEach items="${pdPictures}" var="item" varStatus="count">
            <div class="col-sm-2 ">
                <img class=" img-responsive" src="images/${item.p1}.webp" >
                <span>${detail}</span> <span style="color: red;">￥35</span>
            </div>
            <c:if test="${count.count %5==0 && count.count >0}">
                </div>
<div class="container-fluid pi">
            </c:if>
        </c:forEach>
</div>


</body>
</html>
