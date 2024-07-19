<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page : Banking App</title>

    <%@include file ="All_css_and_js.jsp"%>

</head>
<body>

    <div class = "container">

        <nav class="navbar navbar-expand-lg navbar-light nav-color ">

            <a class="navbar-brand" href="#">JPA-Bank</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">

                <span class="navbar-toggler-icon"></span>

            </button>

            <div class="collapse navbar-collapse" id="navbarNav">

                <ul class="navbar-nav ">

                    <li class="nav-item active">

                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>

                    </li>

                    <li class="nav-item active">

                        <a class="nav-link " href="index.jsp" onclick="alert('Please create account or log in first')">Show balance</a>

                    </li>

                    <li class="nav-item active">

                        <a class="nav-link" href="index.jsp" onclick="alert('Please create account or log in first')">Deposite Money</a>

                    </li>

                    <li class="nav-item active">

                        <a class="nav-link " href="index.jsp" onclick="alert('Please create account or log in first')">Transfer Balance</a>

                    </li>

                </ul>

                    <form class="form-inline ml-auto">

                        <input class="form-control mr-sm-2 search-bar" type="search" placeholder="Search" aria-label="Search">

                        <button class="btn search-button my-2 my-sm-0" type="submit">Search</button>

                    </form>
            </div>

        </nav>

        <div class = "img">

        <img class = "image" src = "image/bank-online.png">

        </div><br>

        <div class = "content" style = "text-align: center;">

            <p style = " font-size : 26px; font-weight: bold;" >Welcome to our Bank Management System</p>

            <div class = "account-section">

                <p style = " font-size : 26px; font-weight: bold;" >If you've come here for the first time, then you can</p>

                <button class = "bttn" onclick="location.href = 'NewAccount.jsp'">create new account</a></button>

                <p style = " font-size : 26px; font-weight: bold;" >or you can</p>

                <button class = "bttn" onclick="location.href = 'SignInForm.jsp'">sign in</button>

            </div>

        </div>

    </div>
</body>
</html>