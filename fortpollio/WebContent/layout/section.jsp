<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script>
	$(document).ready(function(){
		$("#spreadBtn03").click(function(){
			if($("#hiddenList02").is(":visible")){
				/*toggleClass(기존클래스명 바꿀클래스명);*/
				$("#spreadBtn03").toggleClass("btn01 btn02");
				$("#hiddenList02").slideUp();
				}else{
					$("#spreadBtn03").toggleClass("btn02 btn01");
					$("#hiddenList02").slideDown();
					}
			});
		});
	</script>
</head>
<body>
	<section class="section">
	<div class="img">
		<h2>TOP FASHION</h2>
		<img src="layout/top1.png" width="300">
		<img src="layout/top2.jpg" width="300" height="350">
		<img src="layout/top3.jpg" width="300" height="350">
	</div>	
		
		<div class="cate">
			<button id="spreadBtn03" class="btn01">펼치기</button>
			<ul id="hiddenList02" class="example01" style="display: none;">
				<li>내용</li>
				<li>내용</li>
				<li>내용</li>
			</ul>
		</div>
		
		
	</section>
</body>
</html>