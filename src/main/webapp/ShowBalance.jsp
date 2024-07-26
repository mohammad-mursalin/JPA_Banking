<%@ page import="com.mursalin.Accounts" %>
<%@ page import="com.mursalin.Balance_Table" %>
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
    EntityManagerFactory emf = null;
    EntityManager em = null;
    Balance_Table balance_table = null;

    try {

        long accountNumber = (long) session.getAttribute("id");
        String password = (String) session.getAttribute("password");

        emf = Persistence.createEntityManagerFactory("MursalinPersistenceUnit");
        em = emf.createEntityManager();
        em.getTransaction().begin();

        balance_table = em.find(Balance_Table.class, accountNumber);

        if (balance_table != null && accountNumber == balance_table.getAccount_num() && password.equals(balance_table.getPassword())) {
            out.println("<h1>Sir your current balance is " +balance_table.getBalance()+ "</h1>");
            out.println("<p>Thanks for using our service sir...</p>");
            session.setAttribute("balance", balance_table.getBalance());
            response.sendRedirect("ShowBalancePage.jsp");
        } else {
            out.println("<h1>Error logging in to your account</h1>");
            out.println("<p>Invalid account number or password.</p>");
        }

        em.getTransaction().commit();
    } catch (Exception e) {

        e.printStackTrace();
        out.println("<h1>Error in showing balance</h1>");
    } finally {
        if (em != null) {
            em.close();
            emf.close();
        }
    }
%>

</body>
</html>
