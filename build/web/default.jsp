<%-- 
    Document   : default
    Created on : 13 Jul, 2017, 2:22:50 AM
    Author     : D3LL
--%>

<%@page import="userDAO.LoadApp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%
    String theater_name=request.getParameter("TheaterName");
    String theater_plan=request.getParameter("Theaterplan");
        String query="insert into default_theater (theater_name,theater_plan) values(?,?) ";
        PreparedStatement ps=LoadApp.conn.prepareStatement(query);
        ps.setString(1,theater_name );
        ps.setString(2, theater_plan);
        int i=ps.executeUpdate();
        System.out.println("Number of row inserted :"+ i);            

    %>
</html>
