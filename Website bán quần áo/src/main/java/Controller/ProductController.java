/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.Product;
import DBManager.ProductManager;
import Model.User;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpSession;
        
        


/**
 *
 * @author Dell G7 7590
 */
public class ProductController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getPathInfo();
        log(path);
        
        if (path.equals("/home")){
                // Request data from database
                    ProductManager manager = new ProductManager();
                    List<Product> list = manager.list(2);

                    request.setAttribute("list", list);

                    RequestDispatcher rd = request.getRequestDispatcher("/view/Product/home.jsp");
                    rd.forward(request, response);
        }
        
        else if(path.equals("/categories"))
        {
            ProductManager manager = new ProductManager();
            List<Product> HoodieList = manager.listCate(1,"hoddie");
            request.setAttribute("hoodielist", HoodieList);
            List<Product> ShirtList = manager.listCate(1,"Shirt");
            request.setAttribute("shirtlist", ShirtList);
            List<Product> PantsList = manager.listCate(1,"pant");
            request.setAttribute("pantslist", PantsList);
            log(HoodieList.size()+"");
            
            
            RequestDispatcher rd = request.getRequestDispatcher("/view/Product/categories.jsp");
            rd.forward(request, response);
        }
        else if (path.equals("/edit")){
            
                int id = new Integer(request.getParameter("id"));
                
                ProductManager manager = new ProductManager();
                Product prod = manager.load(id);

                
                //UPDATE STUDENT
                HashMap<String,String> errors = new HashMap<String,String>();
                boolean hasError = false;
                String prodName = request.getParameter("pname");
                if (prodName.trim().equals("")){
                    errors.put("pname", "Product name is empty");
                    hasError = true;
                }                    
                prod.setName(request.getParameter("pname"));
                prod.setUrl(request.getParameter("img"));
                prod.setBrand(request.getParameter("brand"));
                prod.setSize(request.getParameter("size"));
                prod.setCateID(new Integer(request.getParameter("cate")));
                prod.setAmount(new Integer(request.getParameter("amount")));
                prod.setPrice(new Float(request.getParameter("price")));
                prod.setSale(new Float(request.getParameter("sale")));
                
                if (hasError){
                    request.setAttribute("object", prod);
                    request.setAttribute("errors", errors);

                    RequestDispatcher rd = request.getRequestDispatcher("/view/Product/home.jsp");
                    rd.forward(request, response);
                }else{
                    log("Update student " + prod.getId() + " " + prod.getName());
                    manager.update(prod);
                    Product result = manager.load(id);
                    request.setAttribute("object", result);
                    response.sendRedirect(request.getContextPath()+"/Product/detail");
                }
        }
        else if (path.equals("/update")){
                int id = new Integer(request.getParameter("id"));
                ProductManager manager = new ProductManager();
                Product prod = manager.load(id);

                request.setAttribute("object", prod);
                
                RequestDispatcher rd = request.getRequestDispatcher("/view/Product/update.jsp");
                rd.forward(request, response);
        }
        
        
        else if (path.equals("/detail")){
            
                int id = new Integer(request.getParameter("id"));
                ProductManager manager = new ProductManager();
                Product prod = manager.load(id);

                request.setAttribute("object", prod);
                
                List<Product> list = manager.list(2);

                request.setAttribute("list", list);
                
                List<Product> list2 = manager.Ramdom_similar_product();
                List<Product> list3 = manager.Ramdom_similar_product();
                List<Product> list4 = manager.Ramdom_similar_product();
                
                request.setAttribute("object2", list2);
                request.setAttribute("object3", list3);
                request.setAttribute("object4", list4);

                RequestDispatcher rd = request.getRequestDispatcher("/view/Product/detail.jsp");
                rd.forward(request, response);
        }
        
        else if(path.equals("/search"))
        {  
                String name = request.getParameter("search");
                ProductManager manager = new ProductManager();
                Product prod = manager.search(name);

                request.setAttribute("object", prod);
                
                List<Product> list = manager.list(2);

                request.setAttribute("list", list);
                
                List<Product> list2 = manager.Ramdom_similar_product();
                List<Product> list3 = manager.Ramdom_similar_product();
                List<Product> list4 = manager.Ramdom_similar_product();
                
                request.setAttribute("object2", list2);
                request.setAttribute("object3", list3);
                request.setAttribute("object4", list4);

                RequestDispatcher rd = request.getRequestDispatcher("/view/Product/detail.jsp");
                rd.forward(request, response);

              
        }
        
        else if(path.equals("/sortPrice"))
        {
            ProductManager manager = new ProductManager();
            List<Product> list = manager.sort_price();
            request.setAttribute("list", list);
            
            RequestDispatcher rd = request.getRequestDispatcher("/view/Product/categories.jsp");
            rd.forward(request, response);
        }
        
        else if(path.equals("/sortName"))
        {
            ProductManager manager = new ProductManager();
            manager.sort_name();
            List<Product> HoodieList = manager.listCate(1,"hoddie");
            request.setAttribute("hoodielist", HoodieList);
            List<Product> ShirtList = manager.listCate(1,"shirts");
            request.setAttribute("shirtlist", ShirtList);
            List<Product> PantsList = manager.listCate(1,"pant");
            request.setAttribute("pantslist", PantsList);
            log(HoodieList.size()+"");
            
            
            RequestDispatcher rd = request.getRequestDispatcher("/view/Product/categories.jsp");
            rd.forward(request, response);
            
           
            List<Product> list = manager.sort_name();
            request.setAttribute("list", list);
            
            
            rd.forward(request, response);
        }
        
        else if(path.equals("/cart"))  
        {            
            
            HttpSession ss = request.getSession();
            User us = (User) ss.getAttribute("usersession");

            if(us == null)
            {
                response.sendRedirect(request.getContextPath()+"/Login/login");
            }

            else
            {
                int id = Integer.parseInt(request.getParameter("id"));
                
                ProductManager manager = new ProductManager();
                Product prod = manager.load(id);

                request.setAttribute("object", prod);

                RequestDispatcher rd = request.getRequestDispatcher("/view/Payment/cart.jsp");
                rd.forward(request, response);
            }
        }
    }
        
        

 // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

