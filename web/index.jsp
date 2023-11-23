<%-- 
    Document   : index
    Created on : 16/10/2023, 10:54:07 p. m.
    Author     : Luis Pava
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page in JSP</title>
    </head>
    <body>
        <h1>Cargar archivos con Servlets</h1>
        <form method="post" action="loadFiles" enctype="multipart/form-data">
            <input type="file" name="file" />
            <input type="submit" value="Cargar" />
        </form>
    </body>
</html>



       
