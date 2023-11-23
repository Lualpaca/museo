<%-- 
    Document   : observer
    Created on : 16/10/2023, 11:51:15 p. m.
    Author     : Luis Pava
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Visor de la Imágenes cargadas</h1>
        <img src="D:/PROYECTOS/first_ADSO/web/imagenes/<%=request.getAttribute("img")%>" width="500" height="200"/>

    
    
    </body>
    
</html>
