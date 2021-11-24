<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="test.DBconnect"%>
<%@ page import="java.sql.*"%>

<%

request.setCharacterEncoding("UTF-8");
String sql="insert into sign_tbl values (?, ?, ?, ?, ?, ?)";

Connection conn = DBconnect.getConnection();
PreparedStatement pstmt = conn.prepareStatement(sql);

pstmt.setInt(1, Integer.parseInt(request.getParameter("custno")));
pstmt.setString(2, request.getParameter("custname"));
pstmt.setString(3, request.getParameter("phone"));
pstmt.setString(4, request.getParameter("email"));
pstmt.setString(5, request.getParameter("signid"));
pstmt.setString(6, request.getParameter("signpass"));

pstmt.executeUpdate();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>0925</title>
    </head>
    <body>
        <jsp:forward page="sign-in.jsp"></jsp:forward>


    </body>
</html>