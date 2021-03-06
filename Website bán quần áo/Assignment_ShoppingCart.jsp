<%-- 
    Document   : Assignment_ShoppingCart
    Created on : Mar 8, 2022, 9:22:46 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> 
<head>
    <title>Shopping cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
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
    </br>
    </br>
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
    </br>
    </br>
    <div class="container">
        <div class="row">
          <div class="col-sm-8">
            <div>Shopping Cart</div>
            <form class="form-inline">
                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Product name</label>
                <div class="container">
                    <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
                      <div class="col">
                        <div class="p-3 border bg-light">Nh??t ???nh v??</div>
                      </div>
                    </div>
                </div>
                <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
                  <option selected>Number of product</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="3">4</option>
                  <option value="3">5</option>
                  <option value="3">6</option>
                  <option value="3">7</option>
                  <option value="3">8</option>
                  <option value="3">9</option>
                  <option value="3">10</option>
                  <option value="3">11</option>
                  <option value="3">12</option>
                  <option value="3">13</option>
                  <option value="3">14</option>
                  <option value="3">15</option>
                </select>
            </form>
            </br>
            <form class="form-inline">
                <label class="my-1 mr-2" for="inlineFormCustomSelectPref">Product name</label>
                <div class="container">
                    <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
                      <div class="col">
                        <div class="p-3 border bg-light">Nh??t ???nh v??</div>
                      </div>
                    </div>
                </div>
                <select class="custom-select my-1 mr-sm-2" id="inlineFormCustomSelectPref">
                  <option selected>Number of product</option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="3">4</option>
                  <option value="3">5</option>
                  <option value="3">6</option>
                  <option value="3">7</option>
                  <option value="3">8</option>
                  <option value="3">9</option>
                  <option value="3">10</option>
                  <option value="3">11</option>
                  <option value="3">12</option>
                  <option value="3">13</option>
                  <option value="3">14</option>
                  <option value="3">15</option>
                </select>
            </form>
          </div>
          <div class="col-sm-4">
            <div>Summary</div>
          </div>
        </div>
    </div>
</br>
</br>
    <div class="btn-group" role="group" aria-label="Basic example">
        <button type="button" class="btn btn-primary">Next</button>
        <button type="button" class="btn btn-primary">Cancel</button>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
