package com.example.test.controller;

import java.io.IOException;

import com.example.test.model.Survey;
import com.example.test.dto.SurveyDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("TEST LOG");

        String url = "/index.jsp";
                
        String action = request.getParameter("action");

        getServletContext().log("Nhận request POST, action = " + action);

        if (action == null) {
            action = "join";
        }

        if (action.equals("join")) {
            url = "/index.jsp";
        } else if (action.equals("add")) {
            try {
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                String email = request.getParameter("email");
                String dob = request.getParameter("dob");
                String source = request.getParameter("source");
                String offers = request.getParameter("offers");
                String news = request.getParameter("news");
                String contactMethod = request.getParameter("contactMethod");

                getServletContext().log("Dữ liệu nhận: First Name = " + firstName + "Last Name = " + lastName + "Email = " + email + "Date of Birth = " + dob);

                SurveyDTO surveyDTO = new SurveyDTO(firstName, lastName, email, dob, source, offers, news, contactMethod);
                Survey survey = surveyDTO.toSurvey();

                request.setAttribute("survey", survey);
                url = "/thanks.jsp";
                } catch (Exception e) {
                    getServletContext().log("Lỗi khi xử lý", e);
                }
        }

        getServletContext().log("Forward tới: " + url);
        
        int currentYear = java.time.Year.now().getValue();
        request.setAttribute("currentYear", currentYear);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().log("Phương thức doGet được gọi -> chuyển sang doPost");
       
        String action = request.getParameter("action");
        if ("add".equals(action)) {
            response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "Không thể submit thẳng bằng link, vui lòng điền thông tin vào phiếu khảo sát");
            return;
        }

        int currentYear = java.time.Year.now().getValue();
        request.setAttribute("currentYear", currentYear);
        
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        // doPost(request, response);
    }
}
