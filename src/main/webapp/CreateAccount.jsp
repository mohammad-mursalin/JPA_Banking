%@ page import="com.mursalin.Accounts" %>
%@ page import="com.mursalin.Balance_Table" %>
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
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    double balance = 0;

    EntityManagerFactory emf = null;
    EntityManager em = null;

    try {
        emf = Persistence.createEntityManagerFactory("MursalinPersistenceUnit");
        em = emf.createEntityManager();
        em.getTransaction().begin();

        Accounts account = new Accounts(email, name, password);


        em.persist(account);

        Balance_Table balance_table = new Balance_Table(account.getAcNumber(), password, balance);

        em.persist(balance_table);

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
            em.close();
            emf.close();
        }
    }
%>

</body>
</html>
