        <%-- 
    Document   : AdminConsole
    Created on : 31 May, 2017, 1:58:40 AM
    Author     : D3LL
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
       
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
<link rel="stylesheet" type="text/css" href="header_footer_colour.css">

        <script>
        function isNumberKey(evt){  
    var charCode = (evt.which) ? evt.which : evt.keyCode
    if (charCode != 46 && charCode > 31 
	&& (charCode < 48 || charCode > 57))
        return false;
        return true;
	}
		   
    function ValidateAlpha(evt)
    {
        var keyCode = (evt.which) ? evt.which : evt.keyCode
        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
         
        return false;
            return true;
    }
      function ValidateAlpha2(evt)
    {
        var keyCode = (evt.which) ? evt.which : evt.keyCode
        if ((keyCode < 65 || keyCode > 90) && (keyCode < 97 || keyCode > 123) && keyCode != 32)
         
        return false;
            return true;
    }
    function validateNumber(event) {
    var key = window.event ? event.keyCode : event.which;
    if (event.keyCode === 8 || event.keyCode === 46) {
        return true;
    } else if ( key < 48 || key > 57 ) {
        return false;
    } else {
        return true;
    }
};
    
</script>

    </head>
       
 

<body id="myPage">
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
                             <li><a>Hi,<%=request.getSession().getAttribute("web_name")%></a></li>

                             <li><a href="index.jsp">LOGOUT</a></li>
      </ul>
    </div>
  </div>
</nav>
                             <%System.out.println("admin session"+request.getSession().getAttribute("web_name"));%>  
              
               <div class="row" style="padding-left: 2%; margin-top: 5%; ">
             <!--   start of the first row -->  
                        <div class="col-sm-5" style="padding-right: 5%">
                            <h3 class="text-center" style="letter-spacing: 5px">Theatre Data</h3>       
                            <form name="myForm"  enctype="multipart/form-data" action="adminAddDta" method="post">
          <div class="form-group">
                 <select name="Dta_val" style="width: 480px;height:35px;border-radius: 8px" >
<option>*********Select Movie*********</option>
<option>Jab Harry Met Sejal</option> 
<option>Mubarakan</option>
<option>Indu Sakar</option>
<option>Raagdesh</option>
<option>Munna Michael</option>
<option>Bareilly barfi</option>
<option>Daddy</option>
<option>Jagga Jassoos</option>
<option>Guest in London </option>
<option>A Gentleman</option>
<option>MOM</option>
<option>Tubelight</option>
<option>Bank Chor</option>
<option>Raabta</option>
<option>Sachin:A Billion Dreams</option>
<option>Behan Hogi Teri</option>
<option>Half Girl Friend</option>
<option>Hindi Medium</option>
<option>Meri Pyaari Bindu</option>
<option>Sakar 3</option>

</select>
          </div>
          
                                
                                <div class="form-group">
   <select name="Dta_val" style="width: 480px;height:35px;border-radius: 8px" >
<option>*********Select Theater Location *********</option>
<option>Wave Cinemas,TDi Paragon Mall</option> 
<option>M2K  PITAMPURA, Rani Bagh/option>
<option>Delite Diamond,Delhi Gate</option>
<option>PVR ,Shalimar Bagh</option>
<option>PVR,Vikaspuri </option>
<option>Miraj Cinemas,Subhash Nagar </option>
<option>PVR-Plaza,Connaught Place</option>
<option>PVR Rivoli,Connaught Place</option>
<option>Liberty Cinema,Karol Bagh</option>
<option>Movietime ,Raja Garden</option>
<option>Amba Cinema,Shakti Nagar</option>
<option>M2K Cinemas,Rohini</option>
<option>Cinepolis,Cross River Mall,Shahdara</option>
<option>Q Cinemas,Shahdara</option>
<option>Ritz Cinema,Kashmere Gate</option>
<option>Moti Cinema,Chandni Chowk</option>
<option>PVR Pacific Mall,Subhash Nagar</option>
<option>Movietime Cinema,Pitampura </option>

   </select>
          </div>
                                
                                
              <div class="form-group">
<select name="Dta_val" style="width: 480px;height:35px;border-radius: 8px" >
<option>*********Select Theater Date *********</option>
<option>27 July,2017</option>
<option>28 July,2017</option>
<option>29 July,2017</option>
<option>30 July,2017</option>
<option>31 July,2017</option>
<option>1 August,2017</option>
<option>2 August,2017</option>
<option>3 August,2017</option>
<option>4 August,2017</option>
<option>5 August,2017</option>
<option>6 August,2017</option>
</select>
              </div>
          <div class="form-group">
<select name="Dta_val" style="width: 480px;height:35px;border-radius: 8px" >
<option>*********Select Theater Time *********</option>
<option>10:00Am</option>
<option>10:20Am</option>
<option>10:30Am</option>
<option>10:45Am</option>
<option>11:00Am</option>
<option>11:20Am</option>
<option>11:45Am</option>
<option>12:00pm</option>
<option>12:10pm</option>
<option>12:20pm</option>
<option>12:30pm</option>
<option>12:45pm</option>
<option>01:00pm</option>
<option>02:00pm</option>
<option>Not Beyond </option>
</select>
 </div>
                                <div class="form-group">
                                    <input class="form-control" required   type="file"   name="image">
 </div>
                                
                                          
                                       <div class="form-group">
              <input class="form-control" required   type="text" placeholder="Theater Plan Name"  name="Dta_val">
 </div>                         
                                
<!--pattern="^[A-Z][a-z]*[,][0-1][0-9][:][0-9]{2}[][AMP]+$"     -->

              <button type="submit" class="btn btn-info btn-block"> Upload It </button>   </div>
                       </form>

                </div>
    
</body>
</html>