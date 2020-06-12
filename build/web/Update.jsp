<%-- 
    Document   : Update
    Created on : 3 Jun, 2020, 5:27:25 PM
    Author     : princ
--%>

<%@page import="com.techblock.entities.Post"%>
<%@page import="com.techblock.helpers.myConnection"%>
<%@page import="com.techblock.entities.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.techblock.dao.PostDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>


        <!--SSS-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="css/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <%
            int PostId = Integer.parseInt(request.getParameter("postId"));

            session.setAttribute("updatePostId", PostId);
            PostDao postDao = new PostDao(myConnection.getConnection());
            Post post = postDao.getSinglePostByPostId(PostId);
        %>

        <div class="container mt-4 mb-4">

            <form method="post" action="UpdateServlet" enctype="multipart/form-data">

                <div class="form-group">
                    <label for="inputAddress">Post Title</label>
                    <input name="pTitle" type="text" class="form-control" id="inputAddress" value="<%= post.getpTitle()%>" >
                </div>

                <div class="form-group">
                    <label for="inputAddress">Post Content</label>
                    <textarea name="pContent" rows="20" class="form-control" placeholder="Your Post Content" ><%= post.getpContent()%></textarea>
                </div>
                <div class="form-group">
                    <label for="inputAddress">Code (Optional)</label>
                    <textarea rows="7" name="pCode" class="form-control" placeholder="Your Code Content"><%= post.getpCode()%></textarea>
                </div>

                <div class="form-group">
                    <label for="inputAddress">Keywords</label>
                    <input name="pTags"  value="<%= post.getTags()%>" type="text" class="form-control" id="inputAddress" placeholder="Separate youor tags with Comma">
                </div>

                <button type="submit" class="btn btn-primary">Update</button>
            </form>

        </div> 


        <!--JAVASCRIPTS-->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>        
        <script src="JavaS/myjs.js" type="text/javascript"></script>
        <!--         <script src="https://kit.fontawesome.com/yourcode.js"></script>-->

    </body>
</html>
