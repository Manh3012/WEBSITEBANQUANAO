<%-- 
    Document   : update
    Created on : Mar 17, 2022, 10:04:48 PM
    Author     : Admin
--%>
<%@page import="Model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Update Form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, textarea, label { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin:0;
      font-size: 60px;
      color: #fff;
      z-index: 2;
      line-height: 83px;
      top:30px;
      }
      legend {
      padding: 10px;      
      font-family: Roboto, Arial, sans-serif;
      font-size: 18px;
      color: #fff;
      background-color: #1c87c9;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      margin: 8%;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 8px #006622; 
      }
      .banner {
      position: relative;
      height: 150px;
      
    
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.4); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
     

      .item {
      position: relative;
      margin: 10px 0;
      }
      .item span {
      color: red;
      }
      .week {
      display:flex;
      justify-content:space-between;
      }
      .colums {
      display:flex;
      justify-content:space-between;
      flex-direction:row;
      flex-wrap:wrap;
      }
      .colums div {
      width:48%;
      }
     
      
   
    </style>
  </head>
  <body
      <%@taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
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
            
    <div class="testbox">
         <c:set var="product" value="${requestScope.object}"/>
    <form action="/MVNNB/Product/edit">
      <div class="banner">
        <h1>Update form</h1>
      </div>
        <div class="colums">
          <div class="item">
            <label for="id">ID</label>
            <input id="id" type="hidden" name="id" value="${product.id}" />
          </div>
          <div class="item">
            <label for="pname">Product Name</label>
            <input id="pname" type="text" name="pname" value="${product.name}" />
          </div>
          <div class="item">
            <label for="img">Image link</label>
            <input id="img" type="text"   name="img" value="${product.url}"/>
          </div>
          <div class="item">
            <label for="brand">Brand</label>
            <input id="brand" type="text"   name="brand" value="${product.brand}"/>
          </div>
          <div class="item">
            <label for="size">Size</label>
            <input id="size" type="text"   name="size" />
          </div>
          <div class="item">
            <label for="cate">ID category</label>
            <input id="cate" type="text"   name="cate" />
          </div>
          <div class="item">
            <label for="amount">Amount</label>
            <input id="amount" type="text"   name="amount" />
          </div>
          <div class="item">
            <label for="price">Price</label>
            <input id="price" type="text"   name="price" />
          </div>
          <div class="item">
            <label for="sale">Sale</label>
            <input id="sale" type="text"   name="sale" />
          </div>
          <div class="item" >
            <input id="submmit" style="background-color: red; color: white;" type="submit" name="submit" />
          </div>
        </div>
    </form>
    </div>
  </body>
</html>
