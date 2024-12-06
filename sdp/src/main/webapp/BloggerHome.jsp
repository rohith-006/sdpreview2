<%@ page import="java.util.List" %>
<%@ page import="com.example.jfsd.model.BlogPost" %>
<%@ page import="com.example.jfsd.model.Hashtag" %>
<!DOCTYPE html>
<html>
<head>
    <title>Blogger Home</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Welcome, <%= request.getAttribute("username") %>!</h1>
        
        <a href="addPost?username=<%= request.getAttribute("username") %>">Create New Post</a>
        <br/><br/>

        <!-- Pending Posts Section -->
        <section class="pending">
            <h3>All Posts</h3>
            <%
            @SuppressWarnings("unchecked")
                List<BlogPost> pendingPosts = (List<BlogPost>) request.getAttribute("pendingPosts");
                if (pendingPosts != null && !pendingPosts.isEmpty()) {
                    for (BlogPost post : pendingPosts) {
            %>
                        <div class="post">
                            <strong>Title:</strong> <%= post.getTitle() %><br/>
                            <strong>Description:</strong> <%= post.getDescription() %><br/>
                            <strong>Image:</strong> <img src="<%= post.getImagePath() %>" alt="<%= post.getTitle() %>"/><br/>
                        </div>
                        <hr/>
            <%
                    }
                } else {
            %>
                    <p class="no-posts">No pending posts.</p>
            <%
                }
            %>
        </section>

        <!-- Approved Posts Section -->
        <section class="approved">
            <h3>Approved Posts</h3>
            <%
            @SuppressWarnings("unchecked")
                List<BlogPost> approvedPosts = (List<BlogPost>) request.getAttribute("approvedPosts");
                if (approvedPosts != null && !approvedPosts.isEmpty()) {
                    for (BlogPost post : approvedPosts) {
            %>
                        <div class="post">
                            <strong>Title:</strong> <%= post.getTitle() %><br/>
                            <strong>Description:</strong> <%= post.getDescription() %><br/>
                            <strong>Image:</strong> <img src="<%= post.getImagePath() %>" alt="<%= post.getTitle() %>"/><br/>
                        </div>
                        <hr/>
            <%
                    }
                } else {
            %>
                    <p class="no-posts">No approved posts.</p>
            <%
                }
            %>
        </section>

        <!-- Rejected Posts Section -->
        <section class="rejected">
            <h3>Rejected Posts</h3>
            <%
            @SuppressWarnings("unchecked")
                List<BlogPost> rejectedPosts = (List<BlogPost>) request.getAttribute("rejectedPosts");
                if (rejectedPosts != null && !rejectedPosts.isEmpty()) {
                    for (BlogPost post : rejectedPosts) {
            %>
                        <div class="post">
                            <strong>Title:</strong> <%= post.getTitle() %><br/>
                            <strong>Description:</strong> <%= post.getDescription() %><br/>
                            <strong>Image:</strong> <img src="<%= post.getImagePath() %>" alt="<%= post.getTitle() %>"/><br/>
                        </div>
                        <hr/>
            <%
                    }
                } else {
            %>
                    <p class="no-posts">No rejected posts.</p>
            <%
                }
            %>
        </section>
    </div>
</body>
</html>
