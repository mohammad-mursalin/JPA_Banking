%@ page import="com.mursalin.Accounts" %>
<%@ page import="javax.persistence.EntityManager" %>
<%@ page import=" javax.persistence.Persistence" %>
<%@ page import="javax.persistence.EntityManagerFactory" %>
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

        Accounts account = null;

        try {
            emf = Persistence.createEntityManagerFactory("MursalinPersistenceUnit");
            em = emf.createEntityManager();

            account = (Accounts) em.find(Accounts.class, email);

            if (account != null && email.equals(account.getEmail())) {

                    out.println("<h1>Already have an account with this email !</h1>");
                    out.println("<h1>"+email+"</h1>");
                    out.println("<h1>Please try with a different email !</h1>");

            } else {
                request.setAttribute("name", name);
                request.setAttribute("email", email);
                request.setAttribute("passwond", password);
                RequestDispatcher rd = request.getRequestDispatcher("CreateAccount.jsp");
                rd.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
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
