
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
        <jsp:useBean id="ub" class="mbs.prBean" scope="session" />
         <link href="css/bootstrap.min.css" rel="stylesheet">

            <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
            <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

            <!-- Custom styles for this template -->
            <link href="css/signin.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h2 class="form-signin-heading">Welcome
        <jsp:getProperty name="ub" property="name" />
        </h2>
        <p class="form-signin-heading">Your login status is
        <jsp:getProperty name="ub" property="inventory" />
        </p>
        <p class="form-signin-heading">
            <jsp:getProperty name="ub" property="price" />
        </p>
        <p class="form-signin-heading">
            <jsp:getProperty name="ub" property="type" />
        </p>

         <%
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/Bean.jsp");
            rd.include(request,response);
        %>
        </div>
        
    </body>
</html>
