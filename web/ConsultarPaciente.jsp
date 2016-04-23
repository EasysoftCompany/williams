<%-- 
    Document   : ConsultarPaciente
    Created on : 3/03/2016, 06:22:48 PM
    Author     : sergio
--%>

<%@page import="onbuild.Acceso"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%HttpSession sesion = request.getSession();
    String nom = sesion.getAttribute("usuario") + "";
    String priv = sesion.getAttribute("privilegio") + "";
    String clave = sesion.getAttribute("pass") + "";

    if (priv.equals("3")) {
        response.sendRedirect("paciente.jsp");

    } else if (priv.equals("4")) {
        response.sendRedirect("tutor.jsp");

    } else if (priv.equals("1")) {
        response.sendRedirect("admin.jsp");
    } else if (priv.equals("2")) {

    } else {
        response.sendRedirect("loginp.jsp");
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Agenda</title>
        <link href="css/principal.css" rel="stylesheet" type="text/css"/>
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
                                <input type="button" value="Modificar Tutor" onclick="window.location.href = 'ModificarTut.jsp'" id="boton"/>
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
        <br>
        <br>
        
        
        
        
        
        
        
        
        Terapeuta: <% out.println(sesion.getAttribute("usuario"));%>
        <br>
        <br>
        <table>
            <tr id="tabla">
                <td>
                    Nombre
                </td>
                <td>
                    A.Paterno
                </td>
                <td>
                    A. Materno
                </td>
                <td>
                    Curp
                </td>
                <td>
                    F.Nacimiento
                </td>
                <td>
                    Escolaridad
                </td>
                <td>
                    Sexo
                </td>
                <td>
                    Edad
                </td>
                <td>
                    Lateralidad
                </td>
                <td>
                    Nick
                </td>
                <td>
                    Clave 
                </td>
                <td>
                    Privilegios
                </td>
            </tr>
        <%
        PreparedStatement ps;
        ResultSet rs;
        Acceso ac=new Acceso();
        
        ps=ac.iniCon().prepareStatement("SELECT * FROM paciente");
        rs=ps.executeQuery();
        while(rs.next()){
        %>
        <tr id="tabla">
                <td>
                    <% out.print(rs.getString("Nombre")); %>
                </td>
                <td>
                    <% out.print(rs.getString("App")); %>
                </td>
                <td>
                    <% out.print(rs.getString("Apm")); %>
                </td>
                <td>
                 <a href="Expediente.jsp?curpPaciente=<%=rs.getString("Curp_paciente")%>"</a><%out.print(rs.getString("Curp_paciente")); %>  
                                                                          
                </td>
                <td>
                    <% out.print(rs.getString("Fnac")); %>
                </td>
                <td>
                    <% out.print(rs.getString("Escolaridad")); %>
                </td>
                <td>
                    <% out.print(rs.getString("Sexo")); %>
                </td>
                <td>
                    <% out.print(rs.getString("Edad")); %>
                </td>
                <td>
                    <% out.print(rs.getString("Lateralidad")); %>
                </td>
                <td>
                    <% out.print(rs.getString("Nick")); %>
                </td>
                <td>
                    <% out.print(rs.getString("Clave")); %>
                </td>
                <td>
                    <% out.print(rs.getString("Id_priv")); %>
                </td
            </tr>
        <% } %>
        </table>
        
        
        
     
        <body>
</html>
