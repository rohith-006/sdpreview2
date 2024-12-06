<%@ page import="java.util.List" %>
<%@ page import="com.example.jfsd.model.BlogPost" %>
<%@ page import="com.example.jfsd.model.Hashtag" %>
<%@ page import="com.example.jfsd.model.Blogger" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Bloggers and Posts</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fa;
            color: #333;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #4CAF50;
            margin-top: 20px;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .blogger-section {
            margin-bottom: 30px;
            border-bottom: 2px solid #e0e0e0;
            padding-bottom: 20px;
        }

        .blogger-section h2 {
            color: #4CAF50;
            font-size: 24px;
            margin-bottom: 15px;
        }

        .post-list {
            list-style-type: none;
            padding: 0;
        }

        .post-list li {
            padding: 10px;
            border-bottom: 1px solid #e0e0e0;
            margin-bottom: 10px;
        }

        .post-list li:last-child {
            border-bottom: none;
        }

        .post-list li strong {
            font-size: 18px;
            color: #333;
        }

        .post-list li img {
            max-width: 100%;
            height: auto;
            border-radius: 4px;
            margin-top: 10px;
        }

        .no-posts {
            color: #888;
            font-style: italic;
        }

        .no-bloggers {
            color: #888;
            font-style: italic;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Bloggers and Their Posts</h1>

    <div class="container">
        <%
        @SuppressWarnings("unchecked")

            // Assuming 'bloggers' is passed as a request attribute
            List<Blogger> bloggers = (List<Blogger>) request.getAttribute("bloggers");
            if (bloggers != null && !bloggers.isEmpty()) {
                for (Blogger blogger : bloggers) {
        %>
            <div class="blogger-section">
                <h2>Blogger: <%= blogger.getUsername() %></h2>
                <%
                    List<BlogPost> posts = blogger.getPosts();
                    if (posts != null && !posts.isEmpty()) {
                %>
                    <ul class="post-list">
                        <%
                            for (BlogPost post : posts) {
                        %>
                            <li>
                                <strong><%= post.getTitle() %></strong><br>
                                <%= post.getDescription() %><br>
                                
                                <%
                                    if (post.getImagePath() != null && !post.getImagePath().isEmpty()) {
                                %>
                                    <img src="<%= post.getImagePath() %>" alt="Post Image" width="200">
                                <%
                                    }
                                %>
                            </li>
                        <%
                            }
                        %>
                    </ul>
                <%
                    } else {
                %>
                    <p class="no-posts">No posts found for this blogger.</p>
                <%
                    }
                %>
            </div>
        <%
                }
            } else {
        %>
            <p class="no-bloggers">No bloggers found.</p>
        <%
            }
        %>
    </div>
</body>
</html>
