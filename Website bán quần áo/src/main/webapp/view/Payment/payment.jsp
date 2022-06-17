<%-- 
    Document   : payment
    Created on : Mar 14, 2022, 9:34:22 PM
    Author     : HoangMinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head lang="en">
        <link href="payment.css" rel="stylesheet" >
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Payment</title>
           <style>
               
               body {
                background-image: linear-gradient(white, pink);
                font-family: "Poppins", sans-serif;
                height: 100vh;
                }
               
             .col
            {
                margin-top: 8%;
                border-right: 1px solid black;
                text-align: center;
            }
            .container
            {
               margin-bottom: 5%;
                border: 1px solid black;
            }
            #summary
            {
                padding-left: 40%;
            }
            .button{
                margin-left: 45%
            }
        </style>
    </head>
    <body>
           <div class="position-absolute top-0 end-0">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
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
    
              
            </ul>

          
        </div>
    </nav>
  </div>
        <div id="two"class="container-fluid" width="100%" >
        <div class="row align-items-center" >
          <div class="col"> 
           <h4 > 1.Shopping  Cart</h4>
          </div>
          <div class="col">
           <h4 >2.Shipping Details</h4>
          </div>
          <div class="col" style="border-bottom: 2px solid grey; padding-bottom: 2%;">
           <h4>3.Payment Options</h4>
          </div>
        </div>
      
        </div>          
                <div  class="container">
                
                  <div  class="row align-items-center">
                    <div id="credit" class="col">
                     <h5> Payment Methods</h5>
                     
                     <div  class="form-check">
                      <input class="form-check-input" type="radio" >
                      <label class="form-check-label" for="flexRadioDefault1">
                        Credit Card<br>
                        This step require an actual card id and name.
                      </label>
                    </div>
                     <form action="/url" method="GET">
                      <input type="text" placeholder="0000-0000-0000-0000">  <input type="text" placeholder="MM/YY">  <input type="text" placeholder="CVV">
                      <br>
                      <br>
                      <input  type="text" placeholder="Card Holder Name" size="73">
                    
                      <br>  
                      <br>
                      <br>
                       <div class="form-check">
                        <input class="form-check-input" type="radio" >
                        <label class="form-check-label" for="flexRadioDefault1">
                            <button class="btn btn-secondary btn-sm" onclick="myFunction()" ><a href="http://localhost:8080/MVNNB/Product/home" style="text-decoration:none; color: white;">PAY PAL</a></button>
                        </label>
                      </div>
                      <br>
                      
                  </form>
                    </div>
                    </div>
                    
                    
                <div class="button"> 
                 
                 <button type="button" class="btn btn-secondary btn-sm "><a style="text-decoration: none;color: white;" href="/MVNNB/view/Payment/shipping.jsp">Previous</a></button>        
                 <button type="button" class="btn btn-dark btn-sm"><a style="text-decoration: none;color: white;" href="/MVNNB/Product/home">Cancel</a></button>
                
                 </div>    
                
    
              

        <script>
        function myFunction() {
          alert("Thanks for buying our product");
        }
        </script>  

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
                
    </body>
</html>
