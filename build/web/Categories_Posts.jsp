<%-- 
    Document   : Categories_Posts
    Created on : 1 Jun, 2020, 9:54:57 PM
    Author     : princ
--%>

<%@page import="com.techblock.entities.User"%>
<%@page import="com.techblock.dao.UserDao"%>
<%@page import="com.techblock.entities.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.techblock.helpers.myConnection"%>
<%@page import="com.techblock.dao.PostDao"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Navbar_provider.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Posts</title>
        <!--SSS-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="css/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--        <style>
                    body{
                        background-color: #e3f2fd;
                    }
                    
                </style>-->
    </head>
    <body>

        <%            int id = Integer.parseInt(request.getParameter("id"));

            PostDao postDao = new PostDao(myConnection.getConnection());
            List<Post> list = postDao.getPostsById(id);
            for (Post post : list) {
                String content = postDao.getPostShortContent(post.getpId());

                UserDao userDao = new UserDao(myConnection.getConnection());
                User Muser = userDao.getUserById(post.getAuthorId());


        %>

        <div class="container mt-4">
            <div class="card mb-3" >
                <div class="row no-gutters">
                    <div class="col-md-4">
                        <img src="Uploads-img/<%= post.getpPic()%>" class="card-img" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title"><%= post.getpTitle()%></h5>
                            <p class="card-text" style="max-height: 6rem; overflow: hidden"><%= post.getpContent()%>...</p>
                            <a href="Blog.TechBlock.jsp?post=<%= post.getpTitle()%>" class="btn btn-outline-primary">Read more..</a>
                            <p class="card-text" style="float: right"><small class="text-muted">Posted By <%= Muser.getName()%></small></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%            }

        %>





        <%@include  file="Footer.jsp" %>
        <!--JAVASCRIPTS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>        
        <script src="JavaS/myjs.js" type="text/javascript"></script>

    </body>
</html>
