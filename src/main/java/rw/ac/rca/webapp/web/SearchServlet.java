package rw.ac.rca.webapp.web;

import rw.ac.rca.webapp.dao.SearchDAO;
import rw.ac.rca.webapp.dao.impl.SearchDAOImpl;
import rw.ac.rca.webapp.orm.Search;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SearchServlet extends HttpServlet {

    private final SearchDAO searchDAO = SearchDAOImpl.getInstance();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search");
        System.out.println("You searched for: " + search);
        Search s = searchDAO.search(search);
        System.out.println("The search results are: " + s);
        req.getSession().setAttribute("search", s);
        req.getRequestDispatcher("WEB-INF/pages/search.jsp").forward(req, resp);
    }
}
