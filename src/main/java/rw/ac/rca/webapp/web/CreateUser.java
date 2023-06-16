package rw.ac.rca.webapp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rw.ac.rca.webapp.orm.User;
import rw.ac.rca.webapp.util.UserRole;
import rw.ac.rca.webapp.util.Util;
import rw.ac.rca.webapp.dao.UserDAO;
import rw.ac.rca.webapp.dao.impl.UserDAOImpl;

/**
 * Servlet implementation class CreateUser
 */
public class CreateUser extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO = UserDAOImpl.getInstance();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateUser() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession httpSession = request.getSession();
        UserRole[] userRoles = UserRole.values();
        httpSession.setAttribute("userRoles", userRoles);
        request.getRequestDispatcher("WEB-INF/pages/createuser.jsp").forward(
                request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession httpSession = request.getSession();
        User user = new User();
        String usernameauth = request.getParameter("username");
        String passwordauth = request.getParameter("password");
        String userfullname = request.getParameter("userfullname");
        String email = request.getParameter("email");
        String userRole = request.getParameter("userRole");
        UserRole usrr = UserRole.valueOf(userRole);

        User user1 = userDAO.getUserByEmailAddress(email);
        if (user1 != null) {
            httpSession.setAttribute("message", "Email already exists");
            request.getRequestDispatcher("WEB-INF/pages/createuser.jsp").forward(
                    request, response);
            return;
        }
        User user2 = userDAO.getUserByUsername(usernameauth);
        if (user2 != null) {
            httpSession.setAttribute("message", "Username already exists");
            request.getRequestDispatcher("WEB-INF/pages/createuser.jsp").forward(
                    request, response);
            return;
        }
        try {
            String hashedPsw = Util.generateHashed512(passwordauth);
            user.setUsername(usernameauth);
            user.setPassword(hashedPsw);
            user.setFullName(userfullname);
            user.setEmail(email);
            user.setUserRole(usrr);

            userDAO.saveOrUpdateUser(user);

            httpSession.setAttribute("message", "Created successfully");
            // response.sendRedirect("login");
//            request.getRequestDispatcher("WEB-INF/pages/users.jsp").forward(
//                    request, response);
        } catch (Exception e) {
            httpSession.setAttribute("message", "Can't Create");
        }
    }
}


