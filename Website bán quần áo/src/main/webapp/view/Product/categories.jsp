<%-- 
    Document   : categories
    Created on : Mar 14, 2022, 9:32:08 PM
    Author     : HoangMinh
--%>

<%@page import="java.util.List"%>
<%@page import="Model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CATALOG</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
        <style>
            
                         
            
            .search_bar
            {
                padding: 1%;
                
            }
            .row
            {
                text-align: center;
                padding: 2%;
            }
            
            .name_clothes
            {
                position: relative;
                left: 80%;
                font-style: italic;
                font-size: 200%;
                font-weight: bolder;
                padding: 1%;
                text-align: center;
            }
            
            footer
                {
                    text-align: center;
                    padding: 2%;
                    background-image: linear-gradient(white 10%, grey);
                }
                
            #container_2
            {
                border-top: 1px solid black;
                border-bottom: 1px solid black;
            }
            
            .search_bar{
                margin-left: 30%;
                margin-right: 30%;
                
            }
            
        </style>
    </head>
    <body>
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
    </br>
    </br>
    <h1 style="text-align: center; text-shadow: 5px 2px 4px grey; padding: 5px;">Categories</h1>
    </br>
    <div class="search_bar">
    <form class="d-flex" action="./search">
            <input class="form-control me-2" name="search" type="search" placeholder="Brand or Name? " aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
    </div>
    </br>
    <h1 style="text-align: center; text-shadow: 5px 2px 4px grey; padding: 5px;">Featured category</h1>
    </br>
    </br>
    <div class="container">
        <div class="row row-cols-4">
          <div class="row">
              <span class="name_clothes">
                  <p>Hoddie</p>
                    <%! List<Product> hlist;%>
                    <%
                      hlist = (List<Product>) request.getAttribute("hoodielist");
                      for (Product p: hlist){
                      out.print("        <div class='col'>"
                               + "<td><img src='" + p.getUrl() + "' width='150' height='150'></td>"
                               + "        </div>");
                   }
                    %>
              </span>
          </div>
          <div class="row">
              <span class="name_clothes">
                  <p>T-Shirts</p>
                <%! List<Product> jlist;%>
                <%
                  jlist = (List<Product>) request.getAttribute("shirtlist");
                  for (Product p: jlist){
                  out.print("        <div class='col'>"
                           + "<td><img src='" + p.getUrl() + "' width='150' height='150'></td>"
                           + "        </div>");
               }
                %>
              </span>
          </div>
          <div class="row">
              <span class="name_clothes">
                  <p>Pants</p>
                    <%! List<Product> plist;%>
                    <%
                      plist = (List<Product>) request.getAttribute("pantslist");
                      for (Product p: plist){
                      out.print("        <div class='col'>"
                               + "<td><img src='" + p.getUrl() + "' width='150' height='150'></td>"
                               + "        </div>");
                   }
                    %>
              </span>
          </div>
              
        </div>
              
              
      </div>
      </br>
    </br>
    <div class="container" id="container_2">
        <div class="row">
            <div class="col" style="border-right: 1px solid black; margin-right: 15%;">
            <h4>Featured items</h4>
            <button class="btn btn-outline-success" type="submit">
                <a href="http://localhost:8080/MVNNB/Product/categories" style="text-decoration: none; color: black;">
                    Sort Name
                </a>
            </button>
          </div>
          <div class="col-6">
            <div class="container">
                
                </div>
              </div>
          </div>
        </div> 
        </div>
      </div>
    </br>
    </br>
    </br>
</body>
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
