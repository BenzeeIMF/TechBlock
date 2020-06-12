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


<%
    User user = (User) session.getAttribute("currentUser");
%>

<nav class="navbar navbar-expand-lg navbar-dark internal-Navbar sticky-top" >
    <a class="navbar-brand" href="index.jsp"> <span class="fa fa-bookmark"></span>TechBlock</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="Profile.jsp">Dashboard <span class="sr-only">(current)</span></a>
            </li>
            <!--            <li class="nav-item active">
                            <a class="nav-link" href="#">Learn Code</a>
                        </li>-->
            <!--            <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Languages
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            
            <%
                PostDao kpostDao = new PostDao(myConnection.getConnection());
                List<Category> klist = kpostDao.getAllCategories();
                for (Category category : klist) {
            %>
            <div class="container">
                <div class="row" >
                    <div class="col-md-11 mb-2">
                        <div  >
                            <a class="dropdown-item" href="Categories_Posts.jsp?id=<%= category.getId()%>"><%= category.getName()%></a>
                        </div></div></div>
            </div>
            <%
                }
            %>
        </div>
    </li>-->

            <li class="nav-item active" >
                <a class="nav-link " href="AddPost.jsp">Add post</a>
            </li>

        </ul>                

        <ul class="navbar-nav mr-right">
            <li class="nav-item active" >
                <a class="nav-link" data-toggle="modal" data-target="#profileModal">Edit Profile</a>
            </li>
            <li class="nav-item active" >
                <a class="nav-link " href="LogoutServlet" >Logout</a>
            </li>
        </ul>

    </div>
</nav>

<div class="modal fade"  tabindex="-1" role="dialog" id="report-modal" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="profileModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Profile</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">

                <div class="container">
                    <img src="images/<%= user.getProfile()%>" style="border-radius: 50%" height="200px" width="200px" >
                    <br>
                    <br>
                    <h3 ><%= user.getName()%></h3>

                    <!--DETAILS STARTS-->

                    <div id="show-profile">    
                        <table class="table">

                            <tbody>
                                <tr>
                                    <th scope="row">Username</th>
                                    <td><%= user.getUsername()%></td>
                                </tr>
                                <tr>
                                    <th scope="row">Email</th>
                                    <td><%= user.getEmail()%></td>
                                </tr>
                                <tr>
                                    <th scope="row">About</th>
                                    <td><%= user.getAbout()%></td>
                                </tr>

                            </tbody>
                        </table>
                    </div>

                    <div id="edit-profile" style="display: none" >         
                        <!--<h2 class="display-4">Edit Profile</h2>-->
                        <div class="container">

                            <form action="EditProfileServlet" method="post" enctype="multipart/form-data">
                                <table class="table">
                                    <tr>
                                        <td> Name</td>
                                        <td> <input type="text" name="user_name" value="<%= user.getName()%>" class="form-control"> </td>
                                    </tr>
                                    <tr>
                                        <td> Username</td>
                                        <td> <input type="text" name="user_username" value="<%= user.getUsername()%>" class="form-control"> </td>
                                    </tr>
                                    <tr>
                                        <td>Email</td>
                                        <td> <input type="email" name="user_email" value="<%= user.getEmail()%>" class="form-control"> </td>
                                    </tr>
                                    <tr>
                                        <td> Password</td>
                                        <td> <input type="text" name="user_password" value="<%= user.getPassword() %>" class="form-control"> </td>
                                    </tr>
                                    <tr>
                                        <td> About</td>
                                        <td> <textarea rows="3" name="user_about"  class="form-control"><%= user.getAbout()%></textarea> </td>
                                    </tr>
                                    <!--                                    <tr>
                                                                            <td> Image</td>
                                                                            <td> <input type="file" class="form-control" name="user_image"> </td>
                                                                        </tr>-->
                                </table>

                                <button class="btn btn-outline-primary">Save Details</button>
                            </form>


                        </div>

                    </div>
                </div>
            </div>
            <!--DETAILS ENDS-->


            <div class="modal-footer">    
                <!--//data-dismiss="modal"-->
                <button type="button"  data-dismiss="modal" class="btn btn-secondary">Close</button>
                <button type="button" id="edit-profile-button" class="btn btn-primary">Edit</button>
            </div>
        </div>
    </div>
</div>
<!--MODAL ENDS-->
