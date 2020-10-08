/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import servlets.AccountService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Chels
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();

        String password = request.getParameter("password");
        String username = request.getParameter("username");
        String logout = request.getParameter("logout");
        
        if (logout != null)
        {
            session.invalidate();
            request.setAttribute("displayMessage", "Logged out.");
            request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        }
         else if (session.getAttribute("username") != null) {
            request.getRequestDispatcher("/WEB-INF/home.jsp")
                    .forward(request, response);
        }
        else if (username == null || password == null) {
            request.getRequestDispatcher("/WEB-INF/login.jsp")
                    .forward(request, response);
        }
        
        getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                HttpSession session = request.getSession();

        String password = request.getParameter("password");
        String username = request.getParameter("username");
        
            AccountService userService = new AccountService();
            //User user = userService.login(username, password);

            
            if (userService.login(username, password) != null) {
                
                session.setAttribute("username", username);
                request.getRequestDispatcher("/WEB-INF/home.jsp")
                        .forward(request, response);
            } else {
                
                request.setAttribute("displayMessage", "Invalid username or password");
                request.getRequestDispatcher("/WEB-INF/login.jsp")
                        .forward(request, response);
            }

        
    //getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
    }

}
