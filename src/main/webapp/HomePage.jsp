<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%@include file ="All_css_and_js.jsp"%>

    <title>Form page : Home page</title>

</head><%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

                   <div class = "account-activity">

                       <ul class="navbar-nav ">

                           <li class="nav-item active">

                               <a class="nav-link" href="HomePage.jsp">Home <span class="sr-only">(current)</span></a>

                           </li>

                           <li class="nav-item active">

                               <a class="nav-link " href="ShowBalance.jsp">Show balance</a>

                           </li>

                           <li class="nav-item active">

                               <a class="nav-link" href="DepositeMoney.jsp">Deposite Money</a>

                           </li>

                           <li class="nav-item active">

                               <a class="nav-link " href="TransferBalance.jsp">Transfer Balance</a>

                           </li>

                       </ul>

                   </div>

               </div>

           </div>
       </body>
       </html>
<body>
<div class = "container">

        <%@ include file = "Navbar.jsp" %><br>

    </div>
</body>
</html>
