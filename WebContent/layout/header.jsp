<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>
/* 사이드바 스타일 */
.sidenav {
	height: 100%;
	width: 0px;
	position: fixed;
	z-index: 2;
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

.sidenav a:hover, .offcanvas a:focus {
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

.openmenu>i {
	font-size: 30px;
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

/*
#dimmedSlider {
	display: none;
	position: fixed;
	left: 0px;
	top: 0;
	right: 0px;
	bottom: 0px;
	z-index: 1;
	background: rgba(0, 0, 0, .4);
	-webkit-transition: -webkit-transform .3s ease-out;
	transition: -webkit-transform .3s ease-out;
	visibility:hidden;
}*/
</style>
<script>
	function openNav() {
		document.getElementById('mysidenav').style.width = '350px';
	}
	function closeNav() {
		document.getElementById('mysidenav').style.width = '0';
	}
	$(function() {
		$(".openmenu").click(function() {
			$("#dimmedSlider").toggle();
		});
	});
</script>
<meta charset="UTF-8">
<title>0925</title>
<link rel="stylesheet" href="css/header-nav.css">
</head>
<body>

	<div id="dimmedSlider" style="display: block;"></div>

	<header id=header>
		<div class="cate">
			<div id="mysidenav" class="sidenav">
				<a href="#" class="closebtn" onclick='closeNav()'><i class="fas fa-times fa-sm"></i></a>
				<h1 class="logo_side">
				<a href="index.jsp">0925</a>
				</h1>
				<a href="#">Services</a>
				<a href="#">Clients</a> <a href="#">Contact</a>
				<a href="#">Portfolio</a>
			</div>
			<span class="openmenu" onclick="openNav();">
			<i class="fas fa-bars fa-sm"></i></span>
		</div>

		<div class="search">
			<a href="#"><i class="fas fa-search fa-lg"></i></a>
		</div>

		<div class="user">
			<a href="#"><i class="fas fa-user fa-lg"></i></a>
		</div>

		<div class="basket">
			<a href="#"><i class="fas fa-shopping-basket fa-lg"></i></a>
		</div>
		<center>
			<h1 class="logo">
				<a href="index.jsp" class="link">0925</a>
			</h1>
		</center>
	</header>
</body>
</html>