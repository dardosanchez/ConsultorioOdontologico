<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ include file="components/header.jsp" %>
<%@ include file="components/bodyPrimeraparte.jsp" %>




<!-- Begin Page Content -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-2">
                         <div class="d-block">
                             <h1 class="h3 mb-2 text-gray-800">Listado de Usuarios</h1> <!-- ACA DECIA CLINICA ODONTOLOGICA     -->
                             <p class="mb-4">A continuacion podra visualizar la lista completa de usuarios</p>
                         </div>
                         <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                            class="fas fa-download fa-sm text-white-50"></i> Generar Informe</a>
                     </div>
                
                    

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Usuarios</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered " id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr class="text-center">
                                            <th>Id</th>
                                            <th>Usuario</th>
                                            <th>Rol</th>
                                            <th>Modificar</th>
                                            <th>Eliminar</th>
                                        </tr>
                                    </thead>
                                    <% 
                                        List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                                    %>
                                    <tbody>
                                        <% for(Usuario usu: listaUsuarios){ %>
                                        <tr class="text-center" >
                                            <td style="vertical-align:middle;"><%= usu.getId_Usuario() %></td>
                                            <td style="vertical-align:middle;"><%= usu.getNombreUsuario()%> </td>
                                            <td style="vertical-align:middle;"><%= usu.getRol()%></td>
                                            
                                            <td style="width: 200px;" class=" justify-content-center align-items-center pt-4" >
                                                <form name="editar" action="SvEditUsuarios" method="GET">
                                                    <button type="submit" class="btn btn-primary btn-user btn-block" style=""> 
                                                        <i class="fas fa-pencil-alt"></i> Editar
                                                    </button>
                                                    <input type="hidden" name="id" value="<%=usu.getId_Usuario()%>" >
                                                </form>
                                            </td>
                                            <td style=" width: 200px;" class="justify-content-center align-items-center pt-4">
                                                <form name="eliminar" action="SvElimUsuarios" method="POST">
                                                    <button id="btnEliminar" type="submit" class="btn btn-danger btn-user btn-block"> 
                                                        <i class="fas fa-trash-alt"></i> Eliminar
                                                    </button>   
                                                    <input type="hidden" name="id" value="<%=usu.getId_Usuario()%>" >
                                                </form>
                                            </td>
                                            
                                        </tr>
                                        
                                    
                                        
                                        <% } %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

</div>
<!-- End of Main Content --> 



<%@ include file="components/bodyFinal.jsp" %>