
<%@page import="com.mycompany.arshad.entities.User"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.arshad.entities.Category"%>
<%@page import="com.mycompany.arshad.helper.FactoryProvider"%>
<%@page import="com.mycompany.arshad.dao.CategoryDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
	//If third person try to access the admin page. This is authentication
	User user = (User)session.getAttribute("current-user");

	if(user == null)
	{	
		
		session.setAttribute("message", "You are not logged in !!! Please login first");
		response.sendRedirect("login.jsp");
		return;
	}
	else
	{
		if(user.getUserType().equals("normal"))
			{

			session.setAttribute("message", "You are not admin plz do not try to access this page");
			response.sendRedirect("login.jsp");
					return;
			}
		
	}


%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
       <%@include file="components/navbar.jsp" %>
<div class="container admin">
<div class="container-fluid mt-3">
<%@include file="components/message.jsp" %>
</div>

<!--  First column -->
<div class="row mt-3">
<!--  First column -->
<div class="col-md-4">
<div class="card text-center">
<div class="card-body">
<img src="images/user.png" class="container-fluid rounded-circle" style="max-width: 100px">
<h4>23444</h4>
<h4>Users</h4>
</div>
</div>
</div>
<!--  Second column -->
<div class="col-md-4">
<div class="card text-center">
<div class="card-body">
<img src="images/category.png" class="container-fluid rounded-circle" style="max-width: 100px">
<h4>1234</h4>
<h4>Categories</h4>
</div>
</div>
</div>
<!--  Third  column -->
<div class="col-md-4">
<div class="card text-center">
<div class="card-body">
<img src="images/product.png" class="container-fluid rounded-circle" style="max-width: 100px">
<h4>12345</h4>
<h4>Products</h4>
</div>
</div>
</div>


</div>

<!--  Second row -->
<div class="row mt-3">
<!--  First column -->
<div class="col-md-6">
<div class="card text-center" data-toggle="modal"data-target="#add-category-modal">
<div class="card-body">
<img src="images/add cateogory.png" class="container-fluid" style="max-width: 100px">
<h4>Add category</h4>
</div>
</div>
</div>
<!--  Second column -->
<div class="col-md-6">
<div class="card text-center" data-toggle="modal"data-target="#add-product-modal">
<div class="card-body">
<img src="images/add product.png" class="container-fluid rounded-circle" style="max-width: 100px">
<h4>Add product</h4>
</div>
</div>
</div>


</div>
</div>


<!-- category model -->

<!-- Modal -->
<div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="add-category-modal" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill Category</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <form action="Operation_Servlet">
       
        <input type="hidden"name="operation"value="addCategory">
       
        <div class="form-group">
        <input type="text" class="form-control" name="catTitle" placeholder="Enter category title" required />
         </div>
        
        <div class="form-group">
        <textarea style="height: 200px"  class="form-control" name="catDescription" placeholder="Write description" required>
        </textarea>
        </div>
        
        <div class="container text-center">
        <button class="btn btn-outline-success">Add category</button>
        <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
        </div>
        
        </form>
        
      </div>
     </div>
  </div>
</div>




<!-- Add-product-modal -->


<div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="add-product-modal" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header custom-bg text-white">
        <h5 class="modal-title" id="exampleModalLabel">Fill product details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
        <form action="Operation_Servlet"method="post"enctype="multipart/form-data">
        <input type="hidden" name="operation"value="addProduct">
        <div class="form-group">
        <input type="text" class="form-control" name="pname" placeholder="Enter product title" required />
         </div>
         
        <div class="form-group">
        <textarea style="height: 150px"  class="form-control" name="pdescription" placeholder="Enter product description" required>
        </textarea>
        </div>
         
         <div class="form-group">
        <input type="number" class="form-control" name="pprice" placeholder="Enter product price" required />
         </div>
        
        <div class="form-group">
        <input type="number" class="form-control" name="pdiscount" placeholder="Enter product discount" required />
         </div>
        
        <div class="form-group">
        <input type="number" class="form-control" name="pquantity" placeholder="Enter product quantity" required />
         </div>
        
      
       <!-- Add cateogry to add product option dynamically -->
       
       <%
       CategoryDao cd = new CategoryDao(FactoryProvider.getFactory());
			List<Category> list = cd.getCategories();
       %>
       
       <div class="form-group">
       <select class="form-control" name="catId">
      <% 
       for(Category c:list)
       {
     %>
       <option value="<%=c.getCatId()%>"><%=c.getCatTitle()%></option>
    <% 
       }
      %>
       
       </select>
         </div>
         
        <!-- Product file -->
        
        <div class="form-group">
        
   <label for="file">Choose file to upload</label>
   <br>
   <input type="file" id="file" name="pPic" >

        </div>
             
        <div class="container text-center">
        <button class="btn btn-outline-success">Add product</button>
        <button type="button" class="btn btn-success" data-dismiss="modal">Close</button>
        </div>
        
        </form>
        
      </div>
    </div>
  </div>
</div>


<!-- End category modal -->
    </body>
</html>
