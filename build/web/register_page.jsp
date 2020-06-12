

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
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

        <%@include file="normal_navbar.jsp" %>

        <main style="margin-bottom: 4rem">
            <div class="container" style="margin-top: 2rem">
                <div class="col-md-6 offset-md-3 ">
                    <div class="card">
                        <div class="card-header">
                            <h3>Sign Up<h3>
                                    </div>
                                    <div class="card-body">
                                        <form method="post" action="RegisterServlet">

                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Enter your name</label>
                                                <input name="name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp">
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Enter a username</label>
                                                <input name="username" type="text" class="form-control" id="user_username" aria-describedby="emailHelp">
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Email address</label>
                                                <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                                <small  id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Password</label>
                                                <input name="userpassword" type="password" class="form-control" id="exampleInputPassword1">
                                            </div>

                                            <div class="form-group">
                                                <label for="exampleInputPassword1">Introduce yourself</label>

                                                <textarea cols="65" rows="4"  name="about" class="form-control" placeholder="Enter something about yourself"></textarea>
                                            </div>

<!--                                            <div class="form-group form-check">
                                                <input name="check" type="checkbox" class="form-check-input" id="checkBox">
                                                <label  class="form-check-label" for="exampleCheck1">Agree terms and Conditions</label>
                                            </div>-->

                                            <button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <a href="login-page.jsp"><i>Already have a Account?<i></a>

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
                                                    <script>
                                                        
                                                        $(document).ready(function(){
                                                            let res= false;
                                                           
                                                            
                                                        });
                                                        
                                                    </script>
                                                    </body>
                                                    </html>
