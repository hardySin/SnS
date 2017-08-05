<%-- 
    Document   : seatMapping
    Created on : 9 Jul, 2017, 8:20:03 PM
    Author     : D3LL
--%>

<%@page import="userDAO.LoadApp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="userDAO.theater_interfaceImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <body>
           
    <%
              
    try {
            String theater_name=request.getParameter("theater_name");
            String theater_location=request.getParameter("theater_location");
            String theater_date=request.getParameter("theater_date");
            String theater_time=request.getParameter("theater_time");
        
            System.out.println( "theater_name :"+request.getParameter("theater_name"));
            System.out.println( "theater_location:"+request.getParameter("theater_location"));
            System.out.println( "theater_date:"+request.getParameter("theater_date"));
            System.out.println( "theater_time:"+request.getParameter("theater_time"));
        
                    String theater_nameToDta="";
                   String theater_plan="";
        String query="select * from theater_data where theater_name=?";
        PreparedStatement ps=LoadApp.conn.prepareStatement(query);
        ps.setString(1, theater_name);
        ResultSet rs=ps.executeQuery();
        while (rs.next()) {            
            theater_nameToDta=rs.getString(2);
            theater_plan=rs.getString(7);
        }
        System.out.println(theater_nameToDta+""+ theater_plan);
//        request.setAttribute("name" , theater_name);
//        request.setAttribute("location" , theater_location);
//        request.setAttribute("date" , theater_date);
//        request.setAttribute("time" , theater_time);

        if(theater_name.equals(theater_nameToDta))
        {
            System.out.println("insie the yes block hhhe!!!");
               
            response.sendRedirect(theater_plan);

        }
        
        else
        {
            System.out.println("tum say na ho pye ga bc");
        }
    } catch(Exception  e)
{
    System.out.println("error"+e);
}
    %>

                
    </body>
</html>
