<%@ page import="com.mursalin.Accounts" %>
<%@ page import="javax.persistence.EntityManager" %>
<%@ page import="javax.persistence.Persistence" %>
<%@ page import="javax.persistence.EntityManagerFactory" %>
<%@ page import="javax.persistence.Query" %>
<%@ page import="javax.persistence.NoResultException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Check Account</title>
</head>
<body>

<%
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    EntityManagerFactory emf = null;
    EntityManager em = null;

    try {
        emf = Persistence.createEntityManagerFactory("MursalinPersistenceUnit");
        em = emf.createEntityManager();

        Query query = em.createQuery("from Accounts where email = :email");
        query.setParameter("email", email);

        Accounts account = (Accounts) query.getSingleResult();

        if (account != null && email.equals(account.getEmail())) {
            out.println("<h1>Already have an account with this email!</h1>");
            out.println("<h1>" + email + "</h1>");
            out.println("<h1>Please try with a different email!</h1>");
        }

    } catch (NoResultException e) {
        request.setAttribute("name", name);
        request.setAttribute("email", email);
        request.setAttribute("password", password);
        RequestDispatcher rd = request.getRequestDispatcher("CreateAccount.jsp");
        rd.forward(request, response);
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<h1>Error checking account</h1>");
    } finally {
        if (em != null) {
            em.close();
            emf.close();
        }
    }
%>

<h1>Check Account page</h1>

</body>
</html>
