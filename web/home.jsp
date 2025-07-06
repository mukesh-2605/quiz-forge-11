<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Home | QuizForge</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col items-center justify-center">
  <div class="bg-white p-8 rounded-2xl shadow-md w-full max-w-md">
    <h1 class="text-2xl font-bold mb-6 text-center text-purple-600">Welcome to QuizForge</h1>
    <p class="text-center mb-4 text-gray-600">Choose a topic to start your quiz</p>
    
    <form action="QuizServlet" method="post" class="space-y-3">
      <select name="topic" required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-purple-400">
        <option value="">Select Topic</option>
        <option value="C Programming">C Programming</option>
        <option value="Data Structures">Data Structures</option>
        <option value="DBMS">DBMS</option>
        <option value="Operating Systems">Operating Systems</option>
        <option value="Computer Networks">Computer Networks</option>
      </select>
      <button type="submit" class="w-full bg-purple-500 text-white py-2 rounded-lg hover:bg-purple-600 transition">Start Quiz</button>
    </form>
  </div>
</body>
</html>
