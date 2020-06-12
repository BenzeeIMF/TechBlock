
<%@page import="com.techblock.entities.User"%>
<%@page import="com.techblock.dao.UserDao"%>
<%@page import="com.techblock.entities.Post"%>
<%
    String title = request.getParameter("post");
%>


<%@page import="com.techblock.helpers.myConnection"%>
<%@page import="com.techblock.dao.PostDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="Navbar_provider.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog</title>
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
         <!--<h2><%= title%></h2>-->
        <%
            PostDao postDao = new PostDao(myConnection.getConnection());
            Post post = postDao.getSinglePost(title);
        %>
        <!--<h2><%= post.getpContent()%></h2>-->

        <div class="container mt-5">
            <div class="card mb-3 p-4">

                <img class="card-img-top" src="Uploads-img/<%= post.getpPic()%>" alt="Card image cap">

                <div class="card-body">
                    <div class="text-center"><h5 class="card-title display-4 "><%= post.getpTitle()%></h5></div> 
                    <p class="card-text"><%=  post.getpContent()%></p>
                    <pre class="card-text" style="background-color: #e2e2e2"><%=  post.getpCode()%></pre>
                    <!--<p class="card-text"><small class="text-muted">  </small></p>-->
                </div>
                <br>

                <%

                    UserDao userDao = new UserDao(myConnection.getConnection());
                    User kuser = userDao.getUserById(post.getAuthorId());

                %>


            </div>
            <div class="card pt-2" style="height: 6rem">
                <div class="text-center">
                    <h5 class="card-title"><a href="Author.jsp?Author=<%=kuser.getName()%>">Posted By: <%= kuser.getName()%></a></h5>
                    <p ><%= kuser.getAbout()%></p>
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
