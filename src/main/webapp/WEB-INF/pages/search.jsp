<%@ page import="rw.ac.rca.webapp.orm.User" %>
<%@ page import="java.util.List" %>
<%@ page import="rw.ac.rca.webapp.orm.Course" %>
<%@ page import="rw.ac.rca.webapp.orm.Search" %>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="shortcut icon" href="images/rcalogo.png" type="image/x-icon"/>
    <title>Search</title>
</head>
<body>
<jsp:include page="../components/headeradmin.jsp">
    <jsp:param value="courses" name="title"/>
</jsp:include>
<div>
    <h1>Search Results</h1>

    <%
        Search searchResult = (Search) request.getSession().getAttribute("search");
        if (searchResult != null) {
            String title = searchResult.getTitle();
            String description = searchResult.getDescription();
            String url = searchResult.getUrl();
            List<User> users = searchResult.getUsers();
            List<Course> courses = searchResult.getCourses();
    %>

    <h2>Title: <%= title %>
    </h2>
    <p>Description: <%= description %>
    </p>
    <p>URL: <%= url %>
    </p>

    <h3>Users:</h3>
    <ul>
        <% for (User user : users) { %>
        <li><%= user.getFullName() %>
        </li>
        <% } %>
    </ul>

    <h3>Courses:</h3>
    <ul>
        <% for (Course course : courses) { %>
        <li><%= course.getName() %>
        </li>
        <% } %>
    </ul>

    <% } else { %>

    <p>No search results found.</p>

    <% } %>

</div>
</div>
</div>
</div>
</body>