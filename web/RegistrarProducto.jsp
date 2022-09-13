<%
 String cod=request.getParameter("cod");
 String nom=request.getParameter("nom");
 String marca=request.getParameter("marca");
%>
<jsp:useBean id="co" scope="page" class="controlador.Control" />
<% 
int h=co.regProd(cod, nom, marca);

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>

            <form action="RegistrarProducto.jsp">
                <label for="">codigo</label>
                <input type="text" name="cod">
                <label for="">nombre</label>
                <input type="text" name="nom">
                <label for="">marca</label>
                <input type="text" name="marca">
                <button type="submit">Registrar</button>
            </form>

        </div>

        
        
        <%if(h==1){%>
        <h1>SE REGISTRO CORRECTAMENTE</h1>
        <h1
       <% }else{%>
      
       <% } %>
        


    </body>
</html>

