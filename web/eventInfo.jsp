<%-- 
    Document   : eventInfox`1
    Created on : 27 May, 2017, 12:28:22 PM
    Author     : D3LL
--%>

<%@page import="userDAO.theater_interfaceImplement"%>
<%@page import="userDAO.theater"%>
<%@page import="java.sql.SQLException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>event info</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="eventInfo.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <script>
        $(window).load(function() {
    $('#mydiv').hide();
});
    </script>
    <style>
          .nav-tabs li a {
      color: #29292c;
  }
           .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #ccccff;
      border: 0;
      font-size: 11px ;
      letter-spacing: 4px;
      opacity: 0.9;
      box-shadow: 5px 10px 70px #ccccff;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #333333;
  }
  body {
      
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
       font-family: Segoe Script;
        overflow-x: hidden;
  overflow-y: scroll;
  }
     
    </style>
  <body>
   
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      
      <a class="navbar-brand" href="#myPage">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
         <li><a href="main.jsp#myPage">HOME</a></li>
        <li><a href="main.jsp#theater">THEATER</a></li>
        <li><a href="movies.jsp">MOVIES</a></li>
        <li><a href="main.jsp#contact">CONTACT</a></li>
        <li><a href="index.html">LOGIN</a></li>
      </ul>
    </div>
  </div>
</nav>


   <div  class="container " style="background-image:url('image/stageBookbg.jpg');opacity: 4.599;width: 100%;
               margin-top: 4%">
                    
     <form name="myform" action="eventInfo.jsp" method="post">
        <input class="form-control"  name="dta_value"  type="text"   onkeyup="sumbit" placeholder="search by Theater Name" width="30%">
        <br><br>
        <button class="btn btn-info" type="sumbit">Search</button>
    </form>
     
  </div>
     <%
      String value=request.getParameter("dta_value");    
            theater_interfaceImplement threDao=new theater_interfaceImplement();
       threDao.selected_theater_dta(value);
                      ArrayList list=(ArrayList)threDao.selected_theater_dta("name");


%>
<div>
      <c:set var="theater_dta" value="<%=list%>"/> 
           <div class="container-fluid" style="font-family:Calibri;padding-left: 4%">
            
      <c:forEach var="i" items="${theater_dta}">
          <form action="bookingInfo.jsp" method="post" >
          <span  class="col-md-4" style="text-align: center">
              <img  src="image/go1.jpg"  width="324" height="150">
              <div style="border: 1px solid  #bdbdbd">
                  <input type="hidden" value="${i.getTheater_date()}" name="time">
              <h2  style="text-align:center ">${i.getTheater_name()}<hr style="text-align: center;width: 70px;border:1px solid #777"></h2>
          <a  data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-map-marker"style="float: left;padding-left:8%"></span></a>
          <p style="padding-right: 7%;">${i.getCapital_name()}</p>        
              <p style="text-align: center;">${i.getState_name()}</p>
<p style="text-align: center;">${i.getTheater_date()}</p>
<p style="text-align: center;">${i.getTheater_time()}</p>
<p style="text-align: center;">${i.getTheater_pic()}</p>

<button style="width: 320px;font-size:larger " class="btn">Booking</button>

              </div>
  </span>
</form>
      
        </c:forEach>
           </div>
</div>
    </body>
</html>
