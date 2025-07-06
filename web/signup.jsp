<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sign Up | QuizForge</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
  <div class="bg-white p-8 rounded-2xl shadow-md w-full max-w-sm">
    <h1 class="text-2xl font-bold mb-6 text-center text-green-600">QuizForge Sign Up</h1>
    <form action="SignupServlet" method="post" class="space-y-4">
      <div>
        <label class="block mb-1 text-gray-700">Username</label>
        <input type="text" name="username" required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-green-400" />
      </div>
      <div>
        <label class="block mb-1 text-gray-700">Password</label>
        <input type="password" name="password" required class="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-green-400" />
      </div>
      <button type="submit" class="w-full bg-green-500 text-white py-2 rounded-lg hover:bg-green-600 transition">Sign Up</button>
    </form>
    <p class="text-center text-sm text-gray-600 mt-4">
      Already have an account?
      <a href="login.jsp" class="text-green-500 hover:underline">Login</a>
    </p>
  </div>
</body>
</html>
