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

               <img class = "image" src = "image/profile.png">

               </div><br>

               <div class = "content" style = "text-align: center;">

                   <p style = " font-size : 26px; font-weight: bold;" >Personal Details</p>

                   <p style = " font-size : 26px; font-weight: bold;" >Name : <%= name %> </p>

                   <p style = " font-size : 26px; font-weight: bold;" >Account Number : <%= accNumber %> </p>

                   <p style = " font-size : 26px; font-weight: bold;" >Email : <%= email %> </p>

                   <form action="Logout.jsp" method="post">

                       <button type="submit" class="logout-btn">Log out</button>

                   </form>

               </div>

           </div>
       </body>

</html>
