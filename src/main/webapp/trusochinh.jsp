<%--
  Created by IntelliJ IDEA.
  User: Vũ Hoàng Anh
  Date: 5/22/2023
  Time: 11:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trụ sở chính</title>
    <link rel="stylesheet" href="./assets/css/trusochinh.css">
</head>
<body>
    <jsp:include page="header.jsp"/>
    <div id="available_job">
      <div class="toggle_job">
        <div class="toggle_job_title"><a style="text-decoration: none; color: black;"href="tuyendung.jsp"><h4>TUYỂN DỤNG</h4></a></div>
        <div class="toggle_job_title"><a style="text-decoration: none; color: black;"href="trusochinh.jsp"><h4>TRỤ SỞ CHÍNH</h4></a></div>
        <div class="toggle_job_title"><a style="text-decoration: none; color: black;"href=""><h4>CỤM RẠP</h4></a></div>
      </div>
      <div class="col_main">
        <ul class="products-list" id="jobs-list">
          <li class="item odd" style="margin-top:5px;">
            <a href="IT_java.jsp" class="jobs-shop">
              <span class="product-name">IT Java Developer Specialist</span>
              <span class="desc std"><p><strong>Working location:</strong> Head Office - Ho Chi Minh City, District 10&nbsp;</p></span>
            </a>
          </li>
          <li class="item even" style="margin-top:5px;">
            <a href="https://www.cgv.vn/default/careers/project-designer-senior-analyst/" class="jobs-shop">
              <span class="product-name">Architect Designer Manager</span>
              <span class="desc std"><p><strong>Working location:</strong> Head Office - Ho Chi Minh City, District 10</p></span>
            </a>
          </li>
          <li class="item odd" style="margin-top:5px;">
            <a href="https://www.cgv.vn/default/careers/strategy-manager/" class="jobs-shop">
              <span class="product-name">Strategy Manager</span>
              <span class="desc std"><p><strong>Working location:</strong>&nbsp;Head Office - Ho Chi Minh City, District 10</p>						</span>
            </a>
          </li>
          <li class="item even" style="margin-top:5px;">
            <a href="https://www.cgv.vn/default/careers/voc-specialist/" class="jobs-shop">
              <span class="product-name">QA - Call Center Specialist</span>
              <span class="desc std"><p><strong>Working location:</strong> Call center - Crescent Mall - District 7, HCMC</p>						</span>
            </a>
          </li>
          <li class="item odd" style="margin-top:5px;">
            <a href="https://www.cgv.vn/default/careers/film-programming-data/" class="jobs-shop">
              <span class="product-name">Film Programming - Data Analyst</span>
              <span class="desc std"><p><strong>Working location:&nbsp;</strong>Head Office - Ho Chi Minh City, District 10</p>						</span>
            </a>
          </li>
          <li class="item even" style="margin-top:5px;">
            <a href="https://www.cgv.vn/default/careers/film-pr-freelancer/" class="jobs-shop">
              <span class="product-name">Film PR Freelancer</span>
              <span class="desc std">
                    <p><strong>Working Location:</strong> Head Office - Ho Chi Minh City, District 10</p></span>
            </a>
          </li>
          <li class="item odd" style="margin-top:5px;">
            <a href="https://www.cgv.vn/default/careers/film-marketing-freelancer/" class="jobs-shop">
              <span class="product-name">Film Marketing Freelancer</span>
              <span class="desc std"><p><strong>Working Location:</strong> Head Office - Ho Chi Minh City, District 10</p></span>
            </a>
          </li>
          <li class="item last even" style="margin-top:5px;">
            <a href="https://www.cgv.vn/default/careers/media-sales-senior-ho/" class="jobs-shop">
              <span class="product-name">Media Sales Manager</span>
              <span class="desc std"><p><strong>Working location:</strong> Head Office - Ho Chi Minh City, District 10</p>						</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <jsp:include page="footer.jsp"/>
</body>
</html>
