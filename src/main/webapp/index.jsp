<%@page import="com.mycompany.arshad.helper.Helper"%>
<%@page import="com.mycompany.arshad.entities.Category"%>
<%@page import="com.mycompany.arshad.dao.CategoryDao"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.arshad.entities.Product"%>
<%@page import="com.mycompany.arshad.dao.ProductDao"%>
<%@page import="com.mycompany.arshad.entities.User"%>




<%@page import="com.mycompany.arshad.helper.FactoryProvider"%>
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
<div class="row mt-3">
<%
String cat = request.getParameter("category2");


ProductDao d = new ProductDao(FactoryProvider.getFactory());
List<Product> list=null;
//out.println(cat);
 

 if(cat==null ||cat.equals("all"))
 {
	 list  = d.getAllProducts();
//	out.println("Hii...");	 
 }
 else
 {
	int cid = Integer.parseInt(cat);
	list=d.getAllProductsById(cid);
 }
  
  
  CategoryDao dao = new CategoryDao(FactoryProvider.getFactory());
  List<Category> clist = dao.getCategories();
   
%>


<!-- Category section -->

<div class="col-md-2 col-sm-3">
<div class="list-group mt-4">
  <a href="index.jsp?category2=all" class="list-group-item list-group-item-action active">
    All Categories
  </a>
 

<% for(Category category:clist)
{
%>

<a href="index.jsp?category2=<%=category.getCatId() %>" class="list-group-item list-group-item-action"><%= category.getCatTitle() %></a>
<% 
}
%>
 </div>
</div>

<!-- Product section -->

<div class="col-lg-10 col-md-10 col-sm-8 col-xs-8">

<div class="row mt-4">

<!-- col 12  -->

<div class="col-md-12">

<div class="card-columns">

<!--  traversing products -->


<%
for(Product p : list){
%>
<!-- product list -->
<div class="card product-card">

<div class="container tex-center">
<img src="images/products/<%= p.getpPhoto()%>" style="max-height: 200px; max-width: 100%; width: auto;"class="card-img-top m-2"alt="">

</div>



<div class="card-body">
<h5 class="card-title"><%=p.getpName() %> </h5>

<p class="card-text"><%=Helper.get10words(p.getpDesc()) %></p>

</div>

<!-- card-footer -->

<div class="card-footer text-center">
    <button class="btn custome-bg text-white btn-sm"onclick="add_to_cart(<%= p.getpId()%>, '<%= p.getpName()%>' , <%= p.getProductPriceAfterApplyingDiscount()%>)" > Add to cart</button>
<button class="btn btn-outline-primary btn-sm my-1">&#8377;<%=p.getProductPriceAfterApplyingDiscount()%> /- <span class="text-secondary discount-label" >&#8377;<%= p.getpPrice()%>, <%=p.getpDiscount()%>% off</span></button>
</div>
</div>

<%
}

if(list.size()==0){out.println("No item is in this cateogory");}
%>
</div>

</div>

</div>

</div>
 
</div>
</div>
       
    </body>
</html>
