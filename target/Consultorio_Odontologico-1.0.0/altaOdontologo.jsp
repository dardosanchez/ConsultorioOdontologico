
<%@page import="java.util.Collections"%>
<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page import="Enums.Especialidad"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%@ include file="components/header.jsp" %>
<%@ include file="components/bodyPrimeraparte.jsp" %>



<div class="container">
    
    <h1 >Nuevo Odontólogo </h1>
    <p >Aqui podras dar de alta un odontólogo al sistema </p>
    
    <form class="user" action="SvOdontologos" method="POST">
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="nombre" name="nombre" placeholder="Nombre">
            </div>
            <div class="col-sm-6">
                <input type="text" class="form-control form-control-user" id="apellido" name="apellido" placeholder="Apellido">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="number" class="form-control form-control-user" id="dni" name="dni" placeholder="Dni">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="number" class="form-control form-control-user" id="telefono" name="telefono" placeholder="Teléfono">
            </div>
        </div>  
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="text" class="form-control form-control-user" id="direccion" name="direccion" placeholder="Dirección">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <input type="date" class="form-control form-control-user" id="fechaNacimiento" name="fechaNac" placeholder="Fecha de Nacimiento">
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <select name="especialidad" id="especialidad" name="especialidad" class="form-select form-control"  style="
                        border-radius: 10rem;
                        font-size: .8rem;
                        width: 100%;
                        height: 4em;
                        padding: 1rem!important;
                        color: #6e707e;
                        border: 1px solid #d1d3e2;
                        transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
                        ">
                    <option selected disabled value="Null">Especialidad</option>
                    <% for (Especialidad esp : Especialidad.values()) {%>
                    <option value=<%= esp.name()%>><%= esp.name()%></option>
                    <% } %>
                </select>
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <%
                    List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                    // Ordenar la lista de usuarios por nombre de usuario en orden alfabético
                    Collections.sort(listaUsuarios, (u1, u2) -> u1.getNombreUsuario().compareTo(u2.getNombreUsuario()));
                %>
                <select name="usuario" id="usuario" class="form-select form-control"  style="
                        border-radius: 10rem;
                        font-size: .8rem;
                        width: 100%;
                        height: 4em;
                        padding: 1rem!important;
                        color: #6e707e;
                        border: 1px solid #d1d3e2;
                        transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
                        ">
                    <option selected disabled value="Null">Usuarios</option>
                    <% for (Usuario usu : listaUsuarios) {%>
                    <option value=<%= usu.getNombreUsuario()%>><%= usu.getNombreUsuario()%></option>
                    <% }%>
                </select>
            </div>
        </div>

        <div class="form-group row">
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="horarioInicio">Horario de Entrada</label>
                <input type="time" name="horarioInicio" class="form-control form-control-user" id="horarioInicio" placeholder="Horario">
            </div>
            <div class="col-sm-6 mb-3 mb-sm-0">
                <label for="horarioFin">Horario de Salida</label>
                <input type="time" name="horarioFin" class="form-control form-control-user" id="horarioFin" placeholder="Horario">
            </div>        
        </div>

        

        <button class="btn btn-primary btn-user btn-block" type="submit">
            Guardar Odontólogo 
        </button>
        <hr>

    </form>

</div>
<%@ include file="components/bodyFinal.jsp" %>

    

