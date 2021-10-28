<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="test.DBconnect"%>
<%@ page import="java.sql.*"%>

<%

request.setCharacterEncoding("UTF-8");
String sql="insert into signin values (?, ?, ?, ?, ?, ?)";

Connection conn = DBconnect.getConnection();
PreparedStatement pstmt = conn.prepareStatement(sql);

pstmt.setInt(1, Integer.parseInt(request.getParameter("signname")));
pstmt.setString(2, request.getParameter("signname2"));
pstmt.setString(3, request.getParameter("signemail"));
pstmt.setString(4, request.getParameter("signid"));
pstmt.setString(5, request.getParameter("signpass"));
pstmt.setString(6, request.getParameter("signpass2"));

pstmt.executeUpdate();

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>0925</title>
    </head>
    <body>
        <p></p>
    </body>
</html>