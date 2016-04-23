<%-- 
    Document   : registrarPT
    Created on : 13-dic-2015, 18:14:30
    Author     : Wolf
--%>

<%@page import="onbuild.Acceso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
    
  <%-- 
  Otenemos la cedula del terapeuta para poder hacer la relación
  --%>
  <%
      Acceso conex= new Acceso();
      String terapeuta[]=conex.consultarDatosTerapeuta(nom);
      String nombre=terapeuta[0];
      String paterno=terapeuta[1];
      String materno=terapeuta[2];
      String cedula=terapeuta[3];
  %>
                   
    <head>
        <title>Terapeuta</title>
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
                                <input type="button" value="Modificar Terapeuta" onclick="window.location.href = 'ModificarTerapeuta.jsp?cedula=<%=cedula%>'" id="boton"/>
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
    
    <h1> <%--Datos del terapeuta--%>
        <% 
            out.println(nombre+" "+paterno+" "+materno+" ; Cédula:"+cedula);
        %>
    </h1>
    
    <p>Registro del paciente</p>
        <form action="RegistrarP" name="" method="post">
            <input type="text" name="nom" placeholder="Nombre"/><br>
            <input type="text" name="app" placeholder="Apellido Paterno"/><br>
            <input type="text" name="apm" placeholder="Apellido Materno"/><br>
            <input type="text" name="curp_paciente" placeholder="CURP"/><br>
            Fecha de naciemiento:<input type="date" name="fecn" min="1980-01-01" max="2011-12-31" /><br>
            <input type="text" name="esc" placeholder="Escolaridad"/><br>
            <br>Sexo: Masculino:<input type="radio" value="Masculino" name="sex"/> &nbsp;
             Femenino:<input type="radio" value="Femenino" name="sex"/><br>
            <input type="number" name="edad" placeholder="edad"/>
            <br>Lateralidad:<br> Zurdo<input type="radio" value="Zurdo" name="lat"/>
             Diestro<input type="radio" value="Diestro" name="lat"/>
             Ambidiestro<input type="radio" value="Ambidiestro" name="lat"/><br>
            <input type="text" name="nick" placeholder="Nickname"/><br>
            <input type="password" name="cla" placeholder="Clave"/><br>
            <input type="hidden" name="priv_paciente" value="3"/>
            <hr/>
            Tutor:<br>
            <input type="text" name="nomt" placeholder="Nombre tutor"/><br>
            <input type="text" name="appt" placeholder="Apellido paterno tutor"/><br>
            <input type="text" name="apmt" placeholder="Apellido materno tutor"/><br>
            <input type="text" name="curp_tutor" placeholder="CURP"/><br>
            <input type="text" name="calle" placeholder="calle"/><br>
            <input type="text" name="ne" placeholder="numero exterior"/><br>
            <input type="text" name="ni" placeholder="numero interior"/><br>
            <input type="text" name="col" placeholder="colonia"/><br>
            <input type="text" name="del" placeholder="delegacion"/><br>
            <input type="text" name="cp" placeholder="codigo postal"/><br>
            <input type="text" name="cd" placeholder="ciudad"/><br>
            <input type="tel" name="tel" placeholder="telefono"/><br>
            <input type="text" name="nickt" placeholder="Nickname"/><br>
            <input type="password" name="clat" placeholder="Clave Tutor"/><br>
            <input type="hidden" name="priv_tutor" value="4"/>
            <input type="hidden" name="cedula" value="<%=cedula%>">
            <input type="submit" value="Registrar" id="boton"/>
            
        </form>
        
    </body>
</html>
