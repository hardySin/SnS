<%-- 
    Document   : seatMapping
    Created on : 9 Jul, 2017, 8:20:03 PM
    Author     : D3LL
--%>

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
                theater_interfaceImplement threDao=new theater_interfaceImplement();
               ArrayList list=(ArrayList)threDao.theater_dta();
               
                    String theater_name=request.getParameter("theater_name");
                    System.out.println("theater_name :"  +theater_name );

        %>
             <c:set var="theater_dta" value="<%=list%>"/> 
             
         
        
         <c:forEach var="j" items="${theater_dta}"> 
             
<%--<c:set var="url" value="0" scope="request"/>  --%>           
  <c:if test="${theater_name}.equals(${j.getTheater_name()})">  
     <c:redirect url="${j.getTheater_plan()}"/>  
  </c:if>
  
        </c:forEach>

                
    </body>
</html>
