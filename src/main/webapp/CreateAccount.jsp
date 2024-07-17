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
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    EntityManager em = null;

    try {
        em = EntityManagerProvider.getEntityManager();
        em.getTransaction().begin();

        Accounts account = new Accounts(email, name, password);
        em.persist(account);

        em.getTransaction().commit();

        out.println("<h1>Account created successfully!</h1>");
        out.println("<p>Account ID: " + account.getAcNumber() + "</p>");

    } catch (Exception e) {

        if (em != null && em.getTransaction().isActive()) {
            em.getTransaction().rollback();
        }
        e.printStackTrace();
        out.println("<h1>Error creating account</h1>");

    } finally {

        if (em != null) {
            EntityManagerProvider.closeEntityManager();
        }
    }
%>

</body>
</html>
