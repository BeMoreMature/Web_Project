
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Failure</title>
        <link href="includes/default.css" rel="stylesheet" type="text/css" media="screen" />
        <jsp:useBean id="ub" class="mbs.myBean" scope="session" />
        <link href="css/bootstrap.min.css" rel="stylesheet">

            <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
            <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

            <!-- Custom styles for this template -->
            <link href="css/signin.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h2 class="form-signin-heading"><jsp:getProperty name="ub" property="status" /></h2>
        
        <form method = "post" class="form-signin" action="Servlet1" id="loginfrm">
            <h2 class="form-signin-heading">Login</h2>
            <input type="hidden" name="log" />
            <table border="1">
                <tbody>
                    <tr>
                        <td><label class="sr-only">Username</label></td>
                        <td><input class="form-control" type="text" name="name" id="username" /></td>
                    </tr>
                    <tr>
                        <td><label class="sr-only">Password</label></td>
                        <td><input class="form-control" type="password" name="password" id="password" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input class="btn btn-lg btn-primary btn-block" type="submit" name="Login" value="Login" id="submit" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
 <%
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/Bean.jsp");
            rd.include(request, response);
 %>
        </div>
        
    </body>
</html>
