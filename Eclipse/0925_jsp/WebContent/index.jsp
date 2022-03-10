<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <link rel="stylesheet" href="css/Section.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
        <link
            rel="preconnect"
            href="https://fonts.gstatic.com"
            crossorigin="crossorigin">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap" rel="stylesheet">
        <link
            href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap"
            rel="stylesheet">
        <script type="text/javascript">   
            $(document).ready( function() {
            
            $("#header").load("layout/header.jsp");  // 원하는 파일 경로를 삽입하면 된다
            $("#nav").load("layout/nav.jsp");
            $("#section").load("layout/section.jsp");  // 추가 인클루드를 원할 경우 이런식으로 추가하면 된다
            
            });
            </script>
        <meta charset="UTF-8" pageEncoding="UTF-8">
        <!-- index 스타일-->
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            li,
            ul {
                list-style: none;
            }

            [name="slide"] {
                display: none;
            }
            .slidebox {
                max-width: 1000px;
                width: 100%;
                margin: 0 auto;
                text-align: center;
            }
            .slidebox img {
                max-width: 100%;
            }
            .slidebox .slidelist {
                white-space: nowrap;
                font-size: 0;
                overflow: hidden;
            }
            .slidebox .slideitem {
                position: relative;
                display: inline-block;
                vertical-align: middle;
                width: 100%;
                transition: all 0.35s;
            }
            .slidebox .slideitem label {
                position: absolute;
                z-index: 1;
                top: 50%;
                transform: translateY(-50%);
                padding: 20px;
                border-radius: 50%;
                cursor: pointer;
            }
            label.left {
                left: 20px;
                background-color: #5F5F5F;
                background-image: url("./img/left-arrow.png");
                background-position: center center;
                background-size: 50%;
                background-repeat: no-repeat;
            }
            label.right {
                right: 20px;
                background-color: #5F5F5F;
                background-image: url("./img/right-arrow.png");
                background-position: center center;
                background-size: 50%;
                background-repeat: no-repeat;
            }

            .paginglist {
                text-align: center;
                padding: 30px 0;
            }
            .paginglist > li {
                display: inline-block;
                vertical-align: middle;
                margin: 0 10px;
            }
            .paginglist > li > label {
                display: block;
                padding: 10px 30px;
                border-radius: 10px;
                background: #ccc;
                cursor: pointer;
            }
            .paginglist > li:hover > label {
                background: #333;
            }

            [id="slide01"]:checked ~ .slidelist .slideitem {
                transform: translateX(0);
                animation: slide01 20s infinite;
            }
            [id="slide02"]:checked ~ .slidelist .slideitem {
                transform: translateX(-100%);
                animation: slide02 20s infinite;
            }
            [id="slide03"]:checked ~ .slidelist .slideitem {
                transform: translateX(-200%);
                animation: slide03 20s infinite;
            }
            [id="slide04"]:checked ~ .slidelist .slideitem {
                transform: translateX(-300%);
                animation: slide04 20s infinite;
            }
            [id="slide05"]:checked ~ .slidelist .slideitem {
                transform: translateX(-400%);
                animation: slide05 20s infinite;
            }

            @keyframes slide01 {
                0% {
                    left: 0;
                }
                23% {
                    left: 0;
                }
                25% {
                    left: -100%;
                }
                48% {
                    left: -100%;
                }
                50% {
                    left: -200%;
                }
                73% {
                    left: -200%;
                }
                75% {
                    left: -300%;
                }
                98% {
                    left: -300%;
                }
                100% {
                    left: 0;
                }
            }
            @keyframes slide02 {
                0% {
                    left: 0;
                }
                23% {
                    left: 0;
                }
                25% {
                    left: -100%;
                }
                48% {
                    left: -100%;
                }
                50% {
                    left: -200%;
                }
                73% {
                    left: -200%;
                }
                75% {
                    left: 100%;
                }
                98% {
                    left: 100%;
                }
                100% {
                    left: 0;
                }
            }
            @keyframes slide03 {
                0% {
                    left: 0;
                }
                23% {
                    left: 0;
                }
                25% {
                    left: -100%;
                }
                48% {
                    left: -100%;
                }
                50% {
                    left: 200%;
                }
                73% {
                    left: 200%;
                }
                75% {
                    left: 100%;
                }
                98% {
                    left: 100%;
                }
                100% {
                    left: 0;
                }
            }
            @keyframes slide04 {
                0% {
                    left: 0;
                }
                23% {
                    left: 0;
                }
                25% {
                    left: 300%;
                }
                48% {
                    left: 300%;
                }
                50% {
                    left: 200%;
                }
                73% {
                    left: 200%;
                }
                75% {
                    left: 100%;
                }
                98% {
                    left: 100%;
                }
                100% {
                    left: 0;
                }
            }
        </style>
        <title>0925</title>
    </head>
    <body>
        <div id="index">
            <header>
                <div id="header">
                </div>
            </header>
            <!-- Nav -->
            <nav>
                <div id="nav">
                </div>
            </nav>
            <div class="slidebox">
                <input type="radio" name="slide" id="slide01" checked="checked">
                <input type="radio" name="slide" id="slide02">
                <input type="radio" name="slide" id="slide03">
                <input type="radio" name="slide" id="slide04">
                <ul class="slidelist">
                    <li class="slideitem">
                        <div>
                            <label for="slide04" class="left"></label>
                            <label for="slide02" class="right"></label>
                            <a href="product/outerwear/test.jsp"><img src="./img/wide.jpg"></a>
                        </div>
                    </li>
                    <li class="slideitem">
                        <div>
                            <label for="slide01" class="left"></label>
                            <label for="slide03" class="right"></label>
                            <a><img src="./img/wind.jpg"></a>
                        </div>
                    </li>
                    <li class="slideitem">
                        <div>
                            <label for="slide02" class="left"></label>
                            <label for="slide04" class="right"></label>
                            <a><img src="./img/image3.jpg"></a>
                        </div>
                    </li>
                    <li class="slideitem">
                        <div>
                            <label for="slide03" class="left"></label>
                            <label for="slide01" class="right"></label>
                            <a><img src="./img/image4.jpg"></a>
                        </div>
                    </li>
                </ul>
            </div>
            <section>
                <div id="section"></div>
            </section>
            </div>
        </body>
    </html>