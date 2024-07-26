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

            <%
                long accNumber = (long) session.getAttribute("id");
                String name = (String) session.getAttribute("name");
                String email = (String) session.getAttribute("email");

            %>

           <div class = "container">

               <%@ include file = "Navbar.jsp" %><br>

               <div class = "img">

               <img class = "image" src = "image/bank-online.png">

               </div><br>

               <div class = "content" style = "text-align: center;">

                   <p style = " font-size : 26px; font-weight: bold;" >Welcome to our Bank Management System </p>

                   <p style = " font-size : 26px; font-weight: bold;" > <%= name %> </p>

                   <div class = "account-activity">

                       <ul class="navbar-nav ">

                           <li class="nav-item active">

                               <a class="nav-link" href="ShowDetails.jsp">Show my details</a>

                           </li>

                           <li class="nav-item active">

                               <a class="nav-link " href="ShowBalanceForm.jsp">Show balance</a>

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
