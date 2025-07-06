<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Result | QuizForge</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
  <div class="bg-white p-8 rounded-2xl shadow-md w-full max-w-sm text-center">
    <h1 class="text-2xl font-bold text-green-600 mb-4">Your Score</h1>
    <p class="text-lg mb-6">Topic: <span class="font-semibold"><%= request.getAttribute("topic") %></span></p>
    <p class="text-3xl font-bold mb-6 text-blue-500"><%= request.getAttribute("score") %> / 10</p>
    <a href="home.jsp" class="inline-block bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600 transition">Take Another Quiz</a>
  </div>
</body>
</html>
