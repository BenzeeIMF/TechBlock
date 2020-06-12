        <%@page import="com.techblock.entities.User"%>
<%
            User loggedInUser = (User) session.getAttribute("currentUser");
            if (loggedInUser == null) {
        %>
        <%@include file="normal_navbar.jsp" %>
        <%        } else {
        %>
        <%@include file="User_Navbar.jsp" %>
        <%
            }
        %>