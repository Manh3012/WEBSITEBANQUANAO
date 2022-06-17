/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DBManager.LoginManager;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String path = request.getPathInfo();
            log(path);
            if (path.equals("/login")){
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                    LoginManager manager = new LoginManager();
                    User us = manager.login(username, password);

                    HttpSession ss = request.getSession(true);
                    ss.setAttribute("usersession", us);

                    if (us != null){
                        if(us.getAccessRight().equals("admin"))
                        {
                            RequestDispatcher rd = request.getRequestDispatcher("/view/Product/update.jsp");
                            rd.forward(request, response);
                        }
                        response.sendRedirect(request.getContextPath()+"/Product/home");
                    }else{
                        request.setAttribute("login-msg", "Wrong username or password");
                        RequestDispatcher rd = request.getRequestDispatcher("/view/Access/login.jsp");
                        rd.forward(request, response);
                    }
                    
                    
        }else if (path.equals("/logout")){
                HttpSession ss = request.getSession();
                ss.setAttribute("usersession", null);
                
                request.setAttribute("login-msg", "Logged out");
                RequestDispatcher rd = request.getRequestDispatcher("/view/Access/login.jsp");
                rd.forward(request, response);
            }
        else if(path.equals("/register"))
            {   
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String email = request.getParameter("email");
                String phone = request.getParameter("phone");
                
                if (username == null){
                    RequestDispatcher rd = request.getRequestDispatcher("/view/Access/register.jsp");
                    rd.forward(request, response);                
                
            }else{
                    LoginManager manager = new LoginManager();
                    User us = manager.register(username, password, email, phone);

                    HttpSession ss = request.getSession(true);
                    ss.setAttribute("usersession", us);

                    if(us != null)
                    {
                        RequestDispatcher rd = request.getRequestDispatcher("/view/Access/login.jsp");
                        rd.forward(request, response); 
                    }
                    
                    else
                    {
                        RequestDispatcher rd = request.getRequestDispatcher("/view/Access/login.jsp");
                        rd.forward(request, response); 
                    }
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
