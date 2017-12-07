<%-- 
    Document   : newjsp
    Created on : Jul 4, 2017, 11:17:30 PM
    Author     : Hallow
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    <c:set var="shop" value="${sessionScope.SHOP}"/>
     
      <c:if test="${not empty shop}">
          <tbody>
          
            <c:set var="count" value="0" />
            <c:forEach var="rows" items="${shop}">
                <c:set var="count" value="${count + 1}" />
                <tr>
                  <td>${count}</td>
                  <td>${rows.value.title}</td>
                  <td>${rows.value.gia}</td>
                  <td><input type="checkbox" name="rmv" value="${rows.value.title}"></td>
                </tr>
            </c:forEach>
            </tbody>
          </c:if>
        
      
</body>
</html>
