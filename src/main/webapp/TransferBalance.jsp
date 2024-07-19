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
    long accountNumber = Long.parseLong(request.getParameter("accountNumber"));
    String password = request.getParameter("password");
    double amount = Double.parseDouble(request.getParameter("amount"));

    EntityManagerFactory emf = null;
    EntityManager em = null;

    Balance_Table balance_table = null;

    try {
        emf = Persistence.createEntityManagerFactory("MursalinPersistenceUnit");
        em = emf.createEntityManager();
        em.getTransaction().begin();

        balance_table = em.find(Balance_Table.class, accountNumber);

        if (account != null && accountNumber == balance_table.getAccount_num() && password.equals(balance_table.getPassword())) {

            if(balance_table.getBalance() > amount) {

                out.println("<h1>Amount " +amount+ " is transferd from your account</h1>");

                balance_table.setBalance(balance_table.getBalance() - amount);

                out.println("<h1>Sir your current balance is " +balance_table.getBalance() "</h1>");
                out.println("<p>Thanks for using our service sir...</p>");

            } else {

                out.println("<h1>Insufficient balance !!!</h1>");
            }

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
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%@include file ="All_css_and_js.jsp"%>

    <title>Form page : Home page</title>

</head>
<body>
<div class = "container">

        <%@ include file = "Navbar.jsp" %><br>

    </div>
</body>
</html>
