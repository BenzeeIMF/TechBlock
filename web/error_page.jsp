<%-- 
    Document   : error_page
    Created on : 29 May, 2020, 12:50:26 PM
    Author     : princ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sorry, Sometime Went Wrong</title>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
 
    </head>
    <body>
        <div class="container text-center">
            <img src="images/error.png" class="img-fluid"  width="400" height="400">
            <h3 class="display-4">Sorry! Something went Wrong!...</h3>
            <br>
            <%= exception %>
            <br>
            <a href="index.jsp" class="btn btn-outline-secondary" style="width: 6rem">Home</a>
        </div>

    </body>
</html>
