<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="/includes/header.jsp" %>
    <main class="container">
        <header>
            <img src="${pageContext.request.contextPath}/assets/thank_you.png" alt="Thank you image" class="logo">
        </header>

        <h1>Thanks for taking our survey!</h1>
        <p class="description">Here is the information that you entered:</p>

        <section class="thanks-form-section">
            <section class="field-row">
                <label>First Name:</label>
                <span>${survey.user.firstName}</span>
            </section>

            <section class="field-row">
                <label>Last Name:</label>
                <span>${survey.user.lastName}</span>
            </section>

            <section class="field-row">
                <label>Email:</label>
                <span>${survey.user.email}</span>
            </section>

            <section class="field-row">
                <label>Date of Birth:</label>
                <span>${survey.user.dob}</span>
            </section>

            <section class="field-row">
                <label>Heard From:</label>
                <span>${survey.source}</span>
            </section>

            <section class="field-row">
                <label>Wants Updates:</label>
                <span>${survey.offers != null && !survey.offers.isEmpty() ? 'Yes' : 'No'}</span>
            </section>

            <section class="field-row">
                <label>Wants News:</label>
                <span>${survey.news != null && !survey.news.isEmpty() ? 'Yes' : 'No'}</span>
            </section>

            <c:if test="${not empty survey.offers or not empty survey.news}">
                <section class="field-row">
                    <label>Contact Via:</label>
                    <span>${survey.contactMethod}</span>
                </section>
            </c:if>
        </section>

        <p class="final-text">To enter another response, click the button below:</p>
        <form action="${pageContext.request.contextPath}/emailList" method="get">
            <input type="hidden" name="action" value="join">
            <section class="action-row">
                <button type="submit" id="submit" class="btn-submit">Return</button>
            </section>
        </form>
    </main>
<%@ include file="/includes/footer.jsp" %>
