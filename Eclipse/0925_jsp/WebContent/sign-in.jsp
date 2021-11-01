<%@ page import="test.DBconnect"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String sql="select max(custno) from member_tbl_02";

	Connection conn = DBconnect.getConnection();

	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	int num = 100001;
	
	if(rs.next()) {
		num = rs.getInt(1)+1;
	}
        // 가장 큰값에 +1을 더해줌
%>


<!DOCTYPE HTML>
<html>
    <head>
        <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
        <script src="https://code.jquery.com/jquery-latest.js"></script>
        <link rel="stylesheet" href="css/sign-in.css">
        <link
            rel="preconnect"
            href="https://fonts.gstatic.com"
            crossorigin="crossorigin">
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

        <script type="text/javascript">
            $(document).ready(function () {

                $("#headers").load("layout/header.jsp"); // 원하는 파일 경로를 삽입하면 된다
                $("#navs").load("layout/nav.jsp"); // 추가 인클루드를 원할 경우 이런식으로 추가하면 된다

            });
        </script>

 
        <style>
            body {
                min-height: 100vh;
                background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
                background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
                background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
                background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
                background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
            }
            .input-form {
                max-width: 680px;
                margin-top: 80px;
                padding: 32px;
                background: #fff;
                -webkit-border-radius: 10px;
                -moz-border-radius: 10px;
                border-radius: 10px;
                -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
                -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
                box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
            }
        </style>
        <script type="text/javascript">
	function checkValue() {
		if(!document.data.custname.value) {
			alert("회원성명을 입력하세요.");
			document.data.custname.focus();
			return false;
		} else if(!document.data.phone.value) {
			alert("전화번호를 입력하세요.");
			document.data.phone.focus();
			return false;
		} else if (!document.data.email.value) {
			alert("주소를 입력하세요.");
			document.data.email.focus();
			return false;
		} else if (!document.data.signid.value) {
			alert("가입일자를 입력하세요.");
			document.data.signid.focus();
			return false;
		} else if (!document.data.signpass.value) {
			alert("고객등급을 입력하세요.");
			document.data.signpass.focus();
			return false;
		} 
	}
    </script>
        
        <meta charset="UTF-8" pageEncoding="UTF-8">
        <title>0925</title>
    </head>
    <body>
        <header>
            <div id="headers"></div>
        </header>
        <nav id="sign-in_nav"></nav>
        <div id="titleArea">
            <h2 class="title">회원가입</h2>
            <span class="xans-element- xans-layout xans-layout-mobileaction ">
                <a href="#none" onclick="history.go(-1);return false;" class="btnBack">뒤로가기</a>
            </span>
        </div>

        <div class="container">
            <div class="input-form-backgroud row">
                <div class="input-form col-md-12 mx-auto">
                    <h4 class="mb-3">회원가입</h4>
                    <form
                        name="data"
                        class="validation-form"
                        novalidate="novalidate"
                        action="sign-in_p.jsp"
                        method="post"
                        onsubmit="return checkValue()">
                        <div class="row">
						<table class="table_line">
							<tr>
								<th>회원번호(자동발생)</th>
								<td><input type="text" name="custno" value="<%=num%>"
									size="10" readonly></td>
							</tr>
						</table>
						<div class="col-md-6 mb-3">
                                <label for="name">이름</label>
                                <input
                                    type="text"
                                    name="custname"
                                    class="form-control"
                                    id="name"
                                    placeholder=""
                                    value=""
                                    required="required">
                                <div class="invalid-feedback">
                                    이름을 입력해주세요.
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="phone">전화번호</label>
                                <input
                                    type="text"
                                    name="phone"
                                    class="form-control"
                                    id="nickname"
                                    placeholder=""
                                    value=""
                                    required="required">
                                <div class="invalid-feedback">
                                    전화번호를 입력해주세요.
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="email">이메일</label>
                            <input
                                type="email"
                                name="signemail"
                                class="form-control"
                                id="email"
                                placeholder="you@example.com"
                                required="required">
                            <div class="invalid-feedback">
                                이메일을 입력해주세요.
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="name">ID</label>
                            <input
                                type="text"
                                name="signid"
                                class="form-control"
                                id="name"
                                placeholder=""
                                value=""
                                required="required">
                            <div class="invalid-feedback">
                                ID를 입력해주세요.
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="name">PASSWORD</label>
                            <input
                                type="password"
                                name="signpass"
                                class="form-control"
                                id="name"
                                placeholder=""
                                value=""
                                required="required"
                                onchange="check_pw()">
                            <div class="invalid-feedback">
                                비밀번호를 입력해주세요.
                            </div>
                        </div>

                        <hr class="mb-4">
                        <div class="custom-control custom-checkbox">
                            <input
                                type="checkbox"
                                class="custom-control-input"
                                id="aggrement"
                                required="required">
                            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
                        </div>
                        <div class="mb-4"></div>
                        <button class="btn btn-primary btn-lg btn-block" type="submit">가입 완료</button>
                    </form>
                </div>
            </div>
        </div>
        <script>
            window.addEventListener('load', () => {
                const forms = document.getElementsByClassName('validation-form');
                Array
                    .prototype
                    .filter
                    .call(forms, (form) => {
                        form.addEventListener('submit', function (event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form
                                .classList
                                .add('was-validated');
                        }, false);
                    });
            }, false);
        </script>
    </body>
</html>