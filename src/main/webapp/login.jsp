
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
<div class="container">

<div class="row mt-4">
 <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 offset-lg-3 offset-md-3 offset-sm-3 offset-xs-3">
 
 	<div class="card text-white">
 		<div class="card-header custom-bg">
 		<h3>Login here</h3>
 		</div>
 			<div class="card-body  custome-bg">
 			<%@include file="components/message.jsp" %>
 			
 			<form action = "LoginServlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name ="email"class="form-control" id="" aria-describedby="">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password"class="form-control" id="exampleInputPassword1">
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  
  <a href="register.jsp" class="text-center d-block mb-3">if not registered click here</a>
    <div class="container text-center">
   
  <button type="submit" class="btn btn-primary custom-bg border-0">Submit</button>
  <button type="reset" class="btn btn-primary custom-bg border-0">reset</button>
	</div>
</form>
 		
 	
 		</div>
 		
 	
 	</div>
 
 </div>
</div>
</div>


    </body>
</html>
