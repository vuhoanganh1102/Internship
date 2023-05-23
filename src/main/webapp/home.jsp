<%--
  Created by IntelliJ IDEA.
  User: Vũ Hoàng Anh
  Date: 5/9/2023
  Time: 9:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./assets/css/new_slider.css">
    <link rel="stylesheet" href="./assets/css/content.css">

    <title>CGV</title>
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
    <div id="content">
        <div class="presenting_film">
            <div class="title_film1">
                <div class="liner1"></div>
                <h1>MOVIE SELECTION</h1>
                <div class="liner2"></div>
            </div>
            <div class="film_selector">

                <div class="rolling_film">
                    <ul id="scroll_film" class="fade">
                        <li><a href=""><img src="./assets/img/content/antman.jpg" alt=""></a></li>
                        <li><a href=""><img src="./assets/img/content/demon-slayer-poster.jpg" alt=""></a></li>
                        <li><a href=""><img src="./assets/img/content/meodihia.png" alt=""></a></li>
                        <li><a href=""><img src="./assets/img/content/shazam.jpg" alt=""></a></li>
                        <li><a href=""><img src="./assets/img/content/sieulua.jpg" alt=""></a></li>
                        <li><a href=""><img src="./assets/img/content/suzume_vn_teaser_poster.jpg" alt=""></a></li>
                        <li><a href=""><img src="./assets/img/content/tom_jerry_rerun_poster.jpg" alt=""></a></li>
                        <li><a href=""><img src="./assets/img/content/tri-ki.jpg" alt=""></a></li>
                    </ul>
                </div>
                <button type="button"onclick="nextSlides(-1,'scroll_film',4)"><svg id="front"xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Back</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M328 112L184 256l144 144"/></svg></button>
                <button type="button"onclick="nextSlides(1,'scroll_film',4)"><svg id="back" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Forward</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M184 112l144 144-144 144"/></svg></button>
            </div>
        </div>
        <div class="eventhot_film">
            <div class="title_film1">
                <div class="liner1"></div>
                <h1>EVENT</h1>
                <div class="liner2"></div>
            </div>
            <div class="film_selector">
                <div class="rolling_film">
                    <ul id="event_film" class="fade">
                        <li><a href=""><img src="./assets/img/content/event1.png" alt=""></a></li>
                        <li><a href=""><img src="./assets/img/content/event2.png" alt=""></a></li>
                        <li><a href=""><img src="./assets/img/content/event3.png" alt=""></a></li>
                        <li><a href=""><img src="./assets/img/content/event4.png" alt=""></a></li>
                    </ul>
                </div>
                <button type="button"onclick="nextSlides(-1,'event_film',0)"><svg id="front"xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Back</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M328 112L184 256l144 144"/></svg></button>
                <button type="button"onclick="nextSlides(1,'event_film',0)"><svg id="back" xmlns="http://www.w3.org/2000/svg" class="ionicon" viewBox="0 0 512 512"><title>Chevron Forward</title><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M184 112l144 144-144 144"/></svg></button>
            </div>
        </div>
        <div class="film-news">

            <div class="box1">
                <a href=""><img src="./assets/img/content/dream-party.jpg" alt=""></a>
            </div>
            <div class="box2">
                <a href=""><img src="./assets/img/content/U22.png" alt=""></a>
            </div>
            <div class="box3">
                <a href=""><img src="./assets/img/content/uu-dai.png" alt=""></a>
            </div>

        </div>
    </div>
    <jsp:include page="footer.jsp"/>
    <script src="./assets/javascript/slider/front_back_content.js">
    </script>
</body>
</html>
