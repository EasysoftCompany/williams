<%-- 
    Document   : paciente
    Created on : 2/12/2015, 01:36:13 PM
    Author     : Alumno
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="onbuild.Acceso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%HttpSession sesion = request.getSession();
    String nom = sesion.getAttribute("usuario") + "";
    String nick = sesion.getAttribute("nick") + "";
    String priv = sesion.getAttribute("privilegio") + "";

    if (priv.equals("3")) {

    } else if (priv.equals("4")) {
        response.sendRedirect("tutor.jsp");
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
        <title>Menu Pacientes</title>

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
                <a href="#" class="brand-logo center">Paciente</a>
                <img src="css/logoUnam.png" alt="LogoUNAM" class="right"/>
            </div>
        </nav>
        <main>

            <div class="container">


                <h1 class="flow-text">Bienvenido(a) paciente: <% out.println(sesion.getAttribute("usuario"));%></h1>
                <form action="CerrarSesion" method="post">

                    <button class="btn waves-effect waves-light blue-grey darken-2" style="background-color: #002B7A" type="submit" name="action">Cerrar Sesion
                        <i class="material-icons right">power_settings_new</i>
                    </button>
                </form>
            </div>


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
