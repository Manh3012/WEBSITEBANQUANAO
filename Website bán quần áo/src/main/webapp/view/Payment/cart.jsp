<%-- 
    Document   : cart
    Created on : Mar 14, 2022, 9:28:06 PM
    Author     : HoangMinh
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Cart</title>
        
        <style>

            
            .container
            {
                border: 1px solid black;
            }

            .col
            {
                border-right: 1px solid black;
                text-align: center;
            }
            
            #summary_frame
            {
                border: 1px solid black;
                padding: 2%;
                position: relative;
                top: 30px;
            }
            
            .col1
            {
                padding-top: 3%;
                text-align: center;
                width:40%;
                position: relative;
                left: 10%;
            }
            
            
            .total_price
            {
                padding-bottom: 20px;
                padding-left: 3px;
                margin: 4%; 
                position: relative;
                top: 10px;  
            }
            
            .summary_content
            {
                padding: 20px;
                border-bottom: 1px solid black;
            }
            
        </style>
    </head>
    <body>
        
        <%! Product list; %> <!-- khởi tạo list-->
        
        <div class="position-absolute top-0 end-0">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div  class="container-fluid">
          <a class="navbar-brand" href="http://localhost:8080/MVNNB/Product/home">
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
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <ion-icon name="cart-outline"></ion-icon>
                  Your Cart
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Another action</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="#">Some thing else here</a></li>
                </ul>
              </li>
              
            </ul>
        </div>
    </nav>
    <br>
      <br>
      <br>
          
  </div> 
    </br>
    </br>
    </br>
    
    <div id="two"class="container-fluid" width="100%" >
        <div class="row align-items-center" >
          <div class="col"> 
           <h4 style="border-bottom: 2px solid grey; padding-bottom: 2%;"> 1.Shopping  Cart</h4>
          </div>
          <div class="col">
           <h4 >2.Shipping Details</h4>
          </div>
          <div class="col">
           <h4>3.Payment Options</h4>
          </div>
        </div>
        <br>
        <br>
        <br>
        </div>
<!--    <div class="container">

        <div class="row align-items-center">
          <div class="col">
           <h4> One of three columns</h4>
          </div>
          <div class="col">
            <h4>One of three columns</h4>
          </div>
          <div class="col">
            <h4>One of three columns</h4>
          </div>
        </div>
    </div>-->
    </br>
    </br>
    <div class="container" style="padding:3%">
        <div class="row">
          <div class="col-sm-8">
              <div>
                  <h4 style="border-bottom: 1px solid black; padding-bottom: 1%;">Shopping Cart</h4>
              </div>
              <form class="form-inline" name="amount">
                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Product name 1</label>
                <div class="container">
                    <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
                      <div class="col">
                        <div class="p-3 border bg-light">
                            
                            <% 
                                list = (Product) request.getAttribute("object");
                                if(list != null)
                                {

                                        out.print("<tr><td><img src='" + list.getUrl()+ "' style='width:100%;'></td></tr>");

                                }
                            %>
                            
                        </div>
                      </div>
                        <div class="col1">
                            <%
                                if(list != null)
                                {
                                out.print("<tr><td> Name: " + list.getName() + "</td></br>"
                                          + "<td> Size: "+ list.getSize() +"</td></br>"
                                          + "<td> Brand: "+ list.getBrand()+"</td></br>"
                                          + "<td> Price: "+ list.getPrice()+"</td></br>"
                                          + "</tr>");

                                }
                            %>
                      </div>
                    </div>
                </div>
            </form>
            
            </br>
            
          </div>
          <div class="col-sm-4">
              <div ><h4 style="border-bottom: 1px solid black; padding-bottom: 2%;">Summary</h4></div>
              <div id="summary_frame">
                  <div class="total_price">
                      <div class="summary_content">
                          <span style="font-weight:bolder;">Sub Total:
                          <%
                              if(list != null)
                              {
                                out.print("<p>" + list.getPrice()+ "</p>");
                                }
                          %>
                          </span>
                      </div>
                      <div class="summary_content">
                          <span style="font-weight:bolder;">Shipping: Free</span>
                      </div>
                      <div class="summary_content"><span style="font-weight:bolder;">Taxes: 0VND</span></div>
                      <div style="padding:20px;"><span style="font-weight:bolder;">Total: 
                          <%
                              if(list != null)
                              {
                                out.print("<p>" + list.getPrice()+ "</p>");
                                }
                          %>
                          </span>
                      </div>
                  </div>  
              </div>
          </div>
        </div>
    </div>
</br>
</br>
    <div class="btn-group" role="group" aria-label="Basic example" >
        <button type="submit" class="btn btn-primary" style="background-color: 	#696969; ">
            <a href="http://localhost:8080/MVNNB/view/Payment/shipping.jsp"><span style="color:white; text-decoration: none">Next</span></a>
        </button>
        <button type="button" class="btn btn-primary" style="background-color: 	#DCDCDC; color: white;">
            <a href="http://localhost:8080/MVNNB/Product/detail"><span style="color:black; text-decoration: none">Cancle</span></a>
        </button>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
