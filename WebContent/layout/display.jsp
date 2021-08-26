<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#dimmedSlider {
	display: none;
	position: fixed;
	left: 0px;
	top: 0;
	right: 0px;
	bottom: 0px;
	z-index: 300;
	background: rgba(0, 0, 0, .4);
	-webkit-transition: -webkit-transform .3s ease-out;
	transition: -webkit-transform .3s ease-out;
}
</style>
</head>
<body>
	<div id="dimmedSlider" style="display: block;"></div>
</body>
</html>