<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Regístrate</title>

    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />
    <!--CSS-->
    <link rel="stylesheet" href="resources/css/style.css" class="text/css" />
</head>

<body class="body">

    <div class="container">
        <div class="row">
            <div class="col s12 m12 l8 offset-l2 card-login z-depth-5">
                <div class="row">
                    <div class="col s12 m12 l8 offset-l2">
                        <div class="content">

                            <form name="create_user" method="post" action="./ServletApp" enctype="multipart/form-data">
                                <span class="spam-title">
                                    <h4>Crear Cuenta</h4>
                                </span><br>
                                    
                                <div class="row">
                                    <div class="container">
                                        <div class="file-field input-field top-100px">
                                            <div class="btn purple lighten-3">
                                              <span >Foto de perfil <i class="material-icons right">file_upload</i></span>
                                              <input type="file" name="createU_photo">
                                            </div>
                                            <div class="file-path-wrapper">
                                              <input class="file-path validate" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">person</i>
                                        <input name="u_create_name" id="first_name" type="text" class="validate">
                                        <label for="first_name">Nombre de Usuario</label>
                                    </div>
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">email</i>
                                        <input name="u_create_email" id="icon_prefix" type="text" class="validate" />
                                        <label for="icon_prefix">Correo electrónico</label>
                                    </div>
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">key</i>
                                        <input name="u_create_password1" id="password" type="password"
                                            class="validate" />
                                        <label for="password">Contraseña</label>
                                    </div>
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">key</i>
                                        <input name="u_create_password2" id="password" type="password" class="validate">
                                        <label for="password">Repita la contraseña</label>
                                    </div>
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">phone</i>
                                        <input name="u_create_phone" id="icon_prefix" type="text" class="validate" />
                                        <label for="icon_prefix">numero de Telefono</label>
                                    </div>
                                    
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">mode_edit</i>
                                        <textarea id="textarea2" name="u_create_descrpi" class="materialize-textarea"
                                            data-length="120"></textarea>
                                        <label for="textarea2">Descripción del perfil</label>
                                    </div>
                                    
                                    <div class="login-div-send">
                                        <button class="btn purple waves-effect waves-light" type="submit" name="createUser">
                                            Enviar
                                            <i class="material-icons right">send</i>
                                        </button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
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