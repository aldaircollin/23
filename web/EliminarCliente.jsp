<%-- 
    Document   : RegistrarCliente
    Created on : 07/09/2022, 06:45:30 PM
    Author     : ILP
--%>
<%
 String dni=request.getParameter("dni");
%>

<jsp:useBean id="co" scope="page" class="controlador.Control" />
<% 
int c=co.eliminarCliente(dni);

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
   
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">EMPRESA</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.html">Inicio <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="RegistrarProducto.jsp">Productos</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="RegistrarCliente.jsp">Clientes</a>
                    </li>
     
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
                </form>
            </div>
        </nav>
        <br>
         <div class="container">
            <div class="col-lg-6">
                <h1>Eliminar Cliente</h1>
                <form action="EliminarCliente.jsp">
                    DNI : <br>
                    <input class="form-control" type="text" name="dni"><br>
                    <button class="btn btn-danger" type="submit">Eliminar</button>
                    <a href="index.html">Regresar</a>
                </form>
            </div>
             
             <div>
                 <%if (c == 1) {%>
                 <h1>SE EDITO CORRECTAMENTE</h1>
                 <% } else {%>
                 <h1></h1>
                 <% }%>
             </div>
     
        
    </body>
</html>
