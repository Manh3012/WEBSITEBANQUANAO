<%-- 
    Document   : payment
    Created on : Mar 8, 2022, 8:13:44 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head lang="en">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="payment.css" >
    </head>
    <body>
        <nav  name="navbar"class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Navbar</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                  </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                      Dropdown
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><a class="dropdown-item" href="#">Action</a></li>
                      <li><a class="dropdown-item" href="#">Another action</a></li>
                      <li><hr class="dropdown-divider"></li>
                      <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled">Disabled</a>
                  </li>
                </ul>
    
              </div>
            </div>
        </nav>
            <div class="container">
                
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
                
                </div>
                <div class="container">
                
                  <div class="row align-items-center">
                    <div class="col">
                     <h4> One of three columns</h4>
                     <h5>a</h5>
                     <form action="/url" method="GET">
                      <p>Please enter some text</p>
                      <input type="text" placeholder="0000-0000-0000-0000">  <input type="text" placeholder="MM/YY">  <input type="text" placeholder="CVV">
                      <br>
                      <br>
                      <input type="text" placeholder="Card Holder Name"> 
                      <br>
                      <br>
                      <br>
                      <div class="form-check">
                        <input class="form-check-input" type="radio" >
                        <label class="form-check-label" for="flexRadioDefault1">
                          PayPal
                        </label>
                      </div>
                      <br>
                      <button type="button" class="btn btn-dark btn-sm">Small button</button>
<button type="button" class="btn btn-secondary btn-sm disabled">Small button</button>
                  </form>
                    </div>
                    <div class="col">
                      <h4>One of three columns</h4>
                      <div class="container">
                        <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
                          <div class="col">
                          
                            <div class="p-3 border bg-light">Row column</div>
                            

                          </div>
                          </div>
                          <br>
                          <br>
                          <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
                            <div class="col">
                            
                              <div class="p-3 border bg-light">Row column</div>
                              
  
                            </div>
                          
                          </div>
                    </div>
                    <br>
                    <div class="btn-group">
                      <button class="btn btn-secondary btn-sm" type="button">
                        Small split button
                      </button>
                      <button type="button" class="btn btn-sm btn-secondary dropdown-toggle dropdown-toggle-split" data-bs-toggle="dropdown" aria-expanded="false">
                        <span class="visually-hidden">Toggle Dropdown</span>
                      </button>
                      <ul class="dropdown-menu">
                        <a href="#">1</a>
                        <br>
                        <a href="#">2</a>
                        <br>
                        <a href="#">3</a>
                        <br>
                      </ul>
                    </div>
                  
                    </div>
                
    
              



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>
