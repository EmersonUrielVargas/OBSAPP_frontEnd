<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Iniciar Sesión</title>

    <!--Import Google Icon Font-->
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />

    <!-- Compiled and minified CSS -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css"
    />
    <!--CSS-->
    <link rel="stylesheet" href="resources/css/style.css" class="text/css" />
  </head>
  <body class="body">
   
    <div class="container">
        <div class="row">
          <div class="col s12 m12 l8 offset-l2 card-login z-depth-5">
              <div class="row">
                  <div class="col s12 m12 l6 image">
                      <img class="responsive-img" src="resources/images/login.jpeg">
                  </div>
				<form name="logIn_user" method="post" action="./ServletApp">
                  <div class="col s12 m12 l6">
                    <div class="content">
                        <span class="spam-title"><h4>Iniciar Sesión</h4></span>
                        <div class="row">
                          <div class="input-field col s12">
                            <i class="material-icons prefix">email</i>
                            <input id="icon_prefix" name="loginU_email"type="text" class="validate" />
                            <label for="icon_prefix">Correo Electrónico</label>
                          </div>
                          <div class="input-field col s12">
                            <i class="material-icons prefix">key</i>
                            <input id="icon_telephone" name="loginU_password" type="tel" class="validate" />
                            <label for="icon_telephone">Contraseña</label>
                          </div>
                          <div class="login-div-send">
                            <button
                              class="btn purple waves-effect waves-light"
                              type="submit"
                              name="logIn_user">
                              Enviar
                              <i class="material-icons right">send</i>
                            </button>
                          </div>
                          <div class="login-div-send">
                            <a href="CreateUser.jsp">Registrarse</a> <br />
                            <a>Recuperar contraseña</a>
                          </div>
                        </div>
                      </div>
                  </div>
				</form>
              </div>
          </div>
        </div>
    </div>

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
      document.addEventListener("DOMContentLoaded", function () {
        M.AutoInit();
      });
    </script>
  </body>
</html>
