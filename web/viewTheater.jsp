<%-- 
    Document   : viewTheater
    Created on : 21 Jun, 2017, 2:44:58 PM
    Author     : D3LL
--%>

<%@page import="userProfileDao.proInterImpl"%>
<%@page import="user2Dao.messageInterImp"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="userDAO.theater_interfaceImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <link rel="stylesheet" type="text/css" href="header_footer_colour.css">

    <body>
   <div class="Container"><h1 class="heading">Sound and Stage</h1>
           </div>  
        <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      
         <a class="navbar-brand" href="#myPage">
                  <img style="width:80px;height:70px;padding-bottom: 10px" src="image/logo3.jpg" /> 
</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">    
      <ul class="nav navbar-nav navbar-right">
                   <li><a>Hi,<%=request.getSession().getAttribute("view_name")%></a></li>
                   <li><a href="index.jsp">LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>
     
  
   <ul class="nav nav-tabs nav-justified">
    <li class="active"><a data-toggle="tab" href="#home">Ticket's Info</a></li>
    <li><a data-toggle="tab" href="#menu1">Theatre's</a></li>
    <li><a data-toggle="tab" href="#menu2">User Message<span class="badage"><%=messageInterImp.mess_count()%></span></a></li>
    <li><a data-toggle="tab" href="#menu3">Profile's</a></li>
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <%
          
                theater_interfaceImplement threDao=new theater_interfaceImplement();
               ArrayList list4 =(ArrayList)threDao.seat_table();
               
                for (int i = 0; i < list4.size(); i++) {
        
                System.out.println("list :"+list4.get(i));    
    }

       
      %>
      
    <table class="table table-striped">
    <thead  class="info">
      <tr>
        <th>Ticket ID</th>
        <th>User Name</th>   
        <th>Seat</th>
      </tr>
    </thead>
    <tbody>
        
    <c:forEach var="j" items="<%=list4%>"> 

      <tr>
      </tr> 
      </c:forEach>   
    </tbody>
  </table>
      
      
      
      
      
        
        
    </div>
    <div id="menu1" class="tab-pane fade">
      <%
                theater_interfaceImplement threDao1=new theater_interfaceImplement();
               ArrayList list=(ArrayList)threDao.theater_dta();
  //           System.out.println(list);
    //         request.setAttribute("data",list);
        %>
        
        
        <c:set var="theater_dta" value="<%=list%>"/> 
    
    <table class="table table-striped">
    <thead  class="info">
      <tr>
        <th>Theater Name</th>
        <th>Capital Name</th>   
        <th>Theater Day</th>
        <th>Theater Time</th>
        <th>Theater Plan</th>
        <th>Theater picture</th>

      </tr>
    </thead>
    <tbody>
        
    <c:forEach var="j" items="${theater_dta}"> 

      <tr>
        <td>${j.getTheater_name()}</td>
        <td>${j.getTheater_location()}</td>
        <td>${j.getTheater_date()}</td>
        <td>${j.getTheater_time()}</td>
        <td>${j.getTheater_plan()}</td>
        
        <td><img style="width: 100px;height: 100px" src="${i.getTheater_pic()}"></td>
 <td><a href="DeleteTheater?id=${j.getId()}">Delete</a></td>
      </tr> 
      </c:forEach>   
    </tbody>
  </table>
        </div>
    <div id="menu2" class="tab-pane fade">
      
        
        
        
          <%
                              messageInterImp  messImp=new messageInterImp();
                                 ArrayList list1=(ArrayList)messImp.view_mess();
        %>
        
        
        <c:set var="mess_dta" value="<%=list1%>"/> 
    
    <table class="table table-striped">
    <thead  class="info">
      <tr>
        <th>User Name</th>
        <th>Email </th>   
        <th>Phone Number</th>
        <th>Address</th>
        <th>Message</th>
      </tr>
    </thead>
    <tbody>
        
    <c:forEach var="j" items="${mess_dta}"> 

      <tr>
        <td>${j.getUsername()}</td>
        <td>${j.getEmail()}</td>
        <td>${j.getPhone_no()}</td>
        <td>${j.getAddress()}</td>
        <td>${j.getMessage()}</td>
        
<!--<%-- <td><a href="DeleteTheater?id=${j.getId()}">Delete</a></td>--%>-->
      </tr> 
      </c:forEach>   
    </tbody>
  </table>
    
    </div>
    <div id="menu3" class="tab-pane fade">
        <%
                        proInterImpl proIm=new proInterImpl();
                              ArrayList  list2=(ArrayList)proIm.view_profile();
        %>
        
        
        <c:set var="viewProfile_dta" value="<%=list2%>"/> 
    
    <table class="table table-striped"> 
    <thead  class="info">
      <tr>
        <th>First Name</th>
        <th>Last Name</th>   
        <th>Gender </th>
        <th>Email Id</th>
        <th>Phone Number</th>
        <th>User Pic</th>

      </tr>
    </thead>
    <tbody>
        
    <c:forEach var="j" items="${viewProfile_dta}"> 

      <tr>
        <td>${j.getFirstname()}</td>
        <td>${j.getLastname()}</td>
        <td>${j.getGender()}</td>
        <td>${j.getEmailId()}</td>
        <td>${j.getPhoneNumber()}</td>
        
        <td><img style="width: 100px;height: 100px" src="${i.getUSER_PIC()}"></td>
<!-- <td><a href="DeleteTheater?id=${j.getId()}">Delete</a></td>-->
      </tr> 
      </c:forEach>   
    </tbody>
  </table>   </div>
  </div>
  
</body>  
    
</html>
