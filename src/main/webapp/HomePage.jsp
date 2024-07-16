<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page : Banking App</title>

</head>
<body>

    <div class = "container">

        <%@ include file = "Navbar.jsp" %><br>

        <div class = "img">

        <img class = "image" src = "image/bank-online.png">

        </div><br>

        <div class = "content" style = "text-align: center;">

            <p style = " font-size : 26px; font-weight: bold;" >Welcome to our Bank Management System</p>



            <div class = "account-section">

                <p style = " font-size : 26px; font-weight: bold;" >If you've come here for the first time, then you can</p>

                <button class = "bttn" onclick="location.href = 'SignInPage.jsp'">create new account</a></button>

                <p style = " font-size : 26px; font-weight: bold;" >or you can</p>

                <button class = "bttn" onclick="location.href = 'SignInPage.jsp'">sign in</button>

            </div>

        </div>

    </div>
</body>
</html>