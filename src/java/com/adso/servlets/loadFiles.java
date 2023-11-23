/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.adso.servlets;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
/**
 *
 * @author Luis Pava
 */
@WebServlet(name = "loadFiles", urlPatterns = {"/loadFiles"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10, // 10 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)

public class loadFiles extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        //Definición del path o ruta de almacenamiento de las imágenes
        String path_project ="D:\\PROYECTOS\\first_ADSO\\web\\imagenes\\";

        //Gestión del archivo recibido por POST
        Part filePart = request.getPart("file");
        String fileName = filePart.getSubmittedFileName();
        
        //Gestión de fechas para asignación al nombre del archivo
        //DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");          //20231016234530
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyyMMddHHmmssSSS");  // 20231016234703073
        LocalDateTime now = LocalDateTime.now();
        String ahora = dtf.format(now);
        
        //Obtener la extensión del archivo a cargar otra forma de hacer
        String[] split = fileName.split("\\.");
        String ext = split[split.length - 1];

        //Asignar nuevo nombre al archivo
        String fileName_w = ahora + "." + ext;
        
        //Almacenar el archivo en la ruta establcida
        for (Part part : request.getParts()) {
            part.write(path_project + fileName);
            Path source = Paths.get(path_project + fileName);
            //Files.move(source, source.resolveSibling(ahora + "." + ext));         
            Files.move(source, source.resolveSibling(fileName_w));     

        }
        
        //D:\PROYECTOS\first_ADSO\web\imagenes /Variable de sesión
        request.setAttribute("img", fileName_w);
        request.getRequestDispatcher("observer.jsp").forward(request, response);
        
        
    }

}
