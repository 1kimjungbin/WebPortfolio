<%@ page import="test.DBconnect"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String sql="select max(custno) from member_tbl_02";

	Connection conn = DBconnect.getConnection();

        // PreparedStatement 는 오라클에 쿼리(sql문)를 보내는 그릇
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	rs.next();
	int num = rs.getInt(1)+1;
        // 가장 큰값에 +1을 더해줌
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/style.css">
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
			alert("이메일을 입력하세요.");
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
    <title>쇼핑몰 회원관리</title>
</head>
<body>
    <jsp:include page="layout/header.jsp"></jsp:include>
    <jsp:include page="layout/nav.jsp"></jsp:include>
    <div class="section">
        <h3 class="title">회원등록</h3>
        <form name="data" action="test_p.jsp" method="post" onsubmit="return checkValue()">
	    <table class="table_line">
		<tr>
		    <th>회원번호(자동발생)</th>
		    <td><input type="text" name="custno" value="<%= num %>" size="10" readonly></td>
		</tr>
		<tr>
		    <th>회원성명</th>
		    <td><input type="text" name="custname" size="10"></td>
		</tr>
		<tr>
		    <th>회원전화</th>
		    <td><input type="text" name="phone" size="15"></td>
		</tr>
		<tr>
		    <th>회원이메일</th>
		    <td><input type="text" name="email" size="25"></td>
		</tr>
		<tr>
		    <th>회원아이디</th>
		    <td><input type="text" name="signid" size="10"></td>
		</tr>
		<tr>
		    <th>회원비밀번호</th>
		    <td><input type="text" name="signpass" size="10"></td>
		</tr>
		<tr>
		    <td colspan="2" align="center">
		        <input type="submit" value="등록">
		        <!-- <input type="button" value="취소" onclick="window.location.reload()"> -->
			<input type="button" value="취소" onclick="location.href='join.jsp'">
			<input type="button" value="조회" onclick="location.href='member_list.jsp'">
		</tr>
	    </table>
	</form>
    </div>
</body>
</html>

