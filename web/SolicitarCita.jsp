<%-- 
    Document   : SolicitarCita
    Created on : 22-dic-2015, 23:28:48
    Author     : Wolf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%HttpSession sesion = request.getSession();
    String nom = sesion.getAttribute("usuario") + "";
    String priv = sesion.getAttribute("privilegio") + "";

    if (priv.equals("3")) {
        response.sendRedirect("paciente.jsp");

    } else if (priv.equals("4")) {

    } else if (priv.equals("2")) {
        response.sendRedirect("terapeuta.jsp");
    } else if (priv.equals("1")) {
        response.sendRedirect("admin.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitar Cita</title>

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
            <div class="container">

                <form action="CerrarSesion" method="post">
                    <button class="btn waves-effect waves-light blue-grey darken-2" style="background-color: #002B7A" type="button" onclick="window.location.href = 'SolicitarCita.jsp'" >Reiniciar
                        <i class="material-icons right">replay</i>
                    </button>

                    <button class="btn waves-effect waves-light blue-grey darken-2" style="background-color: #002B7A" type="submit" name="action">Cerrar Sesion
                        <i class="material-icons right">power_settings_new</i>
                    </button>
                </form>



                <h1>Solicitar cita</h1>
                <form method="post" action="SolicitarCitas">
                    <div class="input-field">
                        <input type="text" id="np" name="np" class="validate"/>
                        <label for="np" data-error="Error!" data-success="Ok!">Nick del paciente</label>
                    </div>
                    
                    <div class="input-field">
                        <input type="text" id="nt" name="nt" class="validate"/>
                        <label for="nt" data-error="Error!" data-success="Ok!">Nick del terapeuta</label>
                    </div>
                   
                    <div class="input-field">
                        <input type="date" id="fecha" name="fecha" min="1980-01-01" max="2020-01-01" class="validate"/>
                        <label for="fecha" data-error="Error!" data-success="Ok!"></label>
                    </div>
                    
                    <div class="input-field">
                        <input type="text" id="hora" name="hora" class="validate"/>
                        <label for="hora" data-error="Error!" data-success="Ok!">Hora</label>
                    </div>
                    
                    
                    <button class="btn waves-effect waves-light blue-grey darken-2" style="background-color: #002B7A" type="submit" name="action">Solicitar Cita
                        <i class="material-icons right">send</i>
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
