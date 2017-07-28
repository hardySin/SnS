<%-- 
    Document   : Update
    Created on : 17 Jul, 2017, 12:37:58 PM
    Author     : D3LL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    
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
    <body>
        <div class="jumbotron text-center">
            <h1 style="">Sound and Stage </h1>
</div>
  
        <div class="container text-center" >
                    
               <div class="row" style="padding-left: 2%; margin-top: 5%; ">
             <!--   start of the first row -->  
                        <div class="col-sm-5" style="padding-right: 5%">
                            <h3 class="text-center" style="letter-spacing: 5px"> UPDATE THEATRE DATA</h3>       
                            <form name="myForm"  enctype="multipart/form-data" action="updateDta" method="post">
                            
                                <input type="hidden" name="Theatre_id" value="${param.id}">
                                
          <div class="form-group">
              
                 <input  class="form-control" required type="text" pattern="^[A-Za-z,.\s]+$" onKeyPress="return ValidateAlpha(event);" placeholder="Theatre Name" name="Dta_val" >
          </div>                                                                                                                                                 
          
          <div class="form-group">
                    <input class="form-control" required type="text"  pattern="^[A-Za-z 0-9.,\s]+$"  placeholder="Capital" name="Dta_val">
          </div>
             <div class="form-group">
                 <input class="form-control"  required type="text" placeholder="State" name="Dta_val" >
       
             </div>
              <div class="form-group">
              <input class="form-control" required  type="date" placeholder="DD-MONTH" name="Dta_val">
     </div>
          <div class="form-group">
              <input class="form-control" required   type="text" placeholder="Day,Time"  name="Dta_val">
 </div>
                                
                                <div class="form-group">
              <input class="form-control" required   type="text" placeholder="Theater Plan Name"  name="Dta_val">
 </div>

                                
                                <div class="form-group">
                                    <input class="form-control" required   type="file"   name="image">
 </div>
                                
                                          
                                
<!--pattern="^[A-Z][a-z]*[,][0-1][0-9][:][0-9]{2}[][AMP]+$"     -->

              <button type="submit" class="btn btn-info btn-block"> Upload It </button>  
                        
                       </form>
                        </div>
                       
               </div>

</div>
      
        
    </body>
</html>
