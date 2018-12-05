
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login Page</title>
            <link href="css/bootstrap.min.css" rel="stylesheet">

            <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
            <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

            <!-- Custom styles for this template -->
            <link href="css/signin.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            
        <form class="form-signin" method = "post" action="SignUpServlet" id="loginfrm" >
            <h2 class="form-signin-heading" >Login</h2>
            <input type="hidden" name="log" />
            <table border="1">
                <tbody>
                    <tr>
                        <td><label class="sr-only">Username</label></td>
                        <td><input type="text" class="form-control" name="name" id="username" required/></td>
                    </tr>
                    <tr>
                        <td><label class="sr-only">Password</label></td>
                        <td><input type="password" class="form-control" name="password" id="password" required/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input class="btn btn-lg btn-primary btn-block" type="submit" name="Login" value="Login" id="submit" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <BR/><BR/>
        <a href ="listUserAndPwd">Click here for list of Messages</a>
        </div>
            
    </body>
</html>
