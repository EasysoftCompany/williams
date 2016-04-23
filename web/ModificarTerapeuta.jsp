<%-- 
    Document   : ModificarTerapeuta
    Created on : 21-dic-2015, 16:18:29
    Author     : Wolf
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="onbuild.Acceso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%HttpSession sesion=request.getSession();
String nom= sesion.getAttribute("usuario")+"";
String priv= sesion.getAttribute("privilegio")+"";
                  
                   if(priv.equals("3")){
                       response.sendRedirect("paciente.jsp");
                   
                   }else if(priv.equals("4")){
                       response.sendRedirect("tutor.jsp");
                   
                   }else if(priv.equals("2")){
                       
                   }else if(priv.equals("1")){
                       response.sendRedirect("admin.jsp");
                   }else{
                       response.sendRedirect("loginp.jsp");
                   } %>


<html>
    <head>
        <title>ModificarTerapeuta</title>
        <meta charset="UTF-8">
        <link href="css/principal.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <center>
        <header id="fondo_superior">
            <center><img src="css/logo.png" id="logo"/></center>
            
        </header>
        
        <div id="menu">
                <center>
                    <table>
                        <tr>
                            <td>
                                <form action="CerrarSesion" method="post">
                                <input type="button" value="Consultar paciente" onclick="window.location.href='ConsultarPaciente.jsp'" id="boton">    
                                <input type="button" value="Agenda" onclick="window.location.href = 'Agenda.jsp'" id="boton"/>
                                <input type="button" value="Registrar Paciente y Tutor" onclick="window.location.href = 'registrarPT.jsp'" id="boton"/>
                                <input type="button" value="Modificar Terapeuta" onclick="window.location.href = 'ModificarTerapeuta.jsp'" id="boton"/>
                                <input type="button" value="solicitudes de citas" onclick="window.location.href = 'ResponderCitas.jsp'" id="boton"/>
                                <input type="button" value="Eliminar Paciente y Tutor" onclick="window.location.href = 'eliminarPT.jsp'" id="boton"/>
                                <input type="button" value="Crear Diagnostico" onclick="window.location.href = 'Diagnosticar.jsp'" id="boton"/>
                                <input type="button" value="Expediente" onclick="window.location.href = 'Expediente.jsp'" id="boton"/>
                                <input type="submit" value="Cerrar Sesion" id="boton">
                                </form>
                            </td>
                        </tr>
                    </table>


                </center>
            </div>
        
        <%--Declaramos todas las variables para terapeuta--%>
        <%
        String nombre;
        String paterno;
        String materno;
        String cedula=request.getParameter("cedula");
        String nick;
        String clave;
        String lunes;
        String martes;
        String miercoles;
        String jueves;
        String viernes;
        String sabado;
        String Domingo;
        int privilegios;
        
        %>
            
            
        <%--Consultamos la información del terapeuta por cedula--%>
        <%
            Acceso conex = new Acceso();
            String terapeuta[] = conex.consultarTerapeutaPorCedula(cedula);
        %>
        <div><center>
                <h2>
                    <%=terapeuta[0]%>
                    <%=terapeuta[1]%>
                    <%=terapeuta[2]%>
                </h2>
                <h3>
                   Cédula: <%=terapeuta[3]%>
                   <br>Nickname: <%=terapeuta[4]%>
                   <br>Contraseña: <%=terapeuta[5]%>
                   
                </h3>  
                   <form action="ModificarHorario" method="get">   
                    <table>
                    </tr>
                    <tr>
                        <td>
                            LUNES
                        </td>
                        <td>
                            MARTES
                        </td>
                        <td>
                            MIERCOLES
                        </td>
                        <td>
                            JUEVES
                        </td>
                        <td>
                            VIERNES
                        </td>
                        <td>
                            SABADO
                        </td>    
                    <tr>
                        <td>
                            <input type="text" name="lunes" placeholder="00:00 - 00:00" size="10" value="<%=terapeuta[6]%>"/> 
                        </td>
                        <td>
                            <input type="text" name="martes" placeholder="00:00 - 00:00" size="10" value="<%=terapeuta[7]%>"/> 
                        </td>
                        <td>
                            <input type="text" name="miercoles" placeholder="00:00 - 00:00" size="10" value="<%=terapeuta[8]%>"/>  
                        </td>
                        <td>
                            <input type="text" name="jueves" placeholder="00:00 - 00:00" size="10" value="<%=terapeuta[9]%>"/>  
                        </td>
                        <td>
                            <input type="text" name="viernes" placeholder="00:00 - 00:00" size="10" value="<%=terapeuta[10]%> "/> 
                        </td>
                        <td>
                            <input type="text" name="sabado" placeholder="00:00 - 00:00" size="10" value="<%=terapeuta[11]%>"/>  
                        </td>     
                    </tr>
                </table>
                        <br>
                        <br>
                        <input type="hidden" name="cedula"value="<%=cedula%>">
                        <input type="submit"  value="Actualizar Horario"/>
        </form>
        
        </center>
    </body>
</html>
