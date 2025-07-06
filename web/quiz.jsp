<%@ page language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="your.package.Question" %> <!-- replace with your actual Question class package -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Quiz | QuizForge</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex flex-col items-center justify-center">
  <div class="bg-white p-6 rounded-2xl shadow-md w-full max-w-2xl">
    <h1 class="text-xl font-bold text-center mb-4 text-indigo-600">Quiz: <%= request.getAttribute("topic") %></h1>
    <form action="SubmitQuizServlet" method="post" class="space-y-4">
      <input type="hidden" name="topic" value="<%= request.getAttribute("topic") %>" />

      <%
        List<Question> questions = (List<Question>) request.getAttribute("questions");
        int qno = 1;
        for (Question q : questions) {
      %>
        <div class="border rounded-lg p-3">
          <p class="font-medium mb-2"><%= qno++ %>. <%= q.getQuestionText() %></p>
          <div class="space-y-1">
            <label class="block"><input type="radio" name="q<%= q.getId() %>" value="A" required> <%= q.getOptionA() %></label>
            <label class="block"><input type="radio" name="q<%= q.getId() %>" value="B"> <%= q.getOptionB() %></label>
            <label class="block"><input type="radio" name="q<%= q.getId() %>" value="C"> <%= q.getOptionC() %></label>
            <label class="block"><input type="radio" name="q<%= q.getId() %>" value="D"> <%= q.getOptionD() %></label>
          </div>
        </div>
      <% } %>

      <button type="submit" class="w-full bg-indigo-500 text-white py-2 rounded-lg hover:bg-indigo-600">Submit Quiz</button>
    </form>
  </div>
</body>
</html>
