<%@ page language="java" %>
<%
  // End the session
  session.invalidate();

  // Redirect to login page
  response.sendRedirect("login.jsp");
%>
