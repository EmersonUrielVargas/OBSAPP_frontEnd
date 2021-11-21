<%@page import="model.Projects"%>
<%@page import="controller.JSONManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Proyectos ODS</title>

    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />
    <link rel="stylesheet" href="css/style.css" class="text/css" />
</head>

<body class="body">

	<%
	String res = request.getParameter("proyect_Id");
	Projects project = null;
	if (res != null) {
		int prod_Id = Integer.parseInt(res);
		project = JSONManager.askProject(prod_Id);
	}
	%>
	<!-- Navbar Structure -->
    <nav class="purple lighten-2">
        <div class="container">
            <div class="nav-wrapper">
                <a href="list_ods" class="brand-logo">Proyectos ODS</a>
                <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="list_project.html">Proyectos</a></li>
                    <li><a href="list_ods.html">ODS</a></li>
                    <li>
                        <a class="dropdown-trigger" href="#" data-target="dropdown1">Acerca De
                            <i class="material-icons right">arrow_drop_down</i>
                        </a>
                        <ul id="dropdown1" class="dropdown-content">
                            <li><a href="#!">Nosotros</a></li>
                            <li class="divider" tabindex="-1"></li>
                            <li><a href="#!">Políticas</a></li>
                        </ul>
                    </li>
                    <li>
                        <a class="purple waves-effect waves-light btn modal-trigger" href="#login1">Iniciar Sesión</a>
                    </li>
                </ul>
            </div>
                        <ul class="sidenav" id="mobile-demo">
                <li><a href="list_project.html">Proyectos</a></li>
                <li><a href="list_ods.html">ODS</a></li>
                <li>
                    <a class="dropdown-trigger" href="#" data-target="dropdown1">Acerca De
                        <i class="material-icons right">arrow_drop_down</i>
                    </a>
                    <ul id="dropdown1" class="dropdown-content">
                        <li><a href="#!">Nosotros</a></li>
                        <li class="divider" tabindex="-1"></li>
                        <li><a href="#!">Políticas</a></li>
                    </ul>
                </li>
                <li>
                    <a class="purple waves-effect waves-light btn modal-trigger" href="#login1">Iniciar Sesión</a>
                </li>
            </ul>
        </div>
    </nav>
    <!-- End Navbar Structure -->

    <!-- End Login Structure -->






    <!-- Content Structure -->
    <div class="section">
        <div class="container">
            <div class="project-div z-depth-5"><br><br>
                <div class="row">
                    <div class="col s12 m10 offset-m1">
                        <div class="col s12 m6 l6">
                            <div class="col s12 m12 l10 offset-l1">
                                <span class="spam-title">
                                    <h5><%=project.getName()%> </h5>
                                </span><br />
                                <div class="text-user">
                                    <div class="row valign-wrapper">
                                        <div class="col s3">
                                            <img src="resources/img/projets_<%=project.getDeveloper_id().getId()%>.png" alt=""
                                                class="circle responsive-img" />
                                        </div>
                                        <div class="col s12 ">
                                            <p class="text-user"><%=project.getDeveloper_id().getName()%></p>
                                            <p>Email: <%=project.getDeveloper_id().getEmail()%></p>
                                            <p>Telefono: <%=project.getDeveloper_id().getName()%></p>
                                            <p>Perfil: <%=project.getDeveloper_id().getDescription()%></p>
                                            </span>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m6 l6">
                            <img class="responsive-img z-depth-3"
                                src="resources/img/projets_<%=project.getProject_id()%>.png"
                                alt="" /><br /><br />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col s12 m10 offset-m1">

                        <span class="black-text"><%=project.getDescription()%></span>
                    </div>

                </div>
                <br>
            </div>
        </div>
    </div>


    <!-- Content Structure -->

    <div class="section">
        <div class="container">
            <div class="project-div z-depth-5"><br><br>
                <div class="row">
                    <div class="col s12 m10 offset-m1">
                        <span class="spam-title">
                            <h4>
                                Comentarios
                            </h4>
                        </span><br />
                    </div>
                </div>
                <div class="row">
                <iframe style="width: 100%; height: auto;" src="comments.html" frameborder="0"></iframe>
                </div><br><br>
            </div>
        </div>
    </div><br><br>


    

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            M.AutoInit();
        });
    </script>
</body>

</html>