package com.example.test.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/error")
public class ErrorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
            handleError(request, response);
        }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
            handleError(request, response);
        }

    private void handleError(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
            Integer statusCode = (Integer) request.getAttribute("jakarta.servlet.error.status_code");
            String message = (String) request.getAttribute("jakarta.servlet.error.message");

            if(message == null || message.trim().isEmpty()) {
                message = "Lỗi không xác định";
            }

            // request.setAttribute("statusCode", statusCode);
            // request.setAttribute("message", message);

            String finalMsg = statusCode != null ? statusCode + " - " + message : message;
            request.setAttribute("finalMsg", finalMsg);

            getServletContext()
                    .getRequestDispatcher("/error.jsp")
                    .forward(request, response);
        }
}
