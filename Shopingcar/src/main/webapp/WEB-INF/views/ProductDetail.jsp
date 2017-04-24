<%@include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="fm"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<style>
body {
    
  
 max-width: 100%;
    height: auto;
    
}
</style>

</head>
<center>
<h1 style="color">Product Page</h1>
</center>
<body >



<div class="container">
  
  <fm:form action="addProduct" commandName="product" modelAttribute="product" class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-3" >PId:</label>
      <div class="col-sm-3">
       <c:if test="${not empty product.name }"> 
        <fm:input type="text" class="form-control" path="productId"></fm:input>
        </c:if>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-sm-3" >Name:</label>
      <div class="col-sm-3">   
           
        <fm:input input="text" class="form-control"  path="name"></fm:input>
       
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3" >Description:</label>
      <div class="col-sm-3">   
           
        <fm:input input="text" class="form-control"  path="descp"></fm:input>
       
      </div>
    </div>
    <div class="form-group">        
      
      <label class="control-label col-sm-3" >Quantity:</label>
        <div class="col-sm-3">
        <fm:input type="text" class="form-control"  path="qty"></fm:input>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-3 col-sm-3">
      <c:if test="${empty product.name }">
        <fm:button type="submit" class="btn btn-default">Register</fm:button>
        </c:if>
      </div>
      <div class="col-sm-offset-2 col-sm-3">
      <c:if test="${not empty product.name }">
        <fm:button type="submit" class="btn btn-default">Update</fm:button>
        </c:if>
      </div>
    </div>
  </fm:form>
  <c:if test="${not empty userList}">



<table>
<tr>

<td>name</td>
<td>address</td>
<td>Edit</td>
<td>Delete</td>
</tr>
<c:forEach items="${userList}" var="usr">
<tr>

<td>${usr.name}</td>
<td>Edit</td>
<td>Delete</td>
</tr>


</c:forEach>

</table>



</c:if>
  
  
</div>

</body>
</html>