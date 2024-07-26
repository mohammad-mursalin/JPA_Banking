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
                double balance = (double) session.getAttribute("balance");

            %>

           <div class = "container">

               <%@ include file = "Navbar.jsp" %><br>

               <div class = "img">

               <img class = "image" src = "image/needy.png">

               </div><br>

               <div class = "content" style = "text-align: center;">

                   <p style = " font-size : 26px; font-weight: bold;" >Balance Information</p>

                   <p style = " font-size : 26px; font-weight: bold;" >Sir your current balance is  : <%= balance %> </p>

                    <p style = " font-size : 26px; font-weight: bold;" >Thanks for using our service sir... </p>

                   <form action="Logout.jsp" method="post">

                       <button type="submit" class="logout-btn">Log out</button>

                   </form>

               </div>

           </div>
       </body>

</html>
