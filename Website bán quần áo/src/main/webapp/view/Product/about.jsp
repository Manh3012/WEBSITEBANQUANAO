<%-- 
    Document   : about
    Created on : Mar 21, 2022, 2:03:59 PM
    Author     : HoangMinh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> 
<head>
    <title>About us PAGE</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="about.css" rel="stylesheet">
    <style>
        .about-section {
        text-align: center;
        margin-top: 10%;
        color: black;
        text-align: center;
        padding: 2%;
        background-image: linear-gradient(white , grey , white);
        border: 5px solid grey;
        border-radius: 40px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">        
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item-1" id="nav-item-1">
                <a class="nav-link" href="http://localhost:8080/MVNNB/Product/home">Home</a>
              </li>
              
              <li class="nav-item">
                    <a class="navbar-brand" href="http://localhost:8080/MVNNB/Login/login">
                        <ion-icon name="airplane-outline"></ion-icon>
                            Login
                    </a>
                </li>
            </ul>           
          </div>
        </div>
      </nav>
      <div class="about-section">
            <h1 >About our shop</h1>
            <div>
                <p>Công ty TNHH BTV Online Shop</p>
                <p>Email: abc@gmail.com</p>
                <p>Phone: 12367532598 </p>
            </div>
      </div>
</body>