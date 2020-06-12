<%@page import="com.techblock.entities.User"%>
<%@page import="com.techblock.entities.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.techblock.helpers.myConnection"%>
<%@page import="com.techblock.dao.PostDao"%>

<div class="container mt-4">
    <div class="row row-cols-2">


        <%
            User luser = (User) session.getAttribute("currentUser");
            PostDao postDao = new PostDao(myConnection.getConnection());
            List<Post> list = postDao.getPostsByAuthorId(luser.getId());
            for (Post post : list) {

        %>

        <div class="col mb-3">
            <img src="Uploads-img/<%= post.getpPic()%>" style="max-height: 16rem" class="card-img" >
            <div class="card mb-6 p-4">
                <h5 class="card-title"><%= post.getpTitle()%></h5>
                <!--<p style="max-height: 1.5rem; overflow: hidden"  class="card-text"><%= post.getpContent()%></p>-->
                <p class="card-text">Posted on <%= post.getpDate()%></p>
                <div>
                    <a href="Update.jsp?postId=<%= post.getpId()%>"  class="btn btn-success ">Update</a>
                    <a href="DeleteServlet?postId=<%= post.getpId()%>"  class="btn btn-danger">Delete</a>
                </div>
            </div>
                
        </div>
        <br>
        <%        }
        %>
    </div>
</div>


