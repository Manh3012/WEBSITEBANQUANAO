<%-- 
    Document   : home
    Created on : Mar 8, 2022, 8:48:00 PM
    Author     : Dell G7 7590
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> 
<head>
    <title>HOME PAGE</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="home.css" rel="stylesheet">

    <style>
      body{
    justify-content: center;
    align-items: center;
}

.row{
    text-align: center;
    margin: 2%;   
    position: relative;
    padding: 3%;
}

h1{
    text-align: center;
    padding: 2%;
    margin: 1%;
}

footer{
    margin: 1%;
    padding: 3%;
    text-align: center;
    background-color: #edebec;
}

.box{
    border: 1px solid rgba(0, 0, 0, 0.411);
    margin: 4%;
    padding: 2%;
}

.button{
    
    align-items: center;
    margin-left: 48%;
}
    </style>
</head>
<body>
    
    <%@taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
    <%! 
        List<Product> list;
        List<Product> list2;
        List<Product> list3;
        List<Product> list4;
    %> 
   <div class="position-absolute top-0 end-0">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <form class="d-flex" action="./search">
            <input class="form-control me-2" name="search" type="search" placeholder="Brand or Name? " aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
          <div  class="container-fluid">
            <a class="navbar-brand" href="http://localhost:8080/MVNNB/Product/home">
              <ion-icon name="home-outline"></ion-icon>
              Home
            </a>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="http://localhost:8080/MVNNB/view/Product/about.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./categories">Categories</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link" href="http://localhost:8080/MVNNB/view/Payment/cart.jsp"" >
                    <ion-icon name="cart-outline"></ion-icon>
                    <span>Your Cart</span>
                  </a>
                </li>       
                <li class="nav-item">
                    <a class="navbar-brand" href="http://localhost:8080/MVNNB/Login/login">
                        <ion-icon name="airplane-outline"></ion-icon>
                        Login
                    </a>
                </li>
                <li class="nav-item">
                    <a class="navbar-brand" href="http://localhost:8080/MVNNB/Login/logout">
                        <ion-icon name="airplane-outline"></ion-icon>
                        Logout
                    </a>
                </li>
              </ul>
          </div>
      </nav>
    </div>
    </br>
    </br>
    </br>
    <h1>FEATURED ITEMS</h1>
     <div class="box">
    <div class="container">
        <div class="row">
            <table>
         <c:forEach var="product" items="${list}">
            
            <c:url var="productDetail" value="/Product/detail">
                <c:param name="id" value="${product.id}"></c:param>
            </c:url>
            <c:url var="productEdit" value="${request.contextPath}/Product/update">
                <c:param name="id" value="${product.id}"></c:param>
            </c:url>
            
            <tr>
                <td>
                    <a href=${productDetail}><img src=${product.url} width="250" height="250"></a>
                </td>
            </tr>
        </c:forEach>
            </table>
            
            <div>
                <a href="#" style="text-decoration:none;">Previous</a>
                <a href="#" style="text-decoration:none;">Next</a>
            </div>
            
          </div>
      </div>

      </br>
    </div> 
    <h1>Best Seller</h1>
    <div class="box">
    <div class="container">
      <div class="row">
        <div class="col">
             <img src="https://vcdn-dulich.vnecdn.net/2018/03/19/28435611-152837205382716-70290-4520-3830-1521435774.jpg" style="width:80%;">
        </div>
        <div class="col">
            <img src="https://thoitrangmantis.com/wp-content/uploads/2019/01/ao-phong-co-tron-meo-3d1-ngoc.jpg" style="width:80%;">
        </div>
        <div class="col">
          <img src="https://mcdn.nhanh.vn/store1/45885/ps/20200827/screenshot_1598493388.png" style="width:80%;">
        </div>
      </div>
    </div>
  </div>

<footer>
    <h1 >About our shop</h1>
    <div>
        <p>Công ty TNHH BTV Online Shop</p>
        <p>Email: abc@gmail.com</p>
        <p>Phone: 12367532598 </p>
    </div>

</footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>