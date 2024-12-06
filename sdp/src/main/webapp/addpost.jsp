<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Post</title>
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
            width: 60%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .form-label {
            font-size: 16px;
            color: #555;
        }

        input[type="text"], input[type="file"], textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        textarea {
            resize: vertical;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }

        .debug-info {
            font-size: 14px;
            color: #888;
            text-align: center;
        }

        .form-section {
            margin-bottom: 30px;
        }

        .form-section:last-child {
            margin-bottom: 0;
        }
    </style>
</head>
<body>
    <h1>Add a New Post</h1>

    <!-- Debugging: Display the username -->
    <p class="debug-info">Logged in as: ${username}</p>

    <!-- Form for creating a post -->
    <div class="container">
        <form action="${pageContext.request.contextPath}/savePost" method="post" enctype="multipart/form-data">

            <!-- Hidden input to pass the username -->
            <input type="hidden" name="username" value="${username}" />

            <!-- Input for post title -->
            <div class="form-section">
                <label for="title" class="form-label">Title:</label>
                <input type="text" id="title" name="title" required>
            </div>

            <!-- Textarea for post description -->
            <div class="form-section">
                <label for="description" class="form-label">Description:</label>
                <textarea id="description" name="description" rows="4" cols="50" required></textarea>
            </div>

            <!-- Input for hashtags -->
            <div class="form-section">
                <label for="hashtags" class="form-label">Hashtags (comma-separated):</label>
                <input type="text" id="hashtags" name="hashtags">
            </div>

            <!-- Input for image file -->
            <div class="form-section">
                <label for="image" class="form-label">Upload Image:</label>
                <input type="file" id="image" name="image" accept="image/*">
            </div>

            <!-- Submit button -->
            <button type="submit">Add Post</button>
        </form>
    </div>
</body>
</html>
