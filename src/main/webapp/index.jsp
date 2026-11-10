<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach's Java Servlets and JSP - Survey</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/main.css">
</head>
<body>
    <main class="container">
        <header>
            <img src="${pageContext.request.contextPath}/assets/murach_logo.png" alt="Murach Logo" class="logo">
        </header>

        <h1>Survey</h1>
        <p class="description">If you have a moment, we'd appreciate it if you would fill out this survey.</p>

        <form action="emailList" method="post">
            <input type="hidden" name="action" value="add">

            <fieldset class="form-section">
                <legend class="section-title">Your information:</legend>

                <div class="field-row">
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" name="firstName" required>
                </div>

                <div class="field-row">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" required>
                </div>

                <div class="field-row">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>

                <div class="field-row">
                    <label for="dob">Date of Birth</label>
                    <input type="date" id="dob" name="dob" required>
                </div>
            </fieldset>

            <fieldset class="form-section">
                <legend class="section-title">How did you hear about us?</legend>
                <div class="radio-group">
                    <label class="choice-label">
                        <input type="radio" name="source" value="Search engine" checked>
                        <span>Search engine</span>
                    </label>
                    <label class="choice-label">
                        <input type="radio" name="source" value="Word of mouth">
                        <span>Word of mouth</span>
                    </label>
                    <label class="choice-label">
                        <input type="radio" name="source" value="Social Media">
                        <span>Social Media</span>
                    </label>
                    <label class="choice-label">
                        <input type="radio" name="source" value="Other">
                        <span>Other</span>
                    </label>
                </div>
            </fieldset>

            <fieldset class="form-section">
                <legend class="section-title">Would you like to receive announcements about new CDs and special offers?</legend>

                <div class="checkbox-group">
                    <label class="choice-label block">
                        <input type="checkbox" name="offers" value="yes">
                        <span>YES, I'd like that.</span>
                    </label>
                    <label class="choice-label block">
                        <input type="checkbox" name="news" value="yes">
                        <span>YES, please also send me occasional news.</span>
                    </label>
                </div>

                <div class="select-row">
                    <label for="contactMethod">Please contact me by:</label>
                    <select id="contactMethod" name="contactMethod">
                        <option value="Email or postal mail" selected>Email or postal mail</option>
                        <option value="Email only">Email only</option>
                        <option value="Postal mail only">Postal mail only</option>
                    </select>
                </div>
            </fieldset>

            <div class="action-row">
                <button type="submit" id="submit" class="btn-submit">Submit</button>
            </div>
        </form>
    </main>
</body>
</html>
