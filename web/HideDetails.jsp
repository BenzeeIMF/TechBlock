
<%@page import="com.techblock.entities.User"%>
<%
    
    User HideDetailsUser = (User) session.getAttribute("currentUser");
    if (HideDetailsUser == null) {
        response.sendRedirect("index.jsp");
    }
    
%>

