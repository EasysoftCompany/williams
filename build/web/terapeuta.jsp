<%-- 
    Document   : terapeuta
    Created on : 9/12/2015, 06:08:54 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%HttpSession sesion = request.getSession();
    String nom = sesion.getAttribute("usuario") + "";
    String priv = sesion.getAttribute("privilegio") + "";

    if (priv.equals("3")) {
        response.sendRedirect("paciente.jsp");

    } else if (priv.equals("4")) {
        response.sendRedirect("tutor.jsp");

    } else if (priv.equals("2")) {

    } else if (priv.equals("1")) {
        response.sendRedirect("admin.jsp");
    } else {
        response.sendRedirect("loginp.jsp");
    }

%>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Terapeuta</title>
        <link href="css/principal.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background-color: #666">
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
                                <input type="button" value="Registrar Paciente y Tutor" onclick="window.location.href='registrarPT.jsp'" id="boton"/>
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
    </center>
    <h1> Bienvenido Terapeuta:
        <% 
            out.println(sesion.getAttribute("usuario"));
           
        %>
    </h1>
    


</body>
</html>
