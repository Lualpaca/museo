<%-- 
    Document   : index
    Created on : 9/09/2023, 7:40:57 a. m.
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
        <form action="Receptor.jsp"  method="get">
            <h1><strong>Emisor: </strong></h1>
            <label><strong>Nombre:</strong></label>
            <input type="text" name="txtName"/><br/>
            
            <label><strong>Edad</strong></label>
            <input type="text" name="txtEdad" value="${edad}"/><br/>
            
            <label><strong>Sexo:</strong></label>
            <select name="selSexo">
                <option value="m">Masculino</option>
                <option value="f">Femenino</option>
            </select><br/>
            <input type="submit" name="btnConfirm" value="Aceptar"/>

        </form>

    </body>
</html>
