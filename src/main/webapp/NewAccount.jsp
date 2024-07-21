<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%@include file ="All_css_and_js.jsp"%>

    <title>Form page : Home page</title>

</head>
<body>
    <div class = "container" >

        <%@ include file = "Navbar.jsp" %><br><br>

        <p style = "font-size : 22px ; font-weight : bold;">Please provide the information to create a bank account</p><br>

        <div class = "createAccountForm" >

            <form  class = "CA-form-content" action = "checkAccount.jsp" method = "post">
                    <div class="form-group">
                          <label for="exampleInputName1">Owner Name</label>
                          <input type="text" class="form-control" id="exampleInputName1" placeholder="Enter Name" name = "name">
                    </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" name = "email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" maxlength="50" required>
                    <small id="emailHelp" class="form-text ">We'll never share your email with anyone else.</small>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" name = "password" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
                  </div>
                  <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" required>
                    <label class="form-check-label" for="exampleCheck1">I accept all the terms and conditions</label>
                  </div>
                  <button type="submit" class="btn btn-primary">Submit</button>
            </form>

        </div>

    </div>
</body>
</html>
