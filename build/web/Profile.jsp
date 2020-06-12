
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.techblock.entities.Category"%>
<%@page import="com.techblock.dao.PostDao"%>
<%@page import="com.techblock.entities.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.techblock.helpers.myConnection"%>
<%@page import="com.techblock.dao.UserDao"%>
<%@page import="com.techblock.helpers.AlertContent"%>
<%@page import="com.techblock.entities.User"%>
<%@page errorPage="error_page.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Navbar_provider.jsp" %>
<%@include file="HideDetails.jsp" %>    


<%      AlertContent alertContent = (AlertContent) session.getAttribute("alertContent");
    if (alertContent != null) {
%>

<div class="alert <%= alertContent.getCssClass()%>" role="alert">
    <h4 class="alert-heading">Well done!</h4>
    <p>Aww yeah, <%= alertContent.getTitleMessage()%></p>
    <hr>
    <p class="mb-0"><%= alertContent.getDescMessage()%> </p>
</div>

<%
        session.removeAttribute("alertContent");
    }
%>
<%@include file="User_posts.jsp" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>

        <!--SSS-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="css/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body{
                background-color: #f5f5f5;
            }
        </style>

    </head>
    <body>

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

        <!--LOADING POST USING AJAX-->

        <script>
            $(document).ready(function (e) {

                $.ajax({
                    url: "Load_posts.jsp",
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                    }}
                );
            }
            );

        </script>

    </body>

</html>
