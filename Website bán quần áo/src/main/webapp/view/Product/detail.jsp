<%-- 
    Document   : Product_Detail
    Created on : Mar 14, 2022, 9:22:48 PM
    Author     : HoangMinh
--%>

<%@page import="Model.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Detail</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="/css/product_detail.css" rel="stylesheet" type="text/css" >
    </head>
    
    <style>
        /*
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/CascadeStyleSheet.css to edit this template
*/
/* 
    Created on : Mar 14, 2022, 9:24:49 PM
    Author     : HoangMinh
*/


            
.row
{
   text-align: center;
    margin-bottom: 300px;
    margin-left: 200px;
    margin-right: 200px;
    margin-top: 50px;
    position: relative;
    padding: 1px;
    
}
.two
{
    box-shadow: 5px 5px 5px grey;
    border: 2px solid black;
}
h1
{
    text-align: center;
}
footer
{
    text-align: center;
}
.row
{
    margin-top: 100px;
    margin-bottom:100px;
}
.container
{
    margin-top: 10px;
    margin-bottom: 50px;
    height: 100%;
}


.col
{
    border: 1px solid black;
    padding: 2%;
    width: 100%;
    margin-right: 2%;
    margin-bottom: 2%;
    box-shadow: 2px 2px 2px black;
}

#similar_product
{
    text-align: center;
    padding-top: 20px;
    font-style: italic;
}

.col_1
{
    border: 1px solid black;
    padding: 5px;
    width: 30%;
    height: 30%;
    margin-right: 3px;
}

.pic_similar
{
    width: 70%;
    position: relative;
    top: 10%;
}

.similar_pro_span
{
    color: grey;
    text-align: center;
    font-style: italic;
    font-size: 140%;
}

.pic_infor
{
    border: 1px dotted black;
    width: 50%;
    position: relative;
    left: 50%;
    top: -15%;   
}

#button-cart
{
    margin-top: 5px;
    text-decoration: none;
    background-color: #A9A9A9;
    color: black;
    box-shadow: 2px 2px 2px black;
}

    </style>
    <body>
        <%@taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
        <%! List<Product> list;%>
        
        <div class="position-absolute top-0 end-0">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">        
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item-1" id="nav-item-1">
                <a class="nav-link" href="http://localhost:8080/MVNNB/Product/home">Home</a>
              </li>
              <li class="nav-item-2" id="nav-item-2">
                <a class="nav-link" href="http://localhost:8080/MVNNB/view/Product/about.jsp">About</a>
              </li>
              <li class="nav-item-5" id="nav-item-5">
                <a class="nav-link active" href="http://localhost:8080/MVNNB/view/Payment/cart.jsp">Cart</a>
              </li>
            </ul>           
          </div>
        
      </nav>
          </div>
      <br>
      <br>
      <br>
          <div class="container">
            <div class="two">
            <div class="row align-items-start">
              
              <div class="col">
               <c:set var="detail" value="${requestScope.object}" />
                <c:url var="productEdit" value="${request.contextPath}/Product/update">
                    <c:param name="id" value="${detail.id}"></c:param>
                </c:url>
                
                <c:set var="detail" value="${requestScope.object}" />
                <c:url var="productCart" value="${request.contextPath}/Product/cart">
                    <c:param name="id" value="${detail.id}"></c:param>
                </c:url>
                
                <p><img src=${detail.url} width=500 height=500></p>
               
              </div>
              <div class="col">
                  <div class="col_detail">
                    <h1 style="font-weight: bold;">DETAILS </h1>
                    <div class="col">
                                <p>
                                    Name : ${detail.name}
                                </p>
                                <p>
                                    Brand : ${detail.brand}
                                </p>
                                <p>
                                    Discount : ${detail.sale}
                                </p>
                                <p style="font-weight:bold">
                                    Price : ${detail.price}
                                </p>
                                <p>
                                    <a href="${productCart}">Add to Cart</a>  
                                </p>
                                <p>
                                    <a href="${productEdit}">Update</a>  
                                </p>
                    </div>
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2" data-bs-toggle="dropdown" aria-expanded="false">
                          Select SIZE
                        </button>
                        <br>
                       
                        <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2">
                          <li><a class="dropdown-item active" href="#">S</a></li>
                          <li><a class="dropdown-item" href="#">M</a></li>
                          <li><a class="dropdown-item" href="#">L </a></li>
                          <li><a class="dropdown-item" href="#">XXL</a></li>
                        </ul>
                        
                        
                      </div>
                      </div>
                  </div>
              </div>
            </div>
            </div>
          </div>
                <h1 id="similar_product">Similar Product</h1>
                <div class="container-fluid">
                  <div id="three">
                    <div class="row">
                      <div class="col_1">
                          <span class="similar_pro_span">Similar Product</span>
                        <div class="pic_similar"> 
                            
                             <% 
                                list = (List<Product>) request.getAttribute("object2");
                                if(list != null)
                                {
                                    for(Product p: list)
                                    {
                                        out.print("<tr><td><img src='" + p.getUrl() + "' width=150 height=150></td></tr>");
                                    }
                                }
                           %>
                        </div>
                      </div>
                        
                      <div class="col_1">
                        <span class="similar_pro_span">Similar Product</span>
                        <div class="pic_similar"> 
                             <% 
                                list = (List<Product>) request.getAttribute("object3");
                                if(list != null)
                                {
                                    for(Product p: list)
                                    {
                                        out.print("<tr><td><img src='" + p.getUrl() + "' width=150 height=150></td></tr>");
                                    }
                                }
                            %>
                        </div>
                      </div>
                        
                      <div class="col_1">
                          <span class="similar_pro_span">Similar Product</span>
                        <div class="pic_similar"> 
                            <% 
                                list = (List<Product>) request.getAttribute("object4");
                                if(list != null)
                                {
                                    for(Product p: list)
                                    {
                                        out.print("<tr><td><img src='" + p.getUrl() + "' width=150 height=150></td></tr>");
                                    }
                                }
                            %>
                        </div>
                      </div>
                    </div>
                  </div>
                  </div>
            
                
       </div>
        <footer>
              <div class="position-absolute bottom-0 start-50 translate-middle-x" style="background-color: white;">
<!--              <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: white;">
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
                        <a class="nav-link" href="#">Link</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link bg-gradient" href="#">Help</a>
                      </li>
                      </ul>
                  </div>
                    </div>
                    </nav>-->
                  </div>
            </footer>
            





        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>   
    </body>
</html>

