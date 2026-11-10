<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach's Java Servlets and JSP - Survey Confirmation</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>
    <main class="container">
        <header>
            <img src="${pageContext.request.contextPath}/assets/thank_you.png" alt="Thank you image" class="logo">
        </header>

        <h1>Thanks for taking our survey!</h1>
        <p class="description">Here is the information that you entered:</p>

        <section class="thanks-form-section">
            <div class="field-row">
                <label>First Name:</label>
                <span>${survey.user.firstName}</span>
            </div>

            <div class="field-row">
                <label>Last Name:</label>
                <span>${survey.user.lastName}</span>
            </div>

            <div class="field-row">
                <label>Email:</label>
                <span>${survey.user.email}</span>
            </div>

            <div class="field-row">
                <label>Date of Birth:</label>
                <span>${survey.user.dob}</span>
            </div>

            <div class="field-row">
                <label>Heard From:</label>
                <span>${survey.source}</span>
            </div>

            <div class="field-row">
                <label>Wants Updates:</label>
                <span>${survey.offers != null && !survey.offers.isEmpty() ? 'Yes' : 'No'}</span>
            </div>

            <div class="field-row">
                <label>Wants News:</label>
                <span>${survey.news != null && !survey.news.isEmpty() ? 'Yes' : 'No'}</span>
            </div>

            <div class="field-row">
                <label>Contact Via:</label>
                <span>${survey.contactMethod}</span>
            </div>
        </section>

        <p class="final-text">To enter another response, click the button below:</p>
        <form action="${pageContext.request.contextPath}/emailList" method="get">
            <input type="hidden" name="action" value="join">
            <div class="action-row">
                <button type="submit" id="submit" class="btn-submit">Return</button>
            </div>
        </form>
    </main>
</body>
</html>
