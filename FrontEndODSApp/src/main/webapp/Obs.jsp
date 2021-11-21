<%@page import="model.Projects"%>
<%@page import="controller.JSONManager"%>
<%@page import="model.ODS"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyectos ODS</title>


    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    
</head>
<body>

	<%String res = request.getParameter("odsId");
	ODS ods =null;
	if (res != null) {
		int odsId = Integer.parseInt(res);
		ods = JSONManager.askODS(odsId);
	}%>
	<!-- Navbar Structure -->
    <nav class="purple">
        <div class="container">
        <div class="nav-wrapper">
          <a href="index.html" class="brand-logo">Proyectos ODS</a>
          <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
          <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a class="activate"href="list_project.html">Proyectos</a></li>
            <li><a href="badges.html">ODS</a></li>
            <li>  
              <a class='dropdown-trigger' href='#' data-target='dropdown1'>Acerca De
                <i class="material-icons right">arrow_drop_down</i>
              </a>
              <ul id='dropdown1' class='dropdown-content'>
                <li><a href="#!">Nosotros</a></li>
                <li class="divider" tabindex="-1"></li>
                <li><a href="#!">Políticas</a></li>
              </ul>
            </li>
            <li><a href="collapsible.html"
              class="btn waves-effect waves-light">Login
            </a></li>
          </ul>
        </div>

      
        <ul class="sidenav" id="mobile-demo">
          <li><a href="list_project.html">Proyectos</a></li>
            <li><a href="badges.html">ODS</a></li>
            <li>  
              <a class='dropdown-trigger' href='#' data-target='dropdown1'>Acerca De
                <i class="material-icons right">arrow_drop_down</i>
              </a>
              <ul id='dropdown1' class='dropdown-content'>
                <li><a href="#!">Nosotros</a></li>
                <li class="divider" tabindex="-1"></li>
                <li><a href="#!">Políticas</a></li>
              </ul>
            </li>
            <li><a href="collapsible.html"
              class="btn waves-effect waves-light">Login
            </a></li>
        </ul>
        </div>
    </nav>  
   

    <!-- Content Structure -->
 
   <div class="section">
       <div class="container">
        <h2 class="header">Objetivo de Desarrollo Sostenible <%=ods.getOds_id()%></h2>
            <div class="row">
                <div class="col s12 m12">
					<div class="card horizontal small">
						<div class="card-image">
							<img style="height: 100%;" class="resposive"
								src="<%=ods.getLogoPath()%>">
						</div>
						<div class="card-stacked">
							<div class="card-content" style="align-items: center;">
								<p><%=ods.getDescripcion()%></p>
							</div>
						</div>
					</div>
	
				</div>
                <div class="col s12 m12">
                    
                </div>
            </div>
        </div>
   </div>
   
     <div class="section">
       <div class="container">
        <h2 class="header" style="align-items: center">Proyectos implementados</h2>
            <div class="row">
            <%ArrayList<Projects> projectList = JSONManager.listProjectsByODS(ods.getOds_id()); 
            for (Projects project : projectList) { %>
            	 <div class="col s12 m4">
                    <div class="card">
                        <div class="card-image">
                        <img src="resources/img/projets_<%=project.getProject_id()%>.png">
                        <span class="card-title"><strong><%=project.getName()%></strong></span>
                        </div>
                        <div class="card-content">
                        <p><%=project.getDescription()%></p>
                        </div>
                    </div>
                </div>
                <%}%>
             </div>
       </div>
   </div>
    
    
    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>   
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            M.AutoInit();
        });
    </script>
</body>
</html>