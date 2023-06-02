<%--
  Created by IntelliJ IDEA.
  User: Vũ Hoàng Anh
  Date: 5/13/2023
  Time: 9:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>header</title>
    <link rel="stylesheet" href="./assets/css/header.css">
    <style>
        #header2{
            background-image: url('assets/img/header2/bg-top.png');
        }
    </style>
</head>
<body>
    <div id="header1">
        <div class="header1_img"><img src="./assets/img/header1/header1_img.jpg" alt=""></div>
        <div class="nav">
            <ul class="nav_ul">
                <li class="my_email">
                    <a href="">anhvh1102@gmail.com</a>
                </li>
                <li>
                    <img src="./assets/img/header1/recruitment_icon1.png" alt="">
                    <a href="tuyendung.jsp">Tuyển dụng</a>
                </li>
                <c:if test="${sessionScope.acc == null}">
                    <li>
                        <img src="./assets/img/header1/icon_promotion25.png" alt="">
                        <a href="signin.jsp">Kho phim</a>
                    </li>
                    <li>
                        <img src="./assets/img/header1/icon_ticket25.png" alt="">
                        <a href="signin.jsp">Vé của tôi</a>
                        <span>/</span>
                        <a href="Bill.jsp">Order History</a>
                    </li>
                    <li>
                        <img src="./assets/img/header1/icon_login25.png" alt="">
                        <a href="signin.jsp">Đăng nhập</a>
                        <a href="signup.jsp">Đăng ký</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc != null}">
                    <li>
                        <img src="./assets/img/header1/icon_promotion25.png" alt="">
                        <a href="allProduct">Kho phim</a>
                    </li>
                    <li>
                        <img src="./assets/img/header1/icon_ticket25.png" alt="">
                        <a href="cart.jsp">Vé của tôi</a>
                        <span>/</span>
                        <a href="Bill.jsp">Order History</a>
                    </li>
                    <li>
                        <img src="./assets/img/header1/icon_login25.png" alt="">
                        <a href="">${sessionScope.acc.name}</a>
                        <a href="logout">Đăng xuất</a>
                    </li>
                </c:if>


            </ul>
        </div>
    </div>
    <div id="header2">
        <ul class="header2_nav">
            <li class="header2_img">
                <a href="home"><img src="./assets/img/header2/cgvlogo.png" alt=""></a>
            </li>
            <li>
                <a href="">Phim</a>
                <ul class="header2_task1 header_ul">
                    <li><a href="">Phim đang chiếu</a></li>
                    <li><a href="">Phim sắp chiếu</a></li>
                </ul>
            </li>
            <li>
                <a href="">Rạp CGV</a>
                <ul class="header2_task2 header_ul">
                    <li><a href="">Tất cả các rạp</a></li>
                    <li><a href="">Rạp đặc biệt</a></li>
                    <li><a href="">Rạp 3D</a></li>
                </ul>
            </li>
            <li>
                <a href="">Thành viên</a>
                <ul class="header2_task3 header_ul">
                    <li><a href="">Tài khoản CGV</a></li>
                    <li><a href="">Quyền lợi</a></li>
                </ul>
            </li>
            <li>
                <a href="">CULTUREPLEX</a>
                <ul class="header2_task4 header_ul">
                    <li><a href="">Quầy Online</a></li>
                    <li><a href="">Thuê rạp & vé nhóm</a></li>
                    <li><a href="">E-CGV</a></li>
                    <li><a href="">Thẻ quà tặng</a></li>
                    <li><a href="">CGV-rules</a></li>
                </ul>
            </li>
        </ul>
    </div>

</body>
</html>
