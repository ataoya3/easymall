<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>易换二手</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>商品编号</th>
                <th>商品名称</th>
                <th>商品详情</th>
                <th>商品价格</th>
                <th>所属用户</th>
                <th>商品状态</th>
                <th>商品类别</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach var="item" items="${products}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.name}</td>
                    <td>${item.detail}</td>
                    <td>${item.price}</td>
                    <td>${item.uid}</td>
                    <td>${item.sellStatus}</td>
                    <td>${item.pCategory}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
