


<!--PROFILE EXTRA DATA--> 


<div class="container-fluid">
            <div class="ml-2">
                <div class="row mt-4">

                    START OF LEFT
                    <div class="col-md-2">
                        <div class="list-group sticky-top">
                            <button type="button" class="list-group-item list-group-item-action active">
                                Categories
                            </button>
                            <%
//                                PostDao postDao = new PostDao(myConnection.getConnection());
//                                List<Category> list = postDao.getAllCategories();
//                                for (Category category : list) {
                            %>
                            <button type = "button"  class="list-group-item list-group-item-action"> <%=// category.getName()%></button >
                            <%
                           //     }
                            %>
                        </div>
                    </div>
                    END OF LEFT PART


                    START OF RIGHT PART
                    <div class="col-md-8">
                        <div class="col-md-4">
                            <%
//                                PostDao postDao1 = new PostDao(myConnection.getConnection());
//                                List<Post> postLists = postDao1.getAllPost();
//
//                                for (Post post : postLists) {
                            %>
                            style="width: 18rem">
                            <div class="card mb-2" style="width: 18rem">
                                <img class="card-img-top" src="Uploads-img/<%= //post.getpPic()%>" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title"><%=// post.getpTitle()%></h5>
                                    <p class="card-text"><%=// post.getpContent()%></p>
                                    <a href="#" class="btn btn-primary">Read More...</a>
                                </div>
                            </div>  
                            <%
                           //     }
                            %>
                        </div>
                    </div>
                    END OF RIGHT PART
                </div>
            </div>

        </div>

