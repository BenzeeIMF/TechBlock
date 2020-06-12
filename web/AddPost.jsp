<%-- 
    Document   : AddPost
    Created on : 31 May, 2020, 1:01:23 PM
    Author     : princ
--%>

<%@page import="com.techblock.entities.User"%>
<%@page import="com.techblock.entities.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.techblock.helpers.myConnection"%>
<%@page import="com.techblock.dao.PostDao"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Post</title>

        <!--SSS-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="css/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 72% 91%, 35% 100%, 0 93%, 0 0);
            }
            body{
                background-color: #f5f5f5;
            }

        </style>
    </head>
</head>
<body>

    <%@include file="Navbar_provider.jsp" %>
    <%@include file="HideDetails.jsp" %>    

    <div class="container mt-4 mb-4">

        <form method="post" action="AddPostServlet" enctype="multipart/form-data">

            <div class="form-group">
                <label for="inputAddress">Post Title</label>
                <input name="pTitle" type="text" class="form-control" id="inputAddress" placeholder="Enter your post title">
            </div>
            <div class="form-group">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text"  for="inputGroupSelect01">Category</label>
                    </div>
                    <select class="custom-select"  name="cid" id="inputGroupSelect01">
                        <option selected disabled>Choose...</option>

                        <%
                            PostDao postDao = new PostDao(myConnection.getConnection());
                            ArrayList<Category> list = postDao.getAllCategories();

                            for (Category x : list) {
                        %>
                        <option value= <%= x.getId()%>> <%= x.getName()%></option>
                        <%
                            }
                        %>

                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="inputAddress">Post Content</label>
                <textarea name="pContent" rows="20" class="form-control" placeholder="Your Post Content"></textarea>
            </div>
            <div class="form-group">
                <label for="inputAddress2">Choose Thumbnail</label>
                <input type="file" name="pPic" class="form-control" id="inputAddress2" >
            </div>
            <div class="form-group">
                <label for="inputAddress">Code (Optional)</label>
                <textarea rows="7" name="pCode" class="form-control" placeholder="Your Code Content"></textarea>
            </div>

            <div class="form-group">
                <label for="inputAddress">Keywords</label>
                <input name="pTags"  type="text" class="form-control" id="inputAddress" placeholder="Separate your tags with Comma">
            </div>

            <button type="submit" class="btn btn-primary">Post</button>
        </form>

    </div>  

    
    <!--JAVASCRIPTS-->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>        
<script src="JavaS/myjs.js" type="text/javascript"></script>
<!--         <script src="https://kit.fontawesome.com/yourcode.js"></script>-->

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
    
</body>
</html>
