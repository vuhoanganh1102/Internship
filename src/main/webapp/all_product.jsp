<%--
  Created by IntelliJ IDEA.
  User: Vũ Hoàng Anh
  Date: 5/25/2023
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Welcome to CGV</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./assets/css/new_slider.css">
    <link rel="stylesheet" href="./assets/css/content.css">
    <link rel="stylesheet" href="assets/css/all_product.css">
    <style>
        #slider{
            background-image: url("assets/img/slider/background.png");
        }
    </style>
</head>
<body>

<jsp:include page="header.jsp"/>
    <div id="slider">
        <div class="slider_content">
            <ul class="marquee-content">
                <li class="first"><a href=""><img id="img_automic1" src="./assets/img/slider/slider1.jpg"></a></li>
                <li><a href=""><img class="img_automic"src="./assets/img/slider/slider2.jpg"></a></li>
                <li><a href=""><img class="img_automic"src="./assets/img/slider/slider3.jpg"></a></li>
                <li><a href=""><img class="img_automic"src="./assets/img/slider/slider4.png"></a></li>
                <li><a href=""><img class="img_automic"src="./assets/img/slider/slider5.jpg"></a></li>
                <li><a href=""><img class="img_automic"src="./assets/img/slider/slider6.png"></a></li>
                <li><a href=""><img class="img_automic"src="./assets/img/slider/slider1.jpg"></a></li>
            </ul>
            <!-- <button onclick="subDivs(1)" class="svg1"><svg xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Back</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M328 112L184 256l144 144"/></svg></button> -->
            <!-- <button onclick="plusDivs(1)" class="svg2"><svg xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Forward</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M184 112l144 144-144 144"/></svg></button> -->
        </div>
    </div>

    <div class="home">

        <c:forEach items="${listP}" var="i" >
            <div class="home_product" >
                <img style="width:240px; height: 360px;" src="${i.image}" alt="">
                <div class="product_title">
                    <h1>${i.name}</h1>
                </div>
                <div class="price_product">
                    <h2>Price: ${i.price}</h2>
                    <h3 style="padding-left: 10px;">Quantity: ${i.number}</h3>
                </div>
                <div class="footer_product">
                    <div class="detail_product or_product">
                        <a href=""><h3>Details</h3></a>
                    </div>
                    <div class="Add_product or_product">
                        <a href="add-to-cart?id=${i.id}"><h3>Add to cart</h3></a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>


    <jsp:include page="footer.jsp"/>
</body>
</html>
