<%@page import="com.techblock.entities.User"%>
<%@page import="com.techblock.helpers.myConnection"%>
<%@page import="java.util.List"%>
<%@page import="com.techblock.dao.PostDao"%>
<%@page import="com.techblock.entities.Category"%>


<nav class
     ="navbar navbar-expand-lg navbar-dark primary-background sticky-top">
    <a class="navbar-brand" href="index.jsp"> <span class="fa fa-bookmark"></span>TechBlock</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <!--            <li class="nav-item active">
                            <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>-->
            <!--            <li class="nav-item">
                            <a class="nav-link active" href="#">Learn Code</a>
                        </li>-->
            <li class="nav-item dropdown " >
                <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Topics   
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

                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link  active" href="ContactUs.jsp">Contact us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active " href="AboutUs.jsp">About us</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link active" id="toggle-login" href="login-page.jsp">Login</a>
            </li>

        </ul>
<!--        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>-->
    </div>
</nav>
