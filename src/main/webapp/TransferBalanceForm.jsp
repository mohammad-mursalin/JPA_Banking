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

        <p style = "font-size : 22px ; font-weight : bold;">Please provide the information to transfer money</p><br>

        <div class = "createAccountForm" >

            <form  class = "CA-form-content" action = "TransferBalance.jsp" method = "post">
                    <div class="form-group">
                        <label for="accountNumber">Sender Account Number</label>
                        <input type="text" class="form-control" id="accountNumber" name="senderAccountNumber" placeholder="Enter Account Number" pattern="\d*" maxlength="20" required>
                    </div>
                  div class="form-group">
                      <label for="exampleInputAmount1">Amount</label>
                      <input type="number" name = "amount" class="form-control" id="exampleInputAmount1" placeholder="Enter amount" required>
                  </div>
                  <div class="form-group">
                      <label for="accountNumber">Receiver Account Number</label>
                      <input type="text" class="form-control" id="accountNumber" name="receiverAccountNumber" placeholder="Enter Account Number" pattern="\d*" maxlength="20" required>
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
