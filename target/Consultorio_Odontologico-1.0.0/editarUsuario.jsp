<%@page import="Enums.Rol"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file="components/header.jsp" %>
<%@ include file="components/bodyPrimeraparte.jsp" %>

<div class="container">
    <br>    
    <br>
    <h1>Edicion de Usuario </h1>
    <p>Este es el aparatado para modificar un usuario del sistema. </p>

    <% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");%>

    <form class="user" action="SvEditUsuarios" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="nombreUsu" name="nombreUsu" placeholder="Usuario" value="<%= usu.getNombreUsuario()%>">
            </div>

        </div>
        <div class="form-group row">
            <div class="col-sm-6">
                <input type="password" class="form-control form-control-user" id="contrasenia" name="contrasenia" placeholder="Contraseña" value="<%= usu.getContrasenia()%>">
            </div>
        </div>
        <!-- ESTO 
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                        <input type="text   " class="form-control form-control-user" id="rol" name="rol" placeholder="Rol" value="<%= usu.getRol()%>">
                    </div>
        
                </div>  
        -->

        <!-- Nueva Parte del Codigo -->
        <div class="form-group row">
            <div class="col-sm-6">
                <select name="rol" id="roles" class="  form-select form-control"  style="
                    border-radius: 10rem;
                    font-size: .8rem;
                    width: 100%;
                    height: 4em;
                    padding: 1rem!important;
                    color: #6e707e;
                    border: 1px solid #d1d3e2;
                    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
                        " >
                    
                    <% for (Rol roles : Rol.values()) {
                        if((usu.getRol()).equals(roles.name()) ){
                    %>
                    <option selected value=<%= roles.name()%>><%= roles.name()%></option>
                    <% } else { %>
                    <option value=<%= roles.name()%>><%= roles.name()%></option>
                        <%} }%>
                </select>
            </div>
        </div>


        <br>

        <button class="btn btn-primary btn-user  col-sm-6 mb-5 " type="submit"> 
            Guardar Modificación 
        </button>
        
        <hr class="mb-5">

    </form>
</div>

<%@ include file="components/bodyFinal.jsp" %>
