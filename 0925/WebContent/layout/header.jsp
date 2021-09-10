<!DOCTYPE HTML>
<html>
    <head>
            <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
            <script src="http://code.jquery.com/jquery-latest.js"></script>
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link
                rel="preconnect"
                href="https://fonts.gstatic.com"
                crossorigin="crossorigin">
            <link
                href="https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap"
                rel="stylesheet">
            <link
                href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap"
                rel="stylesheet">
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

            /*
            .sidenav a {
                text-decoration: none;
                font-size: 25px;
                color: black;
                display: block;
                transition: 0.2s ease-in-out;
                text-align: left;
            }*/

            .topmenu {
                position: relative;
                padding: 20px 16px 33px;
                background-color: #fff;
                height: 300px;
            }

            .topmenu .toplogo {
                font-size: 24px;
                font-weight: normal;
                text-decoration: none;
                bottom: 75px;
                position: relative;
                text-align: left;
                width: 100px;
                right: 105px;
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

            .sidenav_logo {
                position: relative;
                bottom: 60px;
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

            .sideinfo {
                position: relative;
                background-color: #fff;
                bottom: 120px;
            }
            .sideinfo li:first-child {
                margin-left: 0;
            }

            .sideinfo li {
                margin: 0 15px 13px;
                float: left;
            }

            .sideinfo_p_1 {
                font-size: 12px;
                float: left;
                text-align: left;
                position: relative;
                line-height: 22px;
                color: #9d9ba1;
                bottom: 120px;
            }

            .sideinfo_p_1 strong {
                font-size: 13px;
                position: relative;
                line-height: 22px;
            }

            .btnMember {
                position: relative;
                float: left;
                text-align: center;
                bottom: 115px;
                margin: 0 5px 5px 0;
                padding: 0 10px;
                display: block;
                width: 100%;
            }

            .btnMember .btnGrid2 {
                display: -webkit-flex;
                display: -ms-flex;
                display: -o-flex;
                display: flex;
                -webkit-flex-wrap: wrap;
                -ms-flex-wrap: wrap;
                -o-flex-wrap: wrap;
                flex-wrap: wrap;
                -webkit-align-items: center;
                -ms-align-items: center;
                -o-align-items: center;
                align-items: center;
                margin: 19px 0 0;
            }

            .btnMember .btnGrid2 .button {
                flex: 1;
                margin: 0 5px 5px 0;
            }

            .btnMember .button.btnNormal {
                color: #000;
                background-color: #fff;
            }

            .btnMember .btnGrid2 .button:last-child {
                margin: 0 0 5px;
            }

            .btnMember .btnGrid2 .button {
                flex: 1;
                margin: 0 5px 5px 0;
            }

            .btnMember .button.btnEm {
                color: #fff;
                background-color: #000;
            }

            .btnMember .button {
                display: block;
                width: 100%;
                height: 36px;
                padding: 0 10px;
                margin: 0 0 5px;
                font-size: 14px;
                line-height: 36px;
                text-align: center;
                border: 1px solid #000;
                box-sizing: border-box;
                text-decoration: none;
            }

            .searchForm {
                position: relative;
                top: 120px;
                padding: 0 34px 0 28px;
                border-bottom: 2px solid #070712;
                background: url("https://moma-img.echosting.cafe24.com/img/1/54bf/bg_search.png") no-repeat 0 6px;
                background-size: 18px 17px;
                width: 300px;
                height: 36px;
            }

            #keyword {
                width: 100%;
                height: 32px;
                padding: 0;
                border: 0;
                font-size: 14px;
                color: #9c9ca0;
                position: relative;
                bottom: 255px;
            }

            input[type=text] {
                height: 360px;
                padding: 10px;
                font-size: 13px;
                line-height: 13px;
                font-weight: inherit;
                color: #353535;
                border: 1px solid #dedfe2;
                border-radius: 0;
                outline-style: none;
                -moz-box-sizing: border-box;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
                -webkit-appearance: none;
            }

            input[type="button"],
            input[type="text"],
            input[type="password"],
            input[type="tel"],
            input[type="image"],
            textarea {
                -webkit-appearance: none;
            }

            input[type=number],
            input[type=password],
            input[type=tel],
            input[type=text] {
                height: 36px;
            }
            input[type=number],
            input[type=password],
            input[type=tel],
            input[type=text],
            textarea {
                padding: 10px;
                font-size: 13px;
                line-height: 13px;
                font-weight: inherit;
                color: #353535;
                border: 1px solid #dedfe2;
            }
            input[type="button"],
            input[type="text"],
            input[type="password"],
            input[type="tel"],
            input[type="image"],
            textarea {
                -webkit-appearance: none;
            }
            input[type=number],
            input[type=password],
            input[type=tel],
            input[type=text] {
                height: 36px;
            }
            input[type=number],
            input[type=password],
            input[type=tel],
            input[type=text],
            textarea {
                padding: 10px;
                font-size: 13px;
                line-height: 13px;
                font-weight: inherit;
                color: #353535;
                border: 1px solid #dedfe2;
                border-radius: 0;
                outline-style: none;
                -moz-box-sizing: border-box;
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }
            input,
            select,
            textarea {
                max-width: 100%;
                font-size: 13px;
                color: #000;
                vertical-align: middle;
                outline: 0;
                border-radius: 0;
            }

            .btnDelete {
                position: absolute;
                right: 4px;
                top: 0;
                display: block;
                width: 28px;
                height: 28px;
                border: 0;
                cursor: pointer;
                overflow: hidden;
                text-indent: 100%;
                font-size: 0;
                white-space: nowrap;
                background: url("https://moma-img.echosting.cafe24.com/img/1/54bf/btn_delete.png") no-repeat center center;
                background-size: 15px 15px;
            }

            ul.sidemenu_section{
                float: center;
                padding: 0 33px;
                background-color: black;
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
                    <div class="topmenu">
                        <p class="toplogo">
                            <a href="index.jsp">0925</a>
                        </p>
                        <ul class="sideinfo">
                            <li class="wish">
                                <a href="/myshop/wish_list.html"><img
                                    src="https://moma-img.cafe24img.com/img/1/54bf/icon_wish.png"
                                    width="28"
                                    alt=""></a>
                            </li>
                            <li class="cart">
                                <a href="/order/basket.html"><img
                                    src="https://moma-img.cafe24img.com/img/1/54bf/icon_cart.png"
                                    width="20"
                                    alt="">
                                    <span class="count displaynone EC-Layout_Basket-count-display">
                                        <span class="EC-Layout-Basket-count"></span></span></a>
                            </li>
                        </ul>
                        <p class="sideinfo_p_1">
                            <strong>로그아웃 상태입니다.</strong><br>
                            가입하셔서 더 많은 정보와 혜택을 받으세요.
                        </p>
                        <div class="btnMember">
                            <div class="btnGrid2">
                                <a href="/member/agreement.html" class="button btnNormal">회원가입</a>
                                <a href="/myshop/order/list.html" class="button btnNormal">주문조회</a>
                            </div>
                            <a href="/member/login.html" class="button btnEm">로그인</a>
                        </div>
                        <div class="searchForm">
                            <input
                                id="keyword"
                                name="keyword"
                                fw-filter=""
                                fw-label="검색어"
                                fw-msg=""
                                class="inputTypeText"
                                placeholder=""
                                onmousedown="SEARCH_BANNER.clickSearchForm(this)"
                                value=""
                                type="text">
                            <button type="button" class="btnDelete">삭제</button>
                        </div>
                    </div>
                    <ul class="sidemenu_section">
                        <li>
                            <a href="All.jsp" class="link">
                                <b>All</b>
                            </a>
                        </li>
                        <li>
                            <a href="outerwear.jsp" class="link">
                                <b>Outerwear</b>
                            </a>
                        </li>
                        <li>
                            <a href="tops.jsp" class="link">
                                <b>Tops</b>
                            </a>
                        </li>
                        <li>
                            <a href="t-shirts.jsp" class="link">
                                <b>T-shirts</b>
                            </a>
                        </li>
                        <li>
                            <a href="bottoms.jsp" class="link">
                                <b>Bottoms</b>
                            </a>
                        </li>
                        <li>
                            <a href="pants.jsp" class="link">
                                <b>Pants</b>
                            </a>
                        </li>
                        <li>
                            <a href="slacks.jsp" class="link">
                                <b>Slacks</b>
                            </a>
                        </li>
                        <li>
                            <a href="skirt.jsp" class="link">
                                <b>skirt</b>
                            </a>
                        </li>
                        <li>
                            <a href="accessory.jsp" class="link">
                                <b>Accessory</b>
                            </a>
                        </li>
                        <li>
                            <a href="glasses.jsp" class="link">
                                <b>Glasses</b>
                            </a>
                        </li>
                        <li>
                            <a href="necklace.jsp" class="link">
                                <b>Necklace</b>
                            </a>
                        </li>
                        <li>
                            <a href="bag.jsp" class="link">
                                <b>Bag</b>
                            </a>
                        </li>
                    </ul>
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