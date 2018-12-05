
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

        <jsp:useBean id="ub" class="mbs.myBean" scope="session" />
        <h3><jsp:getProperty name="ub" property="status" /></h3>
        
        <jsp:useBean id="pd" class="mbs.prBean" scope="session" />
        <h3><jsp:getProperty name="pd" property="inventory" /></h3>
