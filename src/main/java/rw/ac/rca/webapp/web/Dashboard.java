package rw.ac.rca.webapp.web;

import rw.ac.rca.webapp.util.UserRole;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Servlet implementation class Dashboard
 */

public class Dashboard extends HttpServlet {

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ServletException, IOException {
       HttpSession httpSession = request.getSession();
       UserRole[] userRoles = UserRole.values();
       httpSession.setAttribute("userRoles", userRoles);
       request.getRequestDispatcher("WEB-INF/pages/dashboard.jsp").forward(
               request, response);
   }
}
