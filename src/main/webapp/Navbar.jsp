<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%@include file ="All_css_and_js.jsp"%>

    <title>Form page : Home page</title>

</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-light nav-color ">

        <a class="navbar-brand" href="HomePage.jsp">JPA-Bank</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse" id="navbarNav">

            <ul class="navbar-nav ">

                <li class="nav-item active">

                    <a class="nav-link" href="HomePage.jsp">Home <span class="sr-only">(current)</span></a>

                </li>

                <li class="nav-item active">

                    <a class="nav-link " href="ShowBalance.jsp">Show balance</a>

                </li>

                <li class="nav-item active">

                    <a class="nav-link" href="DepositeMoneyForm.jsp">Deposite Money</a>

                </li>

                <li class="nav-item active">

                    <a class="nav-link " href="TransferBalanceForm.jsp">Transfer Balance</a>

                </li>

            </ul>

                <form class="form-inline ml-auto">

                    <input class="form-control mr-sm-2 search-bar" type="search" placeholder="Search" aria-label="Search">

                    <button class="btn search-button my-2 my-sm-0" type="submit">Search</button>

                </form>
        </div>
    </nav>

</body>
</html>