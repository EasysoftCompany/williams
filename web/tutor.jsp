<%-- 
    Document   : tutor
    Created on : 2/12/2015, 01:36:38 PM
    Author     : Alumno
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="onbuild.Acceso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%HttpSession sesion = request.getSession();
    String nom = sesion.getAttribute("usuario") + "";
    String nick = sesion.getAttribute("nick") + "";
    String priv = sesion.getAttribute("privilegio") + "";

    if (priv.equals("3")) {
        response.sendRedirect("paciente.jsp");

    } else if (priv.equals("4")) {

    } else if (priv.equals("2")) {
        response.sendRedirect("terapeuta.jsp");
    } else if (priv.equals("1")) {

    } else {
        response.sendRedirect("index.jsp");
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página del tutor</title>

        <!-- IMPORTAR LIBRERIAS MATERIALIZE -->
        <meta charset="UTF-8">
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" type="text/javascript"></script>

        <script type="text/javascript" src="js/materialize.min.js"></script>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>

        <!-- IMPORTAR LIBRERIAS MATERIALIZE -->

    </head>
    <body>
        <nav>
            <div class="nav-wrapper" style="background-color: #002B7A">
                <img src="css/logoUnam.png" alt="LogoUNAM" class="left"/>
                <a href="#" class="brand-logo center">Tutor</a>
                <img src="css/logoUnam.png" alt="LogoUNAM" class="right"/>
            </div>
        </nav>

        <main>
            <div id="container">
                <h1 class="flow-text">Tutor: <% out.println(sesion.getAttribute("usuario")); %></h1>
                <form action="CerrarSesion" method="post">

                    <button class="btn waves-effect waves-light blue-grey darken-2" style="background-color: #002B7A" type="button" onclick="window.location.href = 'SolicitarCita.jsp'" >Solicitar Cita
                        <i class="material-icons right">send</i>
                    </button>

                    <button class="btn waves-effect waves-light blue-grey darken-2" style="background-color: #002B7A" type="submit" name="action">Cerrar Sesion
                        <i class="material-icons right">power_settings_new</i>
                    </button>
                </form>

            </div>

            <%

                /*
                 System.out.println(nick);
                 Acceso paciente = new Acceso();
                 ResultSet rs;
                 String rela = "";
                 PreparedStatement ps = paciente.iniCon().prepareStatement("select * from tutor where Nick=?");
                 ps.setString(1, nick);
                 rs = ps.executeQuery();
                 while (rs.next()) {
                 rela = rs.getString("Relacion");
                 }
                 paciente.iniCon().close();
                 System.out.println(rela);
                 ps = paciente.iniCon().prepareStatement("select * from usuario natural join paciente where Nick=?");
                 ps.setString(1, rela);
                 rs = ps.executeQuery();
                 while (rs.next()) {

                 */
            %>

            <!--
            
            <table>
    
                <tr>
                    <td>
            <%//out.println("Nombre: " + rs.getString("Nombre"));  %>
        </td>
    </tr>
    <tr>
        <td>
            <%//out.println("Apellido Paterno: " + rs.getString("App")); %>
        </td>
    </tr>
    <tr>
        <td>
            <%// out.println("Apellido Materno: " + rs.getString("Apm")); %>
        </td>
    </tr>
    <tr>
        <td>
            <%// out.println("Apellido Materno: " + rs.getString("Nick")); %>
        </td>
    </tr>
    <tr>
        <td>
            <%// out.println("Edad: " + rs.getInt("Edad"));  %>
        </td>
    </tr>
    <tr>
        <td>
            Sexo
        </td>
    </tr>
    <tr>
        <td>
            Nacimiento
        </td>
    </tr>
    <tr>
        <td>
            escolaridad
        </td>
    </tr>
    <tr>
        <td>
            Lateralidad
        </td>
    </tr>

</table>
            -->
        </main>
        <footer class="page-footer" style="background-color: #BB8800">
            <div class="footer-copyright">
                <div class="container">
                    © 2016 Williams Proyect
                </div>
            </div>
        </footer>

    </body>
</html>
