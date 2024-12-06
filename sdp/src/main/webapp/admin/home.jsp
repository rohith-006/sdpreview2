<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.jfsd.model.BlogPost" %>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            background: white;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        h1 {
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }
        .action-buttons form {
            display: inline;
        }
        .action-buttons button {
            margin-right: 10px;
            padding: 5px 10px;
            cursor: pointer;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 3px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Welcome message -->
        <h1>Welcome, Admin!</h1>

        <!-- Pending Posts Section -->
        <h2>Pending Posts</h2>
        <%
        @SuppressWarnings("unchecked")
        List<BlogPost> pendingPosts = (List<BlogPost>) request.getAttribute("pendingPosts");
        if (pendingPosts != null && !pendingPosts.isEmpty()) {
        %>
            <table>
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                <%
                for (BlogPost post : pendingPosts) {
                %>
                    <tr>
                        <td><%= post.getTitle() %></td>
                        <td><%= post.getDescription() %></td>
                        <td class="action-buttons">
                            <!-- Approve Form -->
                            <form action="/admin/approve/<%= post.getId() %>" method="post">
                                <button type="submit">Approve</button>
                            </form>
                            <!-- Reject Form -->
                            <form action="/admin/reject/<%= post.getId() %>" method="post">
                                <button type="submit">Reject</button>
                            </form>
                        </td>
                    </tr>
                <%
                }
                %>
                </tbody>
            </table>
        <%
        } else {
        %>
            <p>No pending posts.</p>
        <%
        }
        %>

        <!-- Approved Posts Section -->
        <h2>Approved Posts</h2>
        <%
        @SuppressWarnings("unchecked")
        List<BlogPost> approvedPosts = (List<BlogPost>) request.getAttribute("approvedPosts");
        if (approvedPosts != null && !approvedPosts.isEmpty()) {
        %>
            <table>
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                <%
                for (BlogPost post : approvedPosts) {
                %>
                    <tr>
                        <td><%= post.getTitle() %></td>
                        <td><%= post.getDescription() %></td>
                    </tr>
                <%
                }
                %>
                </tbody>
            </table>
        <%
        } else {
        %>
            <p>No approved posts.</p>
        <%
        }
        %>

        <!-- Rejected Posts Section -->
        <h2>Rejected Posts</h2>
        <%
        @SuppressWarnings("unchecked")
        List<BlogPost> rejectedPosts = (List<BlogPost>) request.getAttribute("rejectedPosts");
        if (rejectedPosts != null && !rejectedPosts.isEmpty()) {
        %>
            <table>
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                <%
                for (BlogPost post : rejectedPosts) {
                %>
                    <tr>
                        <td><%= post.getTitle() %></td>
                        <td><%= post.getDescription() %></td>
                    </tr>
                <%
                }
                %>
                </tbody>
            </table>
        <%
        } else {
        %>
            <p>No rejected posts.</p>
        <%
        }
        %>
    </div>
</body>
</html>
