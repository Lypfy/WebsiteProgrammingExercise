<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/test.css">
</head>
<body>
    <main class="container">
        <h2 class="test-h1">${finalMsg}</h2>

        <a class="btn-return" href="${pageContext.request.contextPath}/">Return</a>
    </main>
</body>
</html>
