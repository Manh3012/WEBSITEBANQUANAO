<%-- 
    Document   : home
    Created on : Mar 8, 2022, 8:48:00 PM
    Author     : Dell G7 7590
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en"> 
<head>
    <title>HOME PAGE</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
   <div class="position-absolute top-0 end-0">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <form class="d-flex" action="./search">
            <input class="form-control me-2" name="search" type="search" placeholder="Brand or Name? " aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
          <div  class="container-fluid">
            <a class="navbar-brand" href="#">
              <ion-icon name="home-outline"></ion-icon>
              Home
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/MVNNB/Product/categories?">Categories</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link bg-gradient" href="#">Help</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <ion-icon name="cart-outline"></ion-icon>
                    Your Cart
                  </a>
                  <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <li><a class="dropdown-item" href="#">Action</a></li>
                    <li><a class="dropdown-item" href="#">Another action</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                  </ul>
                </li>
                
              </ul>
  
            
          </div>
      </nav>
    </div>>
    </br>
    </br>
    </br>
    <h1>FEATURED ITEMS</h1>
      <div class="container">
        <div class="row">
            <table>
                <tr>
            <%!  List<Product> list;  %>
        <%
            String pagenum = request.getParameter("page");
             list = (List<Product>) request.getAttribute("list");
             for (Product p: list){
                 out.print("        <div class='col'>"
                         + "<td><img src='" + p.getUrl() + "' width='250' height='250'></td>"
                         + "        </div>");
             }
         %> 
                </tr>
            </table>
                <a href="#">???</a>
                <a href="#">???</a>
          </div>
      </div>
      </br>
      <div class="d-grid gap-2">
        <button class="btn btn-primary" type="button">Button</button>
      </div>
    </br>
    <h1>Deo biet</h1>
    <div class="container">
      <div class="row">
        <div class="col">
          Column
        </div>
        <div class="col">
          Column
        </div>
        <div class="col">
          Column
        </div>
      </div>
    </div>
  <div>
  </br>
  </br>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-sm-8">col-sm-8</div>
      <div class="col-sm-4">col-sm-4</div>
    </div>
    <div class="row">
      <div class="col-sm">col-sm</div>
      <div class="col-sm">col-sm</div>
      <div class="col-sm">col-sm</div>
    </div>
  </div>
</br>
</br>
<h1>About your shop</h1>
<div><h6>Ghi cac gi di may thang lz</h6></div>
<footer>Ghi cai link deo gi do</footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
