





<%@page import="userDAO.LoadApp"%>
<%@page import="java.sql.PreparedStatement"%>
<%-- 
    Document   : index
    Created on : 13 Jul, 2017, 9:51:59 AM
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
                  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
<link rel="stylesheet" type="text/css" href="header_footer_colour.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="index.css">
 
<!--jquery-->

<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

 
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
    
     function ValidateAlpha3(evt)
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
  <script>
            function myFunction(val)
         {  
             var email_id=document.getElementById("emailid").value;
        var first_name=document.getElementById("first_name").value;
                var last_name=document.getElementById("last_name").value;
        var username=first_name+""+last_name;
                console.log(username);
        console.log(email_id);
            $.ajax({
            type:"post",
            url:"emailChecking",
//            async: true,
            data:{email:email_id,name:username},
            success: function (data, textStatus, jqXHR) {
                        var result=data;
//                  $("#dialog").html(result);
//                $("#dialog").dialog("open");
            alert(result);
                    }
                });
                
//                 $("#dialog").dialog({
//        autoOpen: false,
//        modal: true,
//        title: "Details",
//        buttons: {
//            Close: function () {
//                $(this).dialog('close');
//            }
//        }
//    });
        }
         
   
          
          </script>  
    </head>
    <body ng-app="myApp">
           <div class="Container"><h1 class="heading">Sound and Stage</h1>
           </div>  
        <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
        <a class="navbar-brand" href="#myPage"> 
            <img style="width:80px;height:70px;padding-bottom: 10px" src="image/logo3.jpg" /> 
        </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a data-toggle="modal" data-target="#login"><b>LOGIN</b> </a></li>
        <li><a data-toggle="modal" data-target="#createAccount"><b>CREATE ACCOUNT</b></a></li>
      </ul>
    </div>
  </div>
</nav>
<%
            HttpSession session1=request.getSession(false);
            session1.getAttribute("name");
            session1.invalidate();
            

        %>               
        <script>
                var app=angular.module("myLoginApp",[]);
                app.controller("myLoginController",function($scope)
                {
                var Enter_username=$scope.username; 
                var Enter_password=$scope.password;
                    
                });
                
    </script>     
        <!--Login start-->
             
               <div class="modal fade" id="login" role="dialog" >
                <div class="modal-dialog modal-sm">
    
      <!-- Modal content-->
               <div class="modal-content">
               <div class="modal-body">
               <div>
              <h4 style="text-align:center">Log on</h4>
               </div>
          <center>
          <hr style="border: 1px solid #000;width: 30px;">
          </center>
   
            <form name="myForm" action="checkpoint" method="post">
            <div class="form-group">
                
                <input style="border: none;border-bottom: 1px solid #66ccff;" 
            class="form-control" id="text" ng-model="username" onKeyPress="return ValidateAlpha3(event)" type="text" 
            placeholder="First Name" 
            name="User_name" required>
            
            </div>
                           
           <div class="form-group">
            <input  style="border: none;border-bottom: 1px solid #66ccff;" class="form-control" 
                    type="password" ng-model="password" placeholder="Password" name="password" 
            required>
                
            <span style="color:red" ng-show="myForm.password.$dirty && myForm.password.
            $invalid">
            <span ng-show="myForm.password.$error.required">Password Required</span>
            </span>
                             
           </div>
                  <center>
            <button type="submit" class="btn btn-info ">Login</button>
                  </center>
                      </form>     

                <br>
                  <nav>                                                                                         
                      <a href="#" data-toggle="modal" data-target="#forgetpass" data-role="disabled" Style="text-decoration: none">Forget Password?</a>
                  </nav>
            </div>
   </div>
      </div>
    </div>
<!--Login End-->               

<div class="modal fade" id="forgetpass" role="dialog" >
                <div class="modal-dialog modal-md">
    
      <!-- Modal content-->
               <div class="modal-content">
               <div class="modal-body">
               <div>
              <h4 style="text-align:center">Forget Passowrd</h4>
               </div>
          <center>
          <hr style="border: 1px solid #000;width: 50px;">
          </center>
   
                   <form name="form1" action="otp_generate" method="post">
            <div class="form-group">
                
                <input style="border: none;border-bottom: 1px solid #66ccff;" 
            class="form-control" id="user_name" onKeyPress="return ValidateAlpha3(event)" type="text" 
            placeholder="Your First Name" 
            name="first_name" required>
            </div>
                           
           <div class="form-group">
               <input type="text" id="user_phone"   name="phone" style="border: none;border-bottom: 1px solid #66ccff;" class="form-control" placeholder="Your Register Moblie Number"
                      title="Please Enter the valid Number">
           </div>
                
                <div class="form-group">
                    <input pattern="[a-zA-Z0-9._%+-]*@gmail\.com" type="text" id="user_email"  name="emailId" style="border: none;border-bottom: 1px solid #66ccff;" class="form-control" placeholder="Your Register Email ID">
                </div>

                
                  <center>
                      <button type="submit" class="btn btn-danger" id="register"  onclick="form1.submit()">Find Password</button>
                  </center>
                       <br>
                      </form>     
                   
                    
                   
                   
              </div>
           </div>
        </div>
        </div>
 
<script>
                   var $input = $('input:text'),
         $register = $('#register');

        $register.attr('disabled', true);
        $input.keyup(function() {
     var trigger = false;
         $input.each(function() {
            if (!$(this).val()) {
            trigger = true;
        }
    });
    trigger ? $register.attr('disabled', true) : $register.removeAttr('disabled',false);
});
        
        </script>
        <script type="text/javascript">
     var user_name=document.getElementById("user_name").value;
    var user_email=document.getElementById("user_email").value;
    var user_phone=document.getElementById("user_phone").value;
     $(document).ready(function() {
         //  $('#register').attr("disabled", true);
         if(user_name,user_email,user_phone==null &&user_name,user_email,user_phone=="")
                document.getElementById("button_check").disabled=true;
        console.log(user_name+""+user_email+""+user_phone);
   
    });  
    
    
        var form = $('#form1');
 form.submit(function ()
                {
            $.ajax({
            type:form.attr('method'),
            url: form.attr('action'),
            data:$("form").serialize(),
            success: function (data, textStatus, jqXHR) {
                        var result=data;
            alert(result);
                    }
                });
                return false;
        });
    </script>

    
  <!--============================================================================-->
  
  <!--create profile--> 
  
    <div class="modal fade" id="createAccount" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-body">
           <div>
              <h4 style="text-align:center">Create Account</h4>
          </div>
          <center>
          <hr style="border: 1px solid #000;width: 30px;">
          </center>
          
        <div class="modal-body">
            <!-- login start-->
            <form name="myform" action="AddtoUserDta" method="post" enctype="multipart/form-data">
       
       
                 <div class="form-group">
                 <input  style="border: none;border-bottom: 1px solid #66ccff;" 
class="form-control" onKeyPress="return ValidateAlpha(event);" type="text" 
ng-model="firstname" id="first_name" ng-pattern="/^[A-Za-z]+$/" ng-minlenghth="4" placeholder="First name" 
name="firstname" >
                 <span style="color:red" ng-show="myform.firstname.$dirty && 
myform.firstname.$invalid">
  <span ng-show="myform.firstname.$error.required">First Name Required.</span>
  <span ng-show="myform.firstname.$error.pattern">Invalid Character</span>
  <span ng-show="myform.firstname.$error.minlength">Minimum 5 Character required</span>

                 </span>
          </div>                                                                           
                                                                      
          
          <div class="form-group">
                    <input style="border: none;border-bottom: 1px solid #66ccff;" 
class="form-control"  id="last_name" required type="text" ng-model="lastname" onKeyPress="return ValidateAlpha2(event);" ng-pattern="/^[A-Za-z]+$/" ng-minlenghth="3" placeholder="Last 
name" name="lastname">
                 <span style="color:red" ng-show="myform.lastname.$dirty && 
myform.emailId.$invalid">
  <span ng-show="myform.lastname.$error.required">Last Name Required.</span>
  <span ng-show="myform.lastname.$error.pattern">Invalid Character</span>
  <span ng-show="myform.lastname.$error.minlength">Minimum 5 Character required</span>
                    
                    
          </div>
          <label class="radio-inline">
              <input type="radio" required name="gender" value="Male">Male
           </label>
          <label class="radio-inline">
                <input type="radio" required name="gender" value="Female">Female
           </label>
          <br><br>
          
         
          
             <div class="form-group">
                 <input style="border: none;border-bottom: 1px solid #66ccff;" class="form-control" ng-model="emailid" pattern="[a-z0-9._%+-]+@gmail\.com$"  ng-pattern="/[a-z0-9._%+-]+@gmail\.com$/" required 
                        type="email" placeholder="Email id" value="abc123@gmail.com" id="emailid" onchange="myFunction(this.value)" name="emailid">
                          <span style="color:red" ng-show="myform.emailid.$dirty && 
                    myform.emailid.$invalid">
  <span ng-show="myform.emailid.$error.required">Email is required.</span>
  <span ng-show="myform.emailid.$error.pattern">Invalid email address.</span>
  </span>
                 <div id="dialog"></div>              
             </div>
          
          <div class="form-group">
              <input style="border: none;border-bottom: 1px solid #66ccff;" class="form-control" required ng-model="uPassword" ng-patren="/.+/" type="Password" 
placeholder="Password" name="uPassword">
            
                          <span style="color:red" ng-show="myform.uPassword.$dirty && myform.uPassword.$invalid">
  <span ng-show="myform.uPassword.$error.required">Password Required</span>
  <span ng-show="myform.uPassword.$error.pattern">Password Required</span>
  </span>

              
          </div>
          <div class="form-group">
              <input style="border: none;border-bottom: 1px solid #66ccff;" class="form-control" required ng-model="confpass" ng-pattern="uPassword" type="Password" 
placeholder="Confirm password" name="confpass">
              
              
              <span style="color:red" ng-show="myform.confpass.$dirty && myform.confpass.$invalid">
  <span ng-show="myform.confpass.$error.required">Confirm password Required</span>
  
  <span ng-show="myform.confpass.$error.pattern">Confirm Password not Match</span>
  </span>
 </div>

          <div class="form-group">
              <input style="border: none;border-bottom: 1px solid #66ccff;" class="form-control" required type="number"  id="number" pattern="(0|91)?[7-9][0-9]{9}$" 
onkeyup="validateNumber(event)" ng-model="number" ng-pattern="/(0|91)?[7-9][0-9]
{9}$/"placeholder="Phone Number" name="number">
    
                        <span style="color:red" ng-show="myform.number.$dirty && myform.number.$invalid">
                            
  <span ng-show="myform.number.$error.required"> Required</span>
  <span ng-show="myform.number.$error.pattern">Enter the valid Indian Moblie Number</span>
          
                        </span>
              
          </div>
          
               <div class="form-group">
                   <input style="border: none;" class="form-control form-file" required type="file"  class="file" name="image">
    
               
          </div>
         
          <center>
          <button type="submit" class="btn btn-info">Sumbit profile </button>
     </center>

   </form>

        </div>
      </div>
    </div>
  </div>
    </div>

  
  
  
  <!--create profile end-->
        
  
  
  
         <!--=========================================================================-->
                <%
                theater_interfaceImplement threDao=new theater_interfaceImplement();
               ArrayList list=(ArrayList)threDao.theater_dta();
               
               System.out.println( list );
        %>
        <br>
        
        <h2 style="text-align: center;">AVAILABLE MOVIES</h2>
        <hr style="border: 1px solid #000;width: 100px;">
            
             <c:set var="theater_dta" value="<%=list%>"/>
             <div class="container-fluid">
     
         <div class="row">
                 <c:forEach var="i" items="${theater_dta}">

        <div  class="col-md-3">
            <%
                String theater_name="${i.getTheater_name()}";
                request.setAttribute("theater_name",theater_name );
            %>
            <div class="adjust_image" class="Container">
            <div class="thumbnail">
         
  <img  id="img" src="${i.getTheater_pic()}" style="width:100%"/>
   <div class="caption">

       <span><h3><i>${i.getTheater_name()}</i></h3></span>       
               <a href="#"><span id="info" class="glyphicon glyphicon-info-sign"></span></a>
              
        <hr class="hr">
                
            <h5>${i.getTheater_location()}</h5>
          <h5>${i.getTheater_date()}</h5>
                    <h5>${i.getTheater_time()}</h5>

            </div>
           </div>
        </div>
        </div>
                   
                 </c:forEach>
          </div>
                 
             </div>

    <script>
         

        var app=angular.module("myApp",['ngRoute']);
	app.config(function($routeProvider)
{
		$routeProvider
		.when('/',{
			templateUrl:'index.html',
			controller:'myrefreshcontroller'

		})
                        .otherwise(
                            {
                            controller:'nextcontroller'
                        });
	
});

	app.controller("myrefreshController",function($scope,$location)
	{
		
			$location.path('/')
			{
                            //$route.reload();
                           setTimeout(function() {
						location.reload();  // this method for refresh the page 
					}, 
					40000);
					
			
		}
	});
            app.controller("nextcontroller",function ($scope,$location)
            {
                            
                     setTimeout(function ()
                            {
                              // location.reload();
                                    },2000) 
                            
                });
       
    </script>
    </body>
    
</html>
