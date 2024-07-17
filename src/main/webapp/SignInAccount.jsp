<%@ page import="com.mursalin.Accounts" %>
<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="com.mursalin.EntityManagerProvider" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Create Account</title>
</head>
<body>

<%
    String accountNumber = request.getParameter("accountNum");
    String password = request.getParameter("password");

    EntityManager em = null;
    Accounts account = null;

    try {
        em = EntityManagerProvider.getEntityManager();

         account = em.find(accountNumber);

        if( password.equals(account.getPassword) ){

            out.println("<h1>Successfully logged in!</h1>");
            out.println("<p>Welcome back " + account.getName() + "</p>");

        }

    } catch (Exception e) {

        e.printStackTrace();
        out.println("<h1>Error logging in to your account</h1>");

        response.sendRedirect("SignInForm.jsp");

    } finally {

        if (em != null) {
            EntityManagerProvider.closeEntityManager();
        }
    }
%>

</body>
</html>
