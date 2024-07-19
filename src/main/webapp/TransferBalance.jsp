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
    long senderAccNum = Long.parseLong(request.getParameter("senderAccountNumber"));
    String password = request.getParameter("password");
    double amount = Double.parseDouble(request.getParameter("amount"));
    long receiverAccNum = Long.parseLong(request.getParameter("receiverAccountNumber"));

    EntityManagerFactory emf = null;
    EntityManager em = null;

    Balance_Table sender_balance_table = null;
    Balance_Table receiver_balance_table = null;

    try {
        emf = Persistence.createEntityManagerFactory("MursalinPersistenceUnit");
        em = emf.createEntityManager();
        em.getTransaction().begin();

        sender_balance_table = em.find(Balance_Table.class, senderAccNum);
        receiver_balance_table = em.find(Balance_Table.class, receiverAccNum);

        if (sender_balance_table != null && senderAccNum == sender_balance_table.getAccount_num() && password.equals(sender_balance_table.getPassword())) {

            if(receiver_balance_table != null && receiverAccNum == receiver_balance_table.getAccount_num()) {

                if(sender_balance_table.getBalance() > amount) {

                    out.println("<h1>Amount " +amount+ " is transferd from your account</h1>");

                    sender_balance_table.setBalance(sender_balance_table.getBalance() - amount);
                    receiver_balance_table.setBalance(receiver_balance_table.getBalance() + amount);

                    out.println("<h1>Sir your current balance is " +balance_table.getBalance() "</h1>");
                    out.println("<p>Thanks for using our service sir...</p>");

                    em.getTransaction().commit();

                } else {

                    out.println("<h1>Insufficient balance !!!</h1>");
                }

            } else {

                out.println("<p>Invalid receiver account number.</p>");
            }

        } else {

            out.println("<p>Invalid account number or password.</p>");
        }


    } catch (Exception e) {

        if (em != null && em.getTransaction().isActive()) {
            em.getTransaction().rollback();
        }
        e.printStackTrace();
        out.println("<h1>Error in transfering balance</h1>");

    } finally {
        if (em != null) {
            em.close();
            emf.close();
        }
    }
%>

</body>
</html>
