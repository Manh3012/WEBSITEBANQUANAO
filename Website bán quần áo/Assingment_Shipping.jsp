<%-- 
    Document   : Assingment_Shipping
    Created on : Mar 8, 2022, 9:24:38 PM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> 
<head>
    <title>Shipping details</title>
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
    <div class="row">
      <div class="col-sm-6">
          <div>Shipping Details</div>
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
      <div class="col-sm-4">
          <div>Summary</div>
        <div class="container">
            <div class="row row-cols-2 row-cols-lg-8 g-2 g-lg-3">
              <div class="col">
                <div class="p-3 border bg-light">Nhét ảnh vô</div>
              </div>
            </div>
        </div>
    </br>
    <div class="container">
        <div class="row row-cols-2 row-cols-lg-8 g-2 g-lg-3">
          <div class="col">
            <div class="p-3 border bg-light">Nhét ảnh vô</div>
          </div>
        </div>
    </div>
      
      </div>
</div>
<div class="btn-group" role="group" aria-label="Basic example">
    <button type="button" class="btn btn-primary">Next</button>
    <button type="button" class="btn btn-primary">Cancel</button>
</div>
    



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
