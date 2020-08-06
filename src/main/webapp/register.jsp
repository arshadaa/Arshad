
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <%@include file="components/common_css_js.jsp" %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 

<%@include file="components/navbar.jsp" %>        
 <div class="container-fluid">


<div class="row mt-5">
 
<div class="col-md-4 offset-md-4  ">

 <div class="card text-white custome-bg">
     <%@include file="components/message.jsp" %>
 <div class="card-body px-4">
     
<center><img src="https://img.icons8.com/color/48/000000/add-user-male--v1.png"/></center>
<h3 class="text-center my-4">Register here!!!</h3> 

 <form action="RegisterServlet2" method="post">
	<div class="form-group">
    <label for="name">User Name</label>
    <input type="text" name="user_name"class="form-control" id="name" aria-describedby="nameHelp" placeholder="Enter here">
  	</div>
  	<div class="form-group">
    <label for="email">User Email</label>
    <input type="text" name="user_email"class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter here">
  	</div>
  
 	 <div class="form-group">
     <label for="password">User Password</label>
     <input type="password" name="user_password"class="form-control" id="password" aria-describedby="passwordHelp" placeholder="Enter here">
  	</div>
  
  	<div class="form-group">
    <label for="phone">User Phone</label>
    <input type="text" name="user_phone"class="form-control" id="phone" aria-describedby="phoneHelp" placeholder="Enter here">
  	</div>
  
  	<div class="form-group">
  	<label for="address">User Address </label>
  	<textarea class="form-control"name="user_address" style="height: 150px"placeholder="Enter your address" ></textarea>
  	</div>
  
   	<div class="container text-center">
   
   	<button class="btn btn-outline-primary">Submit</button>
   	<button class="btn btn-outline-danger">Reset</button>  
   	</div>
</form>
 
 </div>
 

 
 </div>

</div>
</div>
</div>
        
    </body>
</html>
