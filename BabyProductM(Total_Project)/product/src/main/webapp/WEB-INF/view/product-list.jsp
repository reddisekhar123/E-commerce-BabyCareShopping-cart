


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>

  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/productlist.css"/>
  <title>List of Products</title>
  <style>
   .pd{
        padding-top: 40px;
        color: #8C55AA;
        font-family: 'Ubuntu', sans-serif;
        font-weight: bold;
        font-size: 23px;
 
 border-radius: 20em;
        color: #fff;
        background: linear-gradient(to right, #9C27B0, #E040FB);
       box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
	padding:10px;

    }
     .search {
  width: 100%;
  position: relative;
  display: flex;
}
.searchTerm {
  width: 100%;
  border: 3px solid #00B4CC;
  border-right: none;
  padding: 5px;
  height: 20px;
  border-radius: 5px 0 0 5px;
  outline: none;
  color: #9DBFAF;
}

.searchTerm:focus{
  color: #00B4CC;
}

.searchButton {
  width: 40px;
  height: 36px;
  border: 1px solid #00B4CC;
  background: #00B4CC;
  text-align: center;
  color: #fff;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 20px;
}

/*Resize the wrap to see the search bar change!*/
.wrap{
  width: 30%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
     
                 </style>
</head>

<body>
  <div class="main">
 <p class="pd" align="center">BABY Product Management-List of saved Products</p>
<br>
<center><table><tr><td><input type="button" value="CLICK HERE:To Add Product" 
onClick="window.location.href='showFormForAdd';return false;" class="add"/></td>

<td><input type="button" value="CLICK HERE:   To Log me Out" 
onClick="window.location.href='logout';return false;" class="add"/><br></td>
<td><a href="${pageContext.request.contextPath}/product/list" class="add" align="center" style="text-decoration:none">click here to go Back</a></td></tr></table></center><br>
<center>
   <form:form action="search" method="POST" class="search">
<div class="wrap">
   <div class="search">
      <input type="text" class="searchTerm" placeholder="productname CLICK HERE>" required="required" name="productName">
      <button type="submit" class="searchButton">
        <i class="fa fa-search"></i>
     </button>
   </div>
</div>
</form:form>
</center>
<br><br>
<hr>


<table align="center" border="2px">
<tr>
<th class="pad">ProductName</th>
<th class="pad">Category</th>
<th class="pad">Price</th>
<th class="pad">Date-of-Manufacture</th>
<th class="pad">Date-of-Expiry</th>
<th class="pad">Action</th>
</tr>

<c:forEach var="tempProduct" items="${products}">
				<!-- update link -->
				<c:url var="updateLink" value="/product/showFormForUpdate">
					<c:param name="id" value="${tempProduct.id}" />
				</c:url>
				<c:url var="deleteLink" value="/product/showFormForDelete">
					<c:param name="id" value="${tempProduct.id }" />
				</c:url>
				<tr>
<td class="pad">${tempProduct.productName }</td>
<td class="pad">${tempProduct.category }</td>
<td class="pad">${tempProduct.price }</td>
<td class="pad">${tempProduct.dom}</td>
<td class="pad">${tempProduct.doe}</td>
<td class="pad"><a href="${updateLink }" class="update">update</a>|
<a href="${deleteLink }"
onClick="if (!(confirm('Are you sure to delete!?'))) return false" class="delete">Delete</a></td>
</tr>
</c:forEach>
</table>


    </div>
     
</body>

</html>



