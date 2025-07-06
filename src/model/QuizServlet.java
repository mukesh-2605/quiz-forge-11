package model;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class QuizServlet extends HttpServlet {
    
    private List<Question> getSampleQuestions() {
        List<Question> questions = new ArrayList<>();
        questions.add(new Question(1, "What is Java?", 
            new String[] {"A programming language", "A type of coffee", "An island"}, "A programming language"));
        questions.add(new Question(2, "Which company developed Java?", 
            new String[] {"Microsoft", "Sun Microsystems", "Apple"}, "Sun Microsystems"));
        return questions;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Question> questions = getSampleQuestions();
        request.setAttribute("questions", questions);
        RequestDispatcher dispatcher = request.getRequestDispatcher("quiz.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Question> questions = getSampleQuestions();
        int score = 0;

        for (Question q : questions) {
            String userAnswer = request.getParameter("q" + q.getId());
            if (q.getCorrectAnswer().equals(userAnswer)) {
                score++;
            }
        }

        request.setAttribute("score", score);
        request.setAttribute("total", questions.size());
        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request, response);
    }
}
