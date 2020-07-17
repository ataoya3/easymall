<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 陶计润
  Date: 2020-5-9
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>易换二手</title>

    <!-- 引入Bootstrap -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" >
    <!--引入Jquery bootstrap.js-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        .header{
            background-color: #e2e2e2;
            margin-bottom: 3em;
            border-radius: 3px;
        }
        .body{
            background-color: #dfdfdf;
            padding: 5px;
            border-radius: 3px;
        }
        .dividing{
            background-color: #e1e1e1;
            border-radius: 3px;
            padding-left: 5px;
            margin-bottom: 5px;
            font-weight: bold;
            color: #919191;
        }
        .form .pic{
            /* background-color: #70a8f0; */
            margin-bottom: 0.5em;
        }
        .form input[type="file"]{
            /* opacity: 0; */
        }
        .form .mybtn{
            margin: 0 auto;
            text-align: center;
        }
        .form button{
            width: 10em;
        }
    </style>
</head>

<body>

<div class="container-fluid">
    <div class="row no-gutters ">
        <div class="col-sm-1 "> </div>
        <div class="col-sm-10 ">


            <!-- head -->
            <div class="header">
                <!-- logo-->
                <div class="container-fluid">
                    <a href="/show" >
                        <div class="col-xs-3 "><img class="img-responsive" src="images/logo.png" alt="logo"></div>
                    </a>
                </div>
            </div>

            <!-- form -->
            <div class="row no-gutters ">
                <div class="col-sm-3 "> </div>
                <div class="col-sm-6 ">
                    <div class="body">
                        <div class="form">
                            <%--enctype="multipart/form-data"以二进制发送--%>
                            <form method="post" action="/upLoad" enctype="multipart/form-data">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="name" value="" placeholder="宝贝名称">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="detail" value="" placeholder="宝贝描述">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="price" value="" placeholder="宝贝价格">
                                </div>
                                <div class="form-group">
                                    <div class="dividing"> 请上传宝贝图片</div>
                                    <div class="pic">
                                        <input type="file" 	name="upload1">
                                    </div>
                                    <div class="pic">
                                        <input type="file"  name="upload2">
                                    </div>
                                    <div class="pic">
                                        <input type="file"  name="upload3" >
                                    </div>
                                    <!-- <p class="help-block">Example block-level help text here.</p> -->
                                </div>
                                <div class="mybtn">
                                    <button type="submit" class="btn btn-default">发布</button>
                                </div>
                            </form>
                            <div class="col-sm-3 "> </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
</div>


</body>
</html>
