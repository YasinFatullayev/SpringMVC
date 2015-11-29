<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>

<h2>Student Information</h2>
<form:form method="POST" action="/SpringMvcCoffee/coffeeShow" commandName="command">
   <table>
    <tr>
        <td><form:label path="name" >Name</form:label></td>
        <td><form:input path="name" /></td>
    </tr>
    <tr>
        <td><form:label path="country">Country</form:label></td>
        <td><form:input path="country" /></td>
    </tr>
    <tr>
        <td><form:label path="quantity">Quantity</form:label></td>
        <td><form:input path="quantity" /></td>
    </tr>
    
    <tr>
        <td><form:label path="PRODUCT_NO">PRODUCT_NO</form:label></td>
        <td><form:input path="PRODUCT_NO" /></td>
    </tr>
    
    
    
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
</body>
</html>