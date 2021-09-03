<!DOCTYPE HTML>
<html>
    <head>
        <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
            <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
            <script src="http://code.jquery.com/jquery-latest.js"></script>
            <script>
                function openNav() {
                    document
                        .getElementById('mysidenav')
                        .style
                        .width = '350px';
                    document
                        .getElementById('header_layer')
                        .style
                        .display = "block";
                }
                function closeNav() {
                    document
                        .getElementById('mysidenav')
                        .style
                        .width = '0';
                    document
                        .getElementById('header_layer')
                        .style
                        .display = "none";
                }
                function searchLayer() {
                    document
                        .getElementById('header_layer')
                        .style
                        .display = "block";
                    document
                        .getElementById('searchLayer')
                        .style
                        .display = "block";
                }
            </script>
            <link rel="stylesheet" href="css/header-nav.css"></head>
        <style>
            /* 사이드바 스타일 */
            .sidenav {
                height: 100%;
                width: 0;
                position: fixed;
                z-index: 301;
                top: 0;
                left: 0;
                background-color: white;
                overflow-x: hidden;
                transition: 0.5s ease-in-out;
                padding-top: 60px;
                color: black;
            }

            .sidenav a {
                padding: 8px 8px 8px 32px;
                text-decoration: none;
                font-size: 25px;
                color: black;
                display: block;
                transition: 0.2s ease-in-out;
                text-align: left;
            }

            .offcanvas a:focus,
            .sidenav a:hover {
                color: black;
            }

            .closebtn {
                position: absolute;
                top: 0;
                right: 25px;
                font-size: 36px !important;
                margin-left: 50px;
            }

            .openmenu:hover {
                color: black;
                transition: 0.5s ease-in-out;
            }

            .openmenu {
                font-size: 25px;
                cursor: pointer;
                transition: 0.5s ease-in-out;
            }

            .openmenu > i {
                font-size: 30px;
            }

            #header_layer {
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0,.4);
                z-index: 300;
            }

            #searchLayer {
                top: 0;
                width: 900px;
                height: 110px;
                background-color: white;
                display: none;
                position: absolute;
                z-index: 303;
                text-align: left;
            }
            /* 미디어쿼리 적용 */
            @media screen and (max-height:450px) {
                .sidenav {
                    padding-top: 15px;
                }
                .sidenav a {
                    font-size: 18px;
                }
            }
        </style>
        <meta charset="UTF-8">
        <title>0925</title>
        <link rel="stylesheet" href="css/header-nav.css"></head>
    <body>

        <header id="header">
            <div class="cate">
                <div id="mysidenav" class="sidenav">
                    <a href="#" class="closebtn" onclick='closeNav()'>
                        <i class="fas fa-times fa-sm"></i>
                    </a>
                    <div class="sidenav_logo">
                        <h1>
                            <a href="index.jsp">0925</a>
                        </h1>
                    </div>
                    <a href="#">로그인</a>
                    <a href="#">Clients</a>
                    <a href="#">Contact</a>
                    <a href="#">Portfolio</a>
                </div>
                <span class="openmenu" onclick="openNav();">
                    <i class="fas fa-bars fa-sm"></i>
                </span>
                <div id="header_layer"></div>
            </div>

            <div class="search">
                <a href="#" class="searchbtn" onclick='searchLayer();'>
                    <i class="fas fa-search fa-lg"></i>
                </a>
            </div>

            <div id="searchLayer">
                <input type="text" placeholder="검색어를 입력해주세요.">
            </div>
            <div class="user">
                <a href="#">
                    <i class="fas fa-user fa-lg"></i>
                </a>
            </div>

            <div class="basket">
                <a href="#">
                    <i class="fas fa-shopping-basket fa-lg"></i>
                </a>
            </div>
            <h1 class="logo">
                <a href="index.jsp" class="link">0925</a>
            </h1>
        </header>
    </body>
</html>