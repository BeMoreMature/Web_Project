
<%@page import="com.alibaba.fastjson.JSON"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
        <jsp:useBean id="pd" class="mbs.prBean" scope="session" />
         <link href="css/bootstrap.min.css" rel="stylesheet">

            <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
            <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

            <!-- Custom styles for this template -->
            <link href="css/signin.css" rel="stylesheet">
    </head>
    <body>
        <div class="container" id="content">
            <h2>Sign up successful</h2>
            <h2>you will be redirected to sign up page in 3 sec...</h2>
        </div>
        
        
    </body>
    <script type="text/javascript">

    function Redirect()
    {
      window.location="signup.html";
    }

//    document.write("Sign up successful, you will be redirected to main page in 5 sec.");
    setTimeout('Redirect()', 3000);
    </script>
</html>
