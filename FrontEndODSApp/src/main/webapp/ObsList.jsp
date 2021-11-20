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

    <!--- ODS -->
    
        <div class="carousel">
            <a class="carousel-item" href="#one!"><img src="http://www.un.org/sustainabledevelopment/es/wp-content/uploads/sites/3/2016/01/S_SDG_Icons-01-01.jpg"></a>
            <a class="carousel-item" href="#two!"><img src="https://lorempixel.com/250/250/nature/2"></a>
            <a class="carousel-item" href="#three!"><img src="https://lorempixel.com/250/250/nature/3"></a>
            <a class="carousel-item" href="#four!"><img src="https://lorempixel.com/250/250/nature/4"></a>
            <a class="carousel-item" href="#five!"><img src="https://lorempixel.com/250/250/nature/5"></a>
        </div>
   

    <!-- Content Structure -->
 
   <div class="section">
       <div class="container">
        <h2 class="header">Objetivos de Desarrollo Sostenible</h2>
            <div class="row">
                <div class="col s12 m12">
                
                <%String path = "01-1024x1024";
                boolean estate = false;
                  for(int i= 2; i<18; i++){ 
                	if(i > 9){ 
						path = ""+i;}%>
					<div class="card horizontal small">
					<%if(!estate){ %>
						<div class="card-image">
							<img style="height: 100%;" class="resposive"
								src="https://www.un.org/sustainabledevelopment/es/wp-content/uploads/sites/3/2018/07/S_SDG-goals_icons-individual-rgb-<%=path%>.png">
						</div>
						<div class="card-stacked">
							<div class="card-content">
								<p>I am a very simple card. I am good at containing small
									bits of information.</p>
							</div>
						</div>
					<%estate = true;}else{%>
						<div class="card-stacked">
							<div class="card-content">
								<p>I am a very simple card. I am good at containing small
									bits of information.</p>
							</div>
						</div>
						<div class="card-image">
							<img style="height: 100%;" class="resposive"
								src="https://www.un.org/sustainabledevelopment/es/wp-content/uploads/sites/3/2018/07/S_SDG-goals_icons-individual-rgb-<%=path%>.png">
						</div>
						
					<%estate= false;}%>
					</div>
				<%path = "0"+i;}%>
	
				</div>
                <div class="col s12 m12">
                    
                </div>
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