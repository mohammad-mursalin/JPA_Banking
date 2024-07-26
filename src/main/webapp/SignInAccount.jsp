<%@ page import="com.mursalin.Accounts" %>
<%@ page import="javax.persistence.EntityManager" %>
<%@ page import=" javax.persistence.Persistence" %>
<%@ page import="javax.persistence.EntityManagerFactory" %>
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

    EntityManagerFactory emf = null;
    EntityManager em = null;
    Accounts account = null;

    try {
        emf = Persistence.createEntityManagerFactory("MursalinPersistenceUnit");
        em = emf.createEntityManager();
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

        session.setAttribute("id",accountNumber);
        session.setAttribute("name",account.getName());
        session.setAttribute("email",account.getEmail());
        session.setAttribute("password",password);
        response.sendRedirect("HomePage.jsp");

    } catch (Exception e) {

        e.printStackTrace();
        out.println("<h1>Error logging in to your account</h1>");
    } finally {
        if (em != null) {
            em.close();
            emf.close();
        }
    }
%>

</body>
</html>
