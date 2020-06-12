

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Author Bio</title>
        <!--SSS-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="css/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            /*
                        .card-container{
                            margin-bottom: auto;
                            margin-bottom: auto;
                            margin-left: auto;
                            margin-right:auto;
                        }
            */

        </style>
    </head>
    <body>
        <%@include file="Navbar_provider.jsp" %>


        <%            String authorName = request.getParameter("Author");
            UserDao userDao = new UserDao(myConnection.getConnection());
            User user = userDao.getUserByName(authorName);
        %>

        <div class="container mt-5 " >

            <div class="row text-center">
                <div class="col-md-4 offset-md-4" >
                    <div class="card p-4">
                        <img class="card-img-top" src="Uploads-img/default.png" alt="TechBlock">
                        <div class="card-body">
                            <h5 class="card-title"><%= user.getName()%></h5>
                            <p class="card-text"><%= user.getAbout()%></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="Footer.jsp" %>

        <!--JAVASCRIPTS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>        
        <script src="JavaS/myjs.js" type="text/javascript"></script>

    </body>
</html>
