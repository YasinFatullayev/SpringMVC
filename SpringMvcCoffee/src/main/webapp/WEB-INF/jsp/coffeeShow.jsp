<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>

<h2>Submitted Student Information</h2>
   <table>
    <tr>
        <td>Name</td>
        <td>${name}</td>
    </tr>
    <tr>
        <td>Age</td>
        <td>${country}</td>
    </tr>
    <tr>
        <td>ID</td>
        <td>${quantity}</td>
    </tr>
    
    <tr>
        <td>PRODUCT_NO</td>
        <td>${PRODUCT_NO}</td>
    </tr>
    
</table>


<h3>INFORMATIONS ADDED TO DATABASE</h3>
    
<form:form method="GET" action="/SpringMvcCoffee/index">
<table>
    <tr>
    <td>
    <input type="submit" value="Delete"/>
    </td>
    
    
    </tr>
    
    <tr>
     <td>Enter The id you want to delete from DataBase</td>
        <td><input type="text" name="id" /></td>
    
    
    
    
    
    </tr>
</table>  
</form:form>
  
  
  
  
  
  
  
</body>
</html>