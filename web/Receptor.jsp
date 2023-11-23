<%-- 
    Document   : Receptor
    Created on : 9/09/2023, 7:41:52 a. m.
    Author     : Luis Pava
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body
        <%String edad=request.getParameter("txtEdad");%>
                
        
        <h1>Hello World!</h1>
        <p><strong> Nombres es: <%=request.getParameter("txtName")%></strong></p>
        <p>La edad es: ${param.edad}</p>
        <p><strong> Sexo es: <%=request.getParameter("selSexo")%></strong></p>
        
    </body>
</html>
