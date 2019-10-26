<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sava Book</title>
</head>
<body>
   <h1 style="color: blue;text-align: center;">Fill The Book Details</h1><hr/>
   <form:form action="bookPage" method="POST"  modelAttribute="book">
        <table border="0" align="center">
            <tr>
               <td>Book ID::</td>
               <td><form:input path="bookId"/></td>
            </tr>
             <tr>
               <td>Book Name::</td>
               <td><form:input path="bookName"/></td>
            </tr>
             <tr>
               <td>Price::</td>
               <td><form:input path="price"/></td>
            </tr>
             <tr>
               <td>Author::</td>
               <td><form:input path="author"/></td>
            </tr>
             <tr>
               <td><input type="reset" value="Reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="submit" value="Submit"></td>
            </tr>
        </table>
   </form:form>
  
   <c:if test="${!empty msg1}">
              <h1 style="color: green;text-align: center;">${msg1}</h1>
    <table border="0" align="center">
          <tr>
              <th>Book Id</th>
              <th>Book Name</th>
              <th>Price</th>
              <th>Author</th>
          </tr>
          <tr>
              <td>${book.bookId}</td>
              <td>${book.bookName}</td>
              <td>${book.price}</td>
              <td>${book.author}</td>
              <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
              <td><a href="#">Edit</a></td>
              <td>&nbsp;&nbsp;</td>
              <td><a href="#">delete</a></td>
          </tr>
     </table>
    </c:if>
</body>
</html>