<%-- 
    Document   : ContactUs
    Created on : 2 Jun, 2020, 3:08:08 PM
    Author     : princ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact us</title>


        <!--SSS-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="css/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
    </head>
    <body>
        <%@include file="normal_navbar.jsp" %>
        
        <div class="container mt-4 text-center">
            <div class="card mb-3">
                <img src="Uploads-img/Contact.jpg" style="height: 30rem" class="card-img-top">
                <div class="card-body">
                    <h5 class="card-title display-4">Contact us</h5>
                    <p style="font-size: 1.4rem" class="card-text">We love to hear feedback from you! If you have any query, feedback or complaint, kindly contact us through our official mail <a href="mailto:contact@TechBlock.com">contact@TechBlock.com</a> for any sort of oommunication.</p>
                </div>
            </div>
        </div>
        
        <%@include file="Footer.jsp" %>
        
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>        
        <script src="JavaS/myjs.js" type="text/javascript"></script>
    </body>
</html>
