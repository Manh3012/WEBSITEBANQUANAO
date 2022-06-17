<%-- 
    Document   : shipping
    Created on : Mar 14, 2022, 9:29:05 PM
    Author     : HoangMinh
--%>

<%@page import="Model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shipping</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <style>
            

             .col
            {
                display: flex;
                margin-top: 8%;
                border-right: 1px solid black;
                text-align: center;
                align-items: center; 
            }
            h5{
                text-align: center;
            }
         
            .container
            {
                margin-bottom: 5%;
                border: 1px solid black;
                padding: 3%;
                margin: 2%
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
        <%! Product list; %> <!-- khởi tạo list-->
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
           <h4 style="border-bottom: 2px solid grey; padding-bottom: 2%;" >2.Shipping Details</h4>
          </div>
          <div class="col">
           <h4>3.Payment Options</h4>
          </div>
        </div>
        <br>
        <br>
        <br>
        </div>
    </br>
</br>
<div class="container">
    <div class="row">
      <div class="col-sm-6">
          <h5 style="text-align:center;"> Shipping Details</h5>
        <form class="needs-validation" novalidate>
            <div class="form-row">
              <div class="col-md-4 mb-3">
                <label for="validationTooltip01">First name</label>
                <input type="text" class="form-control" id="validationTooltip01" placeholder="First name" required>
                <div class="valid-tooltip">
                  Looks good!
                </div>
              </div>
              <div class="col-md-4 mb-3">
                <label for="validationTooltip02">Last name</label>
                <input type="text" class="form-control" id="validationTooltip02" placeholder="Last name" required>
                <div class="valid-tooltip">
                  Looks good!
                </div>
              </div>
              
            <div class="form-row">
              <div class="col-md-6 mb-3">
                <label for="validationTooltip03">City</label>
                <input type="text" class="form-control" id="validationTooltip03" placeholder="City" required>
                <div class="invalid-tooltip">
                  Please provide a valid city.
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="validationTooltip04">Address</label>
                <input type="text" class="form-control" id="validationTooltip04" placeholder="Address" required>
                <div class="invalid-tooltip">
                  Please provide a valid state.
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="validationTooltip04">Phone Number</label>
                <input type="text" class="form-control" id="validationTooltip04" placeholder="Phone Number" required>
                <div class="invalid-tooltip">
                  Please provide a valid phone number.
                </div>
              </div>
              <div class="col-md-3 mb-3">
                <label for="validationTooltip05">Zip</label>
                <input type="text" class="form-control" id="validationTooltip05" placeholder="Zip" required>
                <div class="invalid-tooltip">
                  Please provide a valid zip.
                </div>
              </div>
            </div>
           
          </form>
          <form action="/action_page.php">
            <div class="form-check">
              <input type="checkbox" class="form-check-input" id="check1" name="option1" value="something" checked>
              <label class="form-check-label" for="check1">Ship 1 $2000</label>
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" id="check2" name="option2" value="something">
              <label class="form-check-label" for="check2">Ship 2 $100000</label>
            </div>
          </form>
      </div>
    </div>
      
</div>

          <div class="button">    
                 <button type="button" class="btn btn-secondary btn-sm "><a style="text-decoration: none;color: white;" href="/MVNNB/view/Payment/cart.jsp">Previous</a></button>                        
                 <button type="button" class="btn btn-secondary btn-sm "><a style="text-decoration: none;color: white;" href="/MVNNB/view/Payment/payment.jsp">Next</a></button>
                 </div>    

    



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
