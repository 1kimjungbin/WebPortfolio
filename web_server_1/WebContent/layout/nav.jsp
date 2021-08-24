<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="css/nav.css">
	<style>
		input:-ms-input-placeholder {color: black;}
		input::-webkit-input-placeholder {color: black;}
		input::-moz-placeholder {color: black;}
	</style>
</head>
<body>
<!-- <nav id="nav">
		<ul class="list">
			<li><a href="man.jsp">MAN</a></li>
			<li><a href="join.jsp">WOMAN</a></li>
			<li><a href="member_list.jsp">SEARCH</a></li>
		</ul>
		<ul class="login">
				<li><a href="login.jsp">LOGIN</a></li>
		</ul>
	</nav> -->
	
	<div class="userMenu-wrapper toggleBox">
	        <ul class="userMenu-list-notLogin userMenu-list clearfix">
            <li class="listItem loginBtn"><a href="//my.musinsa.com/login/v1/login?&amp;referer=http%3A%2F%2Fwww.musinsa.com%2Findex.php%3F">로그인</a></li>
            <li class="listItem login toggle-btn btn" data-for="loginBox" style="display:none"><span>로그인<b class="openLogin">▼</b><b class="closeLogin">▲</b></span></li>
			<li class="listItem"><a href="//my.musinsa.com"><span>마이페이지</span></a></li>
			<li class="listItem"><a href="https://store.musinsa.com/app/mypage/viewed_goods"><span>최근 본 상품</span></a></li>
			<li class="listItem"><a href="https://store.musinsa.com/app/mypage/favorite_goods"><span class="like">좋아요</span></a></li>
			<li class="listItem"><a href="https://store.musinsa.com/app/cart"><span>장바구니</span><span class="cartCnt ui-member-state-cart-count">0</span></a></li>
			<li class="listItem"><a href="https://store.musinsa.com/app/mypage/order_list_opt"><span>주문배송조회</span></a></li>
			<li class="listItem"><a href="https://store.musinsa.com/app/cs"><span>고객센터</span></a></li>
			            <li class="listItem">
				<a href="/?m=banner&amp;a=linkmove&amp;uid=3499" class="event2018Link" style="color:#000"><span>회원 가입 EVENT. 신규가입 시, 최대 15만원 할인 쿠폰팩 / 무신사 스탠다드 990원 구매 기회</span></a>
			</li>
			         </ul>
	    </div>
	
</body>
</html>