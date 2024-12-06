<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fa;
            margin: 0;
            padding: 0;
        }

        .container {
            margin-top: 50px;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #4CAF50;
        }

        h4 {
            color: #333;
            margin-top: 20px;
        }

        table {
            margin-top: 30px;
            width: 100%;
        }

        table th {
            background-color: #4CAF50;
            color: white;
            text-align: center;
        }

        table td {
            text-align: center;
        }

        .btn {
            font-size: 12px;
            padding: 5px 10px;
        }

        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
        }

        .btn-danger {
            background-color: #dc3545;
            border-color: #dc3545;
        }

        .text-muted {
            text-align: center;
            color: #888;
        }

        .thead-dark {
            background-color: #343a40;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Admin Dashboard</h2>
        <h4>Pending Blog Posts</h4>
        
        <c:if test="${not empty pendingPosts}">
            <table class="table table-bordered table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Blogger</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="post" items="${pendingPosts}">
                        <tr>
                            <td>${post.id}</td>
                            <td>${post.title}</td>
                            <td>${post.description}</td>
                            <td>${post.blogger.name}</td>
                            <td>
                                <form method="post" action="/admin/approvePost" style="display: inline;">
                                    <input type="hidden" name="postId" value="${post.id}" />
                                    <button class="btn btn-success btn-sm" type="submit">Approve</button>
                                </form>
                                <form method="post" action="/admin/rejectPost" style="display: inline;">
                                    <input type="hidden" name="postId" value="${post.id}" />
                                    <button class="btn btn-danger btn-sm" type="submit">Reject</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        
        <c:if test="${empty pendingPosts}">
            <p class="text-muted">No pending posts at the moment.</p>
        </c:if>
    </div>
</body>
</html>
