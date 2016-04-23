<%-- 
    Document   : index
    Created on : 17-dic-2015, 19:11:34
    Author     : Wolf
    Modified   : Easysoft Company
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession sesion = request.getSession();
    String nom = sesion.getAttribute("usuario") + "";
    String priv = sesion.getAttribute("privilegio") + "";

    if (priv.equals("3")) {
        response.sendRedirect("paciente.jsp");

    } else if (priv.equals("4")) {
        response.sendRedirect("tutor.jsp");

    } else if (priv.equals("2")) {
        response.sendRedirect("terapeuta.jsp");
    } else if (priv.equals("1")) {
        response.sendRedirect("admin.jsp");
    } else {

    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Williams</title>


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
                <a href="#" class="brand-logo center">Williams</a>
                <img src="css/logoUnam.png" alt="LogoUNAM" class="right"/>
            </div>
        </nav>

        <main>


            <div class="container">
                <form action="IniciarSesion" method="post">
                    <center>
                        <table>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span class="red-text text-darken-2 center">Necesitas iniciar sesion para acceder al sistema</span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="input-field">
                                        <input type="text" id="nick" name="nick" class="validate"/>
                                        <label for="nick" data-error="Error!" data-success="Ok!">Usuario</label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="input-field">
                                        <input type="password" name="pass" id="passs" class="validate"/>
                                        <label for="passs" data-error="Error!" data-success="Ok!">Contraseña</label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <button class="btn waves-effect waves-light blue-grey darken-2" style="background-color: #002B7A" type="submit" name="action">Iniciar Sesion
                                        <i class="material-icons right">send</i>
                                    </button>

                                </td>
                            </tr>

                        </table>
                    </center>
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
