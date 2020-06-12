<%-- 
    Document   : login-page
    Created on : 28 May, 2020, 6:21:46 PM
    Author     : princ
--%>

<%@page import="com.techblock.helpers.AlertContent"%>
<%@page import="com.techblock.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="css/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 91%, 72% 91%, 35% 100%, 0 93%, 0 0);
            }

        </style>
    </head>
    <body   >

        <%@include file="normal_navbar.jsp" %>


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

        <main class>
            <div class="container" style="margin-top: 6rem">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card">
                            <div class="card-header">
                                <h4>Login Here</h4> 

                                <%
                                    Message message = (Message) session.getAttribute("message");
                                    if (message != null) {
                                %>
                                <div class="alert <%= message.getCssClass()%> " role="alert">
                                    <%= message.getMessage()%>
                                </div>
                                <%
                                        session.removeAttribute("message");
                                    }
                                %>

                            </div>
                            <div class="card-body">
                                <form method="post" action="LoginServlet">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input name="password"  required type="password" class="form-control" id="exampleInputPassword1">
                                    </div>

                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>

                            </div>

                            <div class="card-footer">
                                <a href="register_page.jsp"><i>Don't have an Account?<i></a>
                                            </div>
                                            </div>

                                            </div>

                                            </div>


                                            </div>


                                            </main>

                                            <!--JAVASCRIPTS-->
                                            <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
                                            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
                                            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>        
                                            <script src="JavaS/myjs.js" type="text/javascript"></script>

                                            </body>
                                            </html>
