<%-- 
    Document   : bookingInfo.jsp
    Created on : 4 Jun, 2017, 4:03:03 PM
    Author     : D3LL
--%>

<%@page import="usersession.seatInterImpl"%>
<%@page import="java.util.Arrays"%>
<%@page import="usersession.Seat"%>
<%@page import="usersession.UserSession"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="userDAO.theater_interfaceImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this template file, choose Tools | Templates
and open theTo change this license header, choose License Headers in Project Properties.
 template in the editor.
-->
<html>
    <head>
      
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="bookingInfo.css">
   <link rel="stylesheet" type="text/css" href="header_footer_colour.css">

  <style>
     input[type="checkbox"]:disabled  
      {
          background-color: black;
     border: 2px solid black;
    border-radius: 5px;

      }
    
      </style>

    </head>
    
    <body id="myPage">
               <div class="Container"><h1 class="heading">Sound and Stage</h1>
           </div>  

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      
      <a class="navbar-brand" href="#myPage">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
          <li><a href="main.jsp#myPage">HOME</a></li>
        <li><a href="main.jsp#theater">THEATER</a></li>
        <li><a href="main.jsp#contact">CONTACT</a></li>
        <li><a href="index.jsp">LOGOUT</a></li>
   <%String user_name1=request.getSession().getAttribute("name").toString().toUpperCase();%>
        <li><a href="#welcome">Hi,<%=user_name1%></a></li>
      </ul>
    </div>
  </div>
</nav>
                <%
             
                    theater_interfaceImplement threDao=new theater_interfaceImplement();
                                      StringBuilder bf=(StringBuilder)threDao.seat_dta();   
        
                                          String str=bf.toString();
     
%>
        <div class="row"> 
            <form  action="bookingInfo" method="post" >
            <div class="col-md-8">
                <div  onclick="" class="well well-lg" style="width: 100%;height: 800px;box-shadow: 5px 10px 70px #333333">
    <!--first row -->
    <p><center>Normal Rs.100</center></p>
 <hr>
 
    <div class="col-md-6" id="seats">
        <input id="seat-1" class="seat-select" type="checkbox" value="1A,100" <%if( str.contains("1A") ){%>disabled<%}%>>
           <label for="seat-1" class="seat" style="text-align: center" >1A</label>
      <input id="seat-2" class="seat-select" type="checkbox" value="2A,100" name="seat" <%if( str.contains("2A") ){%>disabled<%}%> />
      <label for="seat-2" class="seat" style="text-align: center">2A</label>
      <input id="seat-3" class="seat-select" type="checkbox" value="3A,100  " name="seat" <%if( str.contains("3A") ){%>disabled<%}%>  />
      <label for="seat-3" class="seat" style="text-align: center">3A</label>
      <input id="seat-4" class="seat-select" type="checkbox" value="4A,100" name="seat" <%if( str.contains("4A") ){%>disabled<%}%>/>
      <label for="seat-4" class="seat" style="text-align: center">4A</label>
      <input id="seat-5" class="seat-select" type="checkbox" value="5A,100" name="seat" <%if( str.contains("5A") ){%>disabled<%}%>/>
      <label for="seat-5" class="seat" style="text-align: center">5A</label>
      <input id="seat-6" class="seat-select" type="checkbox" value="6A,100" name="seat" <%if( str.contains("6A") ){%>disabled<%}%>/>
      <label for="seat-6" class="seat" style="text-align: center">6A</label>
      <input id="seat-7" class="seat-select" type="checkbox" value="7A,100" name="seat" <%if( str.contains("7A") ){%>disabled<%}%>/>
      <label for="seat-7" class="seat" style="text-align: center">7A</label>
          </div>
      <div class="col-md-6" id="seats">
           <input id="seat-8" class="seat-select" type="checkbox" value="8A,100" <%if( str.contains("8A") ){%>disabled<%}%>>
           <label for="seat-8" class="seat" style="text-align: center" >8A</label>
    
    <input id="seat-9" class="seat-select" type="checkbox" value="9A,100" name="seat" <%if( str.contains("9A") ){%>disabled<%}%> />
      <label for="seat-9" class="seat" style="text-align: center">9A</label>
      <input id="seat-10" class="seat-select" type="checkbox" value="10A,100" name="seat" <%if( str.contains("10A") ){%>disabled<%}%>  />
      <label for="seat-10" class="seat" style="text-align: center">10A</label>
      <input id="seat-11" class="seat-select" type="checkbox" value="11A,100" name="seat" <%if( str.contains("11A") ){%>disabled<%}%>/>
      <label for="seat-11" class="seat" style="text-align: center">11A</label>
      <input id="seat-12" class="seat-select" type="checkbox" value="12A,100" name="seat" <%if( str.contains("12A") ){%>disabled<%}%>/>
      <label for="seat-12" class="seat" style="text-align: center">12A</label>
      <input id="seat-13" class="seat-select" type="checkbox" value="13A,100" name="seat" <%if( str.contains("13A") ){%>disabled<%}%>/>
      <label for="seat-13" class="seat" style="text-align: center">13A</label>
      <input id="seat-14" class="seat-select" type="checkbox" value="14A,100" name="seat" <%if( str.contains("14A") ){%>disabled<%}%>/>
      <label for="seat-14" class="seat" style="text-align: center">14A</label>
      
       </div>
      <!--end of the first row-->
    <!--staring of the second row-->
      <div class="col-md-6" id="seats">
           <input id="seat-15" class="seat-select" type="checkbox" value="1B,100" <%if( str.contains("1B") ){%>disabled<%}%>>
           <label for="seat-15" class="seat" style="text-align: center" >1B</label>
    
      <input id="seat-16" class="seat-select" type="checkbox" value="2B,100" name="seat" <%if( str.contains("2B") ){%>disabled<%}%> />
      <label for="seat-16" class="seat" style="text-align: center">2B</label>
      <input id="seat-17" class="seat-select" type="checkbox" value="3B,100" name="seat" <%if( str.contains("3B") ){%>disabled<%}%>  />
      <label for="seat-17" class="seat" style="text-align: center">3B</label>
      <input id="seat-18" class="seat-select" type="checkbox" value="4B,100" name="seat" <%if( str.contains("4B") ){%>disabled<%}%>/>
      <label for="seat-18" class="seat" style="text-align: center">4B</label>
      <input id="seat-19" class="seat-select" type="checkbox" value="5B,100" name="seat" <%if( str.contains("5B") ){%>disabled<%}%>/>
      <label for="seat-19" class="seat" style="text-align: center">5B</label>
      <input id="seat-20" class="seat-select" type="checkbox" value="6B,100" name="seat" <%if( str.contains("6B") ){%>disabled<%}%>/>
      <label for="seat-20" class="seat" style="text-align: center">6B</label>
      <input id="seat-21" class="seat-select" type="checkbox" value="7B,100" name="seat" <%if( str.contains("7B") ){%>disabled<%}%>/>
      <label for="seat-21" class="seat" style="text-align: center">7B</label>
          </div>
      <div class="col-md-6" id="seats">
           <input id="seat-22" class="seat-select" type="checkbox" value="8B,100" <%if( str.contains("8B") ){%>disabled<%}%>>
           <label for="seat-22" class="seat" style="text-align: center" >8B</label>
    
    <input id="seat-23" class="seat-select" type="checkbox" value="9B,100" name="seat" <%if( str.contains("9B") ){%>disabled<%}%> />
      <label for="seat-23" class="seat" style="text-align: center">9B</label>
      <input id="seat-24" class="seat-select" type="checkbox" value="10B,100" name="seat" <%if( str.contains("10B") ){%>disabled<%}%>  />
      <label for="seat-24" class="seat" style="text-align: center">10B</label>
      <input id="seat-25" class="seat-select" type="checkbox" value="11B,100" name="seat" <%if( str.contains("11B") ){%>disabled<%}%>/>
      <label for="seat-25" class="seat" style="text-align: center">11B</label>
      <input id="seat-26" class="seat-select" type="checkbox" value="12B,100" name="seat" <%if( str.contains("12B") ){%>disabled<%}%>/>
      <label for="seat-26" class="seat" style="text-align: center">12B</label>
      <input id="seat-27" class="seat-select" type="checkbox" value="13B,100" name="seat" <%if( str.contains("13B") ){%>disabled<%}%>/>
      <label for="seat-27" class="seat" style="text-align: center">13B</label>
      <input id="seat-28" class="seat-select" type="checkbox" value="14B,100" name="seat" <%if( str.contains("14B") ){%>disabled<%}%>/>
      <label for="seat-28" class="seat" style="text-align: center">14B</label>
      
       </div>
    <!--end of the second row-->
        <!--staring of the third row-->
      <div class="col-md-6" id="seats">
           <input id="seat-29" class="seat-select" type="checkbox" value="1C,100" <%if( str.contains("1C") ){%>disabled<%}%>>
           <label for="seat-29" class="seat" style="text-align: center" >1C</label>
    
      <input id="seat-30" class="seat-select" type="checkbox" value="2C,100" name="seat" <%if( str.contains("2C") ){%>disabled<%}%> />
      <label for="seat-30" class="seat" style="text-align: center">2C</label>
      <input id="seat-31" class="seat-select" type="checkbox" value="3C,100" name="seat" <%if( str.contains("3C") ){%>disabled<%}%>  />
      <label for="seat-31" class="seat" style="text-align: center">3C</label>
      <input id="seat-32" class="seat-select" type="checkbox" value="4C,100" name="seat" <%if( str.contains("4C") ){%>disabled<%}%>/>
      <label for="seat-32" class="seat" style="text-align: center">4C</label>
      <input id="seat-33" class="seat-select" type="checkbox" value="5C,100" name="seat" <%if( str.contains("5C") ){%>disabled<%}%>/>
      <label for="seat-33" class="seat" style="text-align: center">5C</label>
      <input id="seat-34" class="seat-select" type="checkbox" value="6C,100" name="seat" <%if( str.contains("6C") ){%>disabled<%}%>/>
      <label for="seat-34" class="seat" style="text-align: center">6C</label>
      <input id="seat-35" class="seat-select" type="checkbox" value="7C,100" name="seat" <%if( str.contains("7C") ){%>disabled<%}%>/>
      <label for="seat-35" class="seat" style="text-align: center">7C</label>
          </div>
      <div class="col-md-6" id="seats">
           <input id="seat-36" class="seat-select" type="checkbox" value="8C,100" <%if( str.contains("8C") ){%>disabled<%}%>>
           <label for="seat-36" class="seat" style="text-align: center" >8C</label>
    
    <input id="seat-37" class="seat-select" type="checkbox" value="9C,100" name="seat" <%if( str.contains("9C") ){%>disabled<%}%> />
      <label for="seat-37" class="seat" style="text-align: center">9C</label>
      <input id="seat-38" class="seat-select" type="checkbox" value="10C,100" name="seat" <%if( str.contains("10C") ){%>disabled<%}%>  />
      <label for="seat-38" class="seat" style="text-align: center">10C</label>
      <input id="seat-39" class="seat-select" type="checkbox" value="11C,100" name="seat" <%if( str.contains("11C") ){%>disabled<%}%>/>
      <label for="seat-39" class="seat" style="text-align: center">11C</label>
      <input id="seat-40" class="seat-select" type="checkbox" value="12C,100" name="seat" <%if( str.contains("12C") ){%>disabled<%}%>/>
      <label for="seat-40" class="seat" style="text-align: center">12C</label>
      <input id="seat-41" class="seat-select" type="checkbox" value="13C,100" name="seat" <%if( str.contains("13C") ){%>disabled<%}%>/>
      <label for="seat-41" class="seat" style="text-align: center">13C</label>
      <input id="seat-42" class="seat-select" type="checkbox" value="14C,100" name="seat" <%if( str.contains("14C") ){%>disabled<%}%>/>
      <label for="seat-42" class="seat" style="text-align: center">14C</label>
      
       </div>
    <!--end of the third row-->
 <p><center>Silver Rs.200</center></p>
 <hr>
        <!--staring of the fourth row-->    
      <div class="col-md-6" id="seats">
           <input id="seat-43" class="seat-select" type="checkbox" value="1D,200" <%if( str.contains("1D") ){%>disabled<%}%>>
           <label for="seat-43" class="seat" style="text-align: center" >1D</label>
    
      <input id="seat-44" class="seat-select" type="checkbox" value="2D,200" name="seat" <%if( str.contains("2D") ){%>disabled<%}%> />
      <label for="seat-44" class="seat" style="text-align: center">2D</label>
      <input id="seat-45" class="seat-select" type="checkbox" value="3D,200" name="seat" <%if( str.contains("3D") ){%>disabled<%}%>  />
      <label for="seat-45" class="seat" style="text-align: center">3D</label>
      <input id="seat-46" class="seat-select" type="checkbox" value="4D,200" name="seat" <%if( str.contains("4D") ){%>disabled<%}%>/>
      <label for="seat-46" class="seat" style="text-align: center">4D</label>
      <input id="seat-47" class="seat-select" type="checkbox" value="5D,200" name="seat" <%if( str.contains("5D") ){%>disabled<%}%>/>
      <label for="seat-47" class="seat" style="text-align: center">5D</label>
      <input id="seat-48" class="seat-select" type="checkbox" value="6D,200" name="seat" <%if( str.contains("6D") ){%>disabled<%}%>/>
      <label for="seat-48" class="seat" style="text-align: center">6D</label>
      <input id="seat-49" class="seat-select" type="checkbox" value="7D,200" name="seat" <%if( str.contains("7D") ){%>disabled<%}%>/>
      <label for="seat-49" class="seat" style="text-align: center">7D</label>
          </div>
      
      <div class="col-md-6" id="seats">
           <input id="seat-50" class="seat-select" type="checkbox" value="8D,200" <%if( str.contains("8D") ){%>disabled<%}%>>
           <label for="seat-50" class="seat" style="text-align: center" >8D</label>
    
    <input id="seat-51" class="seat-select" type="checkbox" value="9D,200" name="seat" <%if( str.contains("9D") ){%>disabled<%}%> />
      <label for="seat-51" class="seat" style="text-align: center">9D</label>
      <input id="seat-52" class="seat-select" type="checkbox" value="10D,200" name="seat" <%if( str.contains("10D") ){%>disabled<%}%>  />
      <label for="seat-52" class="seat" style="text-align: center">10D</label>
      <input id="seat-53" class="seat-select" type="checkbox" value="11D,200" name="seat" <%if( str.contains("11D") ){%>disabled<%}%>/>
      <label for="seat-53" class="seat" style="text-align: center">11D</label>
      <input id="seat-54" class="seat-select" type="checkbox" value="12D,200" name="seat" <%if( str.contains("12D") ){%>disabled<%}%>/>
      <label for="seat-54" class="seat" style="text-align: center">12D</label>
      <input id="seat-55" class="seat-select" type="checkbox" value="13D,200" name="seat" <%if( str.contains("13D") ){%>disabled<%}%>/>
      <label for="seat-55" class="seat" style="text-align: center">13D</label>
      <input id="seat-56" class="seat-select" type="checkbox" value="14D,200" name="seat" <%if( str.contains("14D") ){%>disabled<%}%>/>
      <label for="seat-56" class="seat" style="text-align: center">14D</label>
      
       </div>
    <!--end of the fourth row-->
 
        <!--staring of the fifth row-->
      <div class="col-md-6" id="seats">
           <input id="seat-57" class="seat-select" type="checkbox" value="1E,200" <%if( str.contains("1E") ){%>disabled<%}%>>
           <label for="seat-57" class="seat" style="text-align: center" >1E</label>
    
      <input id="seat-58" class="seat-select" type="checkbox" value="2E,200" name="seat" <%if( str.contains("2E") ){%>disabled<%}%> />
      <label for="seat-58" class="seat" style="text-align: center">2E</label>
      <input id="seat-60" class="seat-select" type="checkbox" value="3E,200" name="seat" <%if( str.contains("3E") ){%>disabled<%}%>  />
      <label for="seat-60" class="seat" style="text-align: center">3E</label>
      <input  id="seat-61" class="seat-select" type="checkbox" value="4E,200" name="seat" <%if( str.contains("4E") ){%>disabled<%}%>/>
      <label for="seat-61" class="seat" style="text-align: center">4E</label>
      <input id="seat-62" class="seat-select" type="checkbox" value="5E,200" name="seat" <%if( str.contains("5E") ){%>disabled<%}%>/>
      <label for="seat-62" class="seat" style="text-align: center">5E</label>
      <input id="seat-63" class="seat-select" type="checkbox" value="6E,200" name="seat" <%if( str.contains("6E") ){%>disabled<%}%>/>
      <label for="seat-63" class="seat" style="text-align: center">6E</label>
      <input id="seat-64" class="seat-select" type="checkbox" value="7E,200" name="seat" <%if( str.contains("7E") ){%>disabled<%}%>/>
      <label for="seat-64" class="seat" style="text-align: center">7E</label>
          </div>
      <div class="col-md-6" id="seats">
           <input id="seat-65" class="seat-select" type="checkbox" value="8E,200" <%if( str.contains("8E") ){%>disabled<%}%>>
           <label for="seat-65" class="seat" style="text-align: center" >8E</label>
    
    <input id="seat-66" class="seat-select" type="checkbox" value="9E,200" name="seat" <%if( str.contains("9E") ){%>disabled<%}%> />
      <label for="seat-66" class="seat" style="text-align: center">9E</label>
      <input id="seat-67" class="seat-select" type="checkbox" value="10E,200" name="seat" <%if( str.contains("10E") ){%>disabled<%}%>  />
      <label for="seat-67" class="seat" style="text-align: center">10E</label>
      <input id="seat-68" class="seat-select" type="checkbox" value="11E,200" name="seat" <%if( str.contains("11E") ){%>disabled<%}%>/>
      <label for="seat-68" class="seat" style="text-align: center">11E</label>
      <input id="seat-69" class="seat-select" type="checkbox" value="12E,200" name="seat" <%if( str.contains("12E") ){%>disabled<%}%>/>
      <label for="seat-69" class="seat" style="text-align: center">12E</label>
      <input id="seat-70" class="seat-select" type="checkbox" value="13E,200" name="seat" <%if( str.contains("13E") ){%>disabled<%}%>/>
      <label for="seat-70" class="seat" style="text-align: center">13E</label>
      <input id="seat-71" class="seat-select" type="checkbox" value="14E,200" name="seat" <%if( str.contains("14E") ){%>disabled<%}%>/>
      <label for="seat-71" class="seat" style="text-align: center">14E</label>
      
       </div>
    <!--end of the fifth row-->
 <p><center>Gold Rs.350</center></p>
 <hr>
        <!--staring of the sixth row-->
      <div class="col-md-6" id="seats">
           <input id="seat-72" class="seat-select" type="checkbox" value="1F,350" <%if( str.contains("1F") ){%>disabled<%}%>/>
           <label for="seat-72" class="seat" style="text-align: center" >1F</label>
    
      <input id="seat-73" class="seat-select" type="checkbox" value="2F,350" name="seat" <%if( str.contains("2F") ){%>disabled<%}%> />
      <label for="seat73" class="seat" style="text-align: center">2F</label>
      <input id="seat-74" class="seat-select" type="checkbox" value="3F,350" name="seat" <%if( str.contains("3F") ){%>disabled<%}%>  />
      <label for="seat-74" class="seat" style="text-align: center">3F</label>
      <input id="seat-75" class="seat-select" type="checkbox" value="4F,350" name="seat" <%if( str.contains("4F") ){%>disabled<%}%>/>
      <label for="seat-75" class="seat" style="text-align: center">4F</label>
      <input id="seat-76" class="seat-select" type="checkbox" value="5F,350" name="seat" <%if( str.contains("5F") ){%>disabled<%}%>/>
      <label for="seat-76" class="seat" style="text-align: center">5F</label>
      <input id="seat-77" class="seat-select" type="checkbox" value="6F,350" name="seat" <%if( str.contains("6F") ){%>disabled<%}%>/>
      <label for="seat-77" class="seat" style="text-align: center">6F</label>
      <input id="seat-78" class="seat-select" type="checkbox" value="7F,350" name="seat" <%if( str.contains("7F") ){%>disabled<%}%>/>
      <label for="seat-78" class="seat" style="text-align: center">7F</label>
          </div>
      <div class="col-md-6" id="seats">
           <input id="seat-79" class="seat-select" type="checkbox" value="8F,350" <%if( str.contains("8F") ){%>disabled<%}%>>
           <label for="seat-79" class="seat" style="text-align: center" >8F</label>
    
    <input id="seat-80" class="seat-select" type="checkbox" value="9F,350" name="seat" <%if( str.contains("9F") ){%>disabled<%}%> />
      <label for="seat-80" class="seat" style="text-align: center">9F</label>
      <input id="seat-81" class="seat-select" type="checkbox" value="10F,350" name="seat" <%if( str.contains("10F") ){%>disabled<%}%>  />
      <label for="seat-81" class="seat" style="text-align: center">10F</label>
      <input id="seat-82" class="seat-select" type="checkbox" value="11F,350" name="seat" <%if( str.contains("11F") ){%>disabled<%}%>/>
      <label for="seat-82" class="seat" style="text-align: center">11F</label>
      <input id="seat-83" class="seat-select" type="checkbox" value="12F,350" name="seat" <%if( str.contains("12F") ){%>disabled<%}%>/>
      <label for="seat-84" class="seat" style="text-align: center">12F</label>
      <input id="seat-84" class="seat-select" type="checkbox" value="13F,350" name="seat" <%if( str.contains("13F") ){%>disabled<%}%>/>
      <label for="seat-85" class="seat" style="text-align: center">13F</label>
      <input id="seat-85" class="seat-select" type="checkbox" value="14F,350" name="seat" <%if( str.contains("14F") ){%>disabled<%}%>/>
      <label for="seat-86" class="seat" style="text-align: center">14F</label>
      
       </div>
    <!--end of the sixth row-->

          <!--staring of the seven row-->
      <div class="col-md-6" id="seats">
           <input id="seat-87" class="seat-select" type="checkbox" value="1G,350" <%if( str.contains("1G") ){%>disabled<%}%>>
           <label for="seat-87" class="seat" style="text-align: center" >1G</label>
    
      <input id="seat-88" class="seat-select" type="checkbox" value="2G,350" name="seat" <%if( str.contains("2G") ){%>disabled<%}%> />
      <label for="seat-88" class="seat" style="text-align: center">2G</label>
      <input id="seat-89" class="seat-select" type="checkbox" value="3G,350" name="seat" <%if( str.contains("3G") ){%>disabled<%}%>  />
      <label for="seat-89" class="seat" style="text-align: center">3G</label>
      <input id="seat-90" class="seat-select" type="checkbox" value="4A,350" name="seat" <%if( str.contains("4G") ){%>disabled<%}%>/>
      <label for="seat-90" class="seat" style="text-align: center">4G</label>
      <input id="seat-91" class="seat-select" type="checkbox" value="5G,350" name="seat" <%if( str.contains("5G") ){%>disabled<%}%>/>
      <label for="seat-91" class="seat" style="text-align: center">5G</label>
      <input id="seat-92" class="seat-select" type="checkbox" value="6G,350" name="seat" <%if( str.contains("6G") ){%>disabled<%}%>/>
      <label for="seat-92" class="seat" style="text-align: center">6G</label>
      <input id="seat-93" class="seat-select" type="checkbox" value="7G,350" name="seat" <%if( str.contains("7G") ){%>disabled<%}%>/>
      <label for="seat-93" class="seat" style="text-align: center">7G</label>
          </div>
      <div class="col-md-6" id="seats">
           <input id="seat-01" class="seat-select" type="checkbox" value="8G,350" <%if( str.contains("8G") ){%>disabled<%}%>>
           <label for="seat-01" class="seat" style="text-align: center" >8G</label>
    
    <input id="seat-02" class="seat-select" type="checkbox" value="9G,350" name="seat" <%if( str.contains("9G") ){%>disabled<%}%> />
      <label for="seat-02" class="seat" style="text-align: center">9G</label>
      <input id="seat-03" class="seat-select" type="checkbox" value="10G,350" name="seat" <%if( str.contains("10G") ){%>disabled<%}%>  />
      <label for="seat-03" class="seat" style="text-align: center">10G</label>
      <input id="seat-04" class="seat-select" type="checkbox" value="11G,350" name="seat" <%if( str.contains("11G") ){%>disabled<%}%>/>
      <label for="seat-04" class="seat" style="text-align: center">11G</label>
      <input id="seat-05" class="seat-select" type="checkbox" value="12G,350" name="seat" <%if( str.contains("12G") ){%>disabled<%}%>/>
      <label for="seat-05" class="seat" style="text-align: center">12G</label>
      <input id="seat-06" class="seat-select" type="checkbox" value="13G,350" name="seat" <%if( str.contains("13G") ){%>disabled<%}%>/>
      <label for="seat-06" class="seat" style="text-align: center">13G</label>
      <input id="seat-07" class="seat-select" type="checkbox" value="14G,350" name="seat" <%if( str.contains("14G") ){%>disabled<%}%>/>
      <label for="seat-07" class="seat" style="text-align: center">14G</label>
      
       </div>
    <!--end of the seven row-->

          <!--staring of the eight row-->
      <div class="col-md-6" id="seats">
           <input id="seat-001" class="seat-select" type="checkbox" value="1H,350" <%if( str.contains("1H") ){%>disabled<%}%>>
           <label for="seat-001" class="seat" style="text-align: center" >1H</label>
    
      <input id="seat-002" class="seat-select" type="checkbox" value="2H,350" name="seat" <%if( str.contains("2H") ){%>disabled<%}%> />
      <label for="seat-002" class="seat" style="text-align: center">2H</label>
      <input id="seat-003" class="seat-select" type="checkbox" value="3H,350" name="seat" <%if( str.contains("3H") ){%>disabled<%}%>  />
      <label for="seat-003" class="seat" style="text-align: center">3H</label>
      <input id="seat-004" class="seat-select" type="checkbox" value="4H,350" name="seat" <%if( str.contains("4H") ){%>disabled<%}%> />
      <label for="seat-004" class="seat" style="text-align: center">4H</label>
      <input id="seat-005" class="seat-select" type="checkbox" value="5H,350" name="seat" <%if( str.contains("5H") ){%>disabled<%}%> />
      <label for="seat-005" class="seat" style="text-align: center">5H</label>
      <input id="seat-006" class="seat-select" type="checkbox" value="6H,350" name="seat" <%if( str.contains("6H") ){%>disabled<%}%> />
      <label for="seat-006" class="seat" style="text-align: center">6H</label>
      <input id="seat-007" class="seat-select" type="checkbox" value="7H,350" name="seat" <%if( str.contains("7H") ){%>disabled<%}%> />
      <label for="seat-007" class="seat" style="text-align: center">7H</label>
          </div>
      <div class="col-md-6" id="seats">
           <input id="seat-0001" class="seat-select" type="checkbox" value="8H,350" <%if( str.contains("8H") ){%>disabled<%}%>>
           <label for="seat-0001" class="seat" style="text-align: center" >8H</label>
    
    <input id="seat-0002" class="seat-select" type="checkbox" value="9H,350" name="seat" <%if( str.contains("9H") ){%>disabled<%}%> />
      <label for="seat-0002" class="seat" style="text-align: center">9H</label>
      <input id="seat-0003" class="seat-select" type="checkbox" value="10H,350" name="seat" <%if( str.contains("10H") ){%>disabled<%}%>  />
      <label for="seat-0003" class="seat" style="text-align: center">10H</label>
      <input id="seat-0004" class="seat-select" type="checkbox" value="11H,350" name="seat" <%if( str.contains("11H") ){%>disabled<%}%> />
      <label for="seat-0004" class="seat" style="text-align: center">11H</label>
      <input id="seat-0005" class="seat-select" type="checkbox" value="12H,350" name="seat" <%if( str.contains("12H") ){%>disabled<%}%> />
      <label for="seat-0005" class="seat" style="text-align: center">12H</label>
      <input id="seat-0006" class="seat-select" type="checkbox" value="13H,350" name="seat" <%if( str.contains("13H") ){%>disabled<%}%> />
      <label for="seat-006" class="seat" style="text-align: center">13H</label>
      <input id="seat-0007" class="seat-select" type="checkbox" value="14H,350" name="seat" <%if( str.contains("14H") ){%>disabled<%}%> />
      <label for="seat-0007" class="seat" style="text-align: center">14H</label>
      
       </div>
    <!--end of the eight row -->

               
      <br><br><br><br>

<h2 style="text-align: center;padding: 10% 20% 0px 20%;">All Eyes this way</h2>
<!--            <hr id="curve" style="padding-left: 20%;padding-right: 20%"> -->

        </div>
      
            </div>
            
            <div class="col-md-4" >
                <div class="well well-lg" style="width: 100%;height: 700px;box-shadow: 5px 10px 70px #333333;">
                      <img src="image/harryMet SejalPicHover.jpg" style="width:100%"/>
                    <h1><%!String movie="Jab Harry Met Sejal";%><%=movie%>     </h1>   
                    <hr>
                    <h4><b>Place:</b><%!String place="Movietime ,Raja Garden";%><%=place%></h4>
                    &nbsp;&nbsp;           
                            <h4><b>Timing:</b><%!String timing="10:45Am";%><%=timing%></h4>
                    &nbsp;&nbsp;           
                   
                            <h4><b>Date:</b><%!String date="28 July,2017";%><%=date%></h4>
                                    
            <input type="hidden" name="user_info" value="${movie}">
            <input type="hidden" name="user_info" value="${place}">
            <input type="hidden" name="user_info" value="${timing}">
            <input type="hidden" name="user_info" value="${date}">
                            <%--<%
                                request.getAttribute("name");
                                request.getAttribute("location");
                                request.getAttribute("date");
                                request.getAttribute("time");
%>--%>

        </div>
            </div>
      <button type="submit" class="btn btn-danger"   style="width: 32%;height:70px ">Proceed</button>
            </form>
        </div>
                            
<!--                            data-toggle="modal" data-target="#User_info"-->
             
<!--   <div id="User_info" class="modal fade" role="dialog">
  <div class="modal-dialog">

     Modal content
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
       <%-- <form action="bookingInfo" method="post">
            <input type="hidden" name="user_info" value="${seats}">
                        <input type="hidden" name="user_info" value="${movie}">
            <input type="hidden" name="user_info" value="${place}">
            <input type="hidden" name="user_info" value="${timing}">
            <input type="hidden" name="user_info" value="${date}">
       --%>
    <div class="form-group">
        <input  style="width:60%;height:60px;border-radius: 12px" type="text" class="form-control" required  placeholder="Your Address" name="user_info">
    </div>
    <div class="form-group">
        <input  style="width:60%;height:60px;border-radius: 12px" required type="email" class="form-control" id="pwd" placeholder="Your ID Number" name="user_info">
    </div>
 
              <button class="btn btn-info" style="border-radius:12px;background-color: #6699ff;width:200px">Proceed</button>         

          </form>
      </div>
      <div class="modal-body">
        
      </div>
      
    </div>

  </div>
</div>-->
    </body>
</html>
