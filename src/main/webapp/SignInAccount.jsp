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
    long accountNumber = Long.parseLong(request.getParameter("accountNumber"));
    String password = request.getParameter("password");

    EntityManager em = null;
    Accounts account = null;

    try {
        em = EntityManagerProvider.getEntityManager();
        em.getTransaction().begin();

        account = em.find(Accounts.class, accountNumber);

        if (account != null && password.equals(account.getPassword())) {
            out.println("<h1>Successfully logged in!</h1>");
            out.println("<p>Welcome back " + account.getName() + "</p>");
        } else {
            out.println("<h1>Error logging in to your account</h1>");
            out.println("<p>Invalid account number or password.</p>");
        }

        em.getTransaction().commit();
    } catch (Exception e) {
        if (em != null && em.getTransaction().isActive()) {
            em.getTransaction().rollback();
        }
        e.printStackTrace();
        out.println("<h1>Error logging in to your account</h1>");
    } finally {
        if (em != null) {
            em.close();
        }
    }
%>

</body>
</html>
