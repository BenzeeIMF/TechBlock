
<%@page import="com.sun.prism.Texture.Usage"%>
<%@page import="java.rmi.server.UID"%>
<%@page import="com.techblock.entities.User"%>
<%@page import="com.techblock.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.techblock.dao.PostDao"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.techblock.helpers.myConnection" %>
<%@page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>

        <!--SSS-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="css/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 72% 91%, 35% 100%, 0 93%, 0 0);
            }

        </style>
    </head>
    <body>


        <%@include file="Navbar_provider.jsp" %>

        <%            Connection con = myConnection.getConnection();
        %>

        <div class="container-fluid p-0 m-0 " > 
            <div class="jumbotron jumbotron-fluid primary-background banner-background" >
                <div class="container">
                    <h3 class="display-4">Welcome to <span style=" font-size: larger" >TechBlock</span></h3>
                    <p>TechBlock is a portal to share your knowledge with others who need it the most! TechBlock provides you a fully fledge dashboard from where you can manage your posts as well as share your research that you've done till now. Join today and start sharing your knowledge!</p>
                    <a href="register_page.jsp" class="btn-dark btn signup-btn"><span class="fa fa-check-square-o"></span >  &nbsp; Start! It's free</a>
                    <a href="login-page.jsp" class="btn-dark btn login-btn"><span class="fa fa-user-circle-o"></span> &nbsp; Login Now </a>
                </div></div>
        </div>
        <br>

        <!--CARDS-->


        <%
            PostDao postDao = new PostDao(myConnection.getConnection());
            List<Category> list = postDao.getAllCategories();

            for (Category category : list) {
        %>
        <div class="container">
            <div class="row" >
                <div class="col-md-11 mb-2">
                    <div class="card" >
                        <div class="card-body">

                            <h5 class="card-title"><%= category.getName()%></h5>
                            <p class="card-text"><%= category.getDescription()%></p>
                            <a href="Categories_Posts.jsp?id=<%= category.getId()%>" class="btn btn-primary">Learn now</a>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            }
        %>
        <%@include file="Footer.jsp" %>

        <!--JAVASCRIPTS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>        
        <script src="JavaS/myjs.js" type="text/javascript"></script>
        <!--         <script src="https://kit.fontawesome.com/yourcode.js"></script>-->

        <%
            User kuser = (User) session.getAttribute("currentUser");
            if (kuser != null) {

        %>
        <script>

            $(document).ready(function () {

                $(".signup-btn").hide();
                $(".login-btn").hide();

            });

        </script>
        <script>
            $(document).ready(function () {

                let editStatus = false;
                $("#edit-profile-button").click(function () {

                    if (editStatus == false) {

                        $('#edit-profile-button').text('Update');
                        $('#show-profile').hide();
                        $('#edit-profile').show();
                        editStatus = true;
                    } else
                    {
                        $('#edit-profile-button').text('Edit');
                        $('#show-profile').show();
                        $('#edit-profile').hide();
                        editStatus = false;
                    }
                });
            });
        </script>

        <%                }
        %>

    </body>
</html>
