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
    
  background-image:url("resources/image/Welcome.jpg");
 max-width: 100%;
    height: auto;
    
}
</style>

</head>
<center>
<h1 style="color">Category Details

</h1>
</center>
<body >



<div class="container">
  
  <fm:form action="addCategory" commandName="category" modelAttribute="category" class="form-horizontal">

    <div class="form-group">
      <label class="control-label col-sm-3" >:</label>
      <div class="col-sm-3">
   
        <fm:input type="text" class="form-control" path="catId"></fm:input>
     
      </div>
    </div>
   
     <div class="form-group">
      <label class="control-label col-sm-3" >CategoryName:</label>
      <div class="col-sm-3">   
           
        <fm:input input="text" class="form-control"  path="Cname"></fm:input>
       
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-3" >Description:</label>
      <div class="col-sm-3">   
           
        <fm:input input="text" class="form-control"  path="Cdescp"></fm:input>
       
      </div>
    </div>
 
    <div class="form-group">        
      <div class="col-sm-offset-3 col-sm-3">
      <c:if test="${empty category.catId }">
        <fm:button type="submit" class="btn btn-default">Register</fm:button>
        </c:if>
      </div>
      <div class="col-sm-offset-2 col-sm-3">
      <c:if test="${not empty category.catId }">
        <fm:button type="submit" class="btn btn-default">Update</fm:button>
        </c:if>
      </div>
    </div>
  </fm:form>
 



  
  
</div>

</body>
</html>